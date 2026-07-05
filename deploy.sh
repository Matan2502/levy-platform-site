#!/bin/bash
# ===================================================================
#  פריסת האתר levy-platform.com — לחיצה אחת
#  שימוש:   ./deploy.sh "תיאור השינוי"
#  או פשוט: ./deploy.sh        (יכניס תיאור אוטומטי עם תאריך)
#  דגל:     ./deploy.sh --force ["תיאור"]  — מפרסם גם אם יש קבצים לא-מוכרים
# ===================================================================
cd "$(dirname "$0")" || exit 1

FORCE=0
MSG=""
for arg in "$@"; do
  case "$arg" in
    --force) FORCE=1 ;;
    *) MSG="$arg" ;;
  esac
done
MSG="${MSG:-עדכון אתר $(date '+%Y-%m-%d %H:%M')}"

echo "📦 בודק שינויים..."
if [ -z "$(git status --porcelain)" ]; then
  echo "ℹ️  אין שינויים לפרסם. (ערוך את index.html קודם)"
  exit 0
fi

# קבצים לא-מוכרים (untracked) יעלו לאתר החי עם git add -A — עוצרים כאן.
UNTRACKED="$(git ls-files --others --exclude-standard)"
if [ -n "$UNTRACKED" ] && [ "$FORCE" -ne 1 ]; then
  echo "❌ נמצאו קבצים לא-מוכרים (untracked) — הם היו מתפרסמים לאתר החי:"
  echo "$UNTRACKED" | sed 's/^/   • /'
  echo ""
  echo "   אפשרויות: הוסף אותם ל-.gitignore, מחק אותם,"
  echo "   או הרץ שוב עם --force כדי לפרסם אותם בכוונה:"
  echo "   ./deploy.sh --force \"תיאור השינוי\""
  exit 1
fi

git add -A
git commit -m "$MSG" -m "" -m "Co-Authored-By: Claude <noreply@anthropic.com>"
echo "🚀 מעלה ל-GitHub..."
git push

echo ""
echo "✅ פורסם! האתר יתעדכן תוך כ-1 דקה בכתובות:"
echo "   🌐 https://levy-platform.com   (אחרי שה-DNS יוגדר)"
echo "   🌐 https://matan2502.github.io/levy-platform-site/"
