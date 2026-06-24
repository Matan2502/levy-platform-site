# אתר levy-platform.com

אתר סטטי (קובץ אחד: `index.html`) המתארח על GitHub Pages, על הדומיין **levy-platform.com**.

---

## ✏️ איך עורכים ורואים שינויים מיד

1. **פותחים ב-VS Code** — דאבל-קליק על `edit.command`
   (או בטרמינל: `code ~/Projects/levy-platform-site`).
2. **תצוגה חיה** — לוחצים **"Go Live"** בשורת הסטטוס למטה-ימין.
   נפתח דפדפן על `http://localhost:5500` עם האתר.
3. **עורכים** את `index.html` ושומרים (⌘S) → **הדפדפן מתרענן לבד, מיד.**

> זו תצוגה מקומית בלבד (רק אתה רואה אותה) — מושלמת לניסויים מהירים.

## 🚀 איך מפרסמים לאתר החי

כשמרוצים מהשינוי — דאבל-קליק על `publish.command`
(או בטרמינל: `cd ~/Projects/levy-platform-site && ./deploy.sh "מה שינית"`).

האתר החי **levy-platform.com** יתעדכן תוך **כ-1 דקה** (GitHub Pages בונה מחדש).
זה לא מיידי — תמיד יש ~דקה של build באחסון סטטי.

---

## כתובות
- 🌐 https://levy-platform.com  (וגם https://www.levy-platform.com)
- 🌐 גיבוי: https://matan2502.github.io/levy-platform-site/
- 📦 קוד: https://github.com/Matan2502/levy-platform-site

## מה אפשר לערוך לבד
- ✅ **טקסט / כותרות / קופי** — חפש את המילים ב-`index.html` ושנה.
- ✅ **צבעים** — בראש `index.html`, בתוך `:root` (למשל `--accent` הוא הירוק-טורקיז).
- ✅ **קישורים** (וואטסאפ / טלפון / אימייל) — חפש `wa.me` / `tel:` / `mailto:`.

## מה דורש את Claude
- 🖼️ **החלפת תמונות** — התמונות מוטמעות כקוד base64 ארוך; החלפה דורשת עיבוד מחדש. בקש מ-Claude.

## מבנה
- `index.html` — האתר כולו (טקסט, עיצוב ותמונות בקובץ אחד).
- `deploy.sh` — פרסום לאתר החי.
- `edit.command` / `publish.command` — קיצורי דאבל-קליק (מקומיים).
- `CNAME` — מחבר את הדומיין ל-GitHub Pages (לא לגעת).
