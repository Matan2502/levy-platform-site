#!/bin/bash
# ===================================================================
#  פריסת האתר levy-platform.com — לחיצה אחת
#  שימוש:   ./deploy.sh "תיאור השינוי"
#  או פשוט: ./deploy.sh        (יכניס תיאור אוטומטי עם תאריך)
# ===================================================================
cd "$(dirname "$0")" || exit 1

MSG="${1:-עדכון אתר $(date '+%Y-%m-%d %H:%M')}"

echo "📦 בודק שינויים..."
if [ -z "$(git status --porcelain)" ]; then
  echo "ℹ️  אין שינויים לפרסם. (ערוך את index.html קודם)"
  exit 0
fi

git add -A
git commit -m "$MSG" -m "" -m "Co-Authored-By: Claude <noreply@anthropic.com>"
echo "🚀 מעלה ל-GitHub..."
git push

echo ""
echo "✅ פורסם! האתר יתעדכן תוך כ-1 דקה בכתובות:"
echo "   🌐 https://levy-platform.com   (אחרי שה-DNS יוגדר)"
echo "   🌐 https://matan2502.github.io/levy-platform-site/"
