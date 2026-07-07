# אתר levy-platform.com

אתר סטטי המתארח על GitHub Pages, על הדומיין **levy-platform.com**. הקוד מחולק לפי סוג: `index.html` (תוכן), `css/styles.css` (עיצוב) ו-`js/main.js` (התנהגות).

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
- ✅ **צבעים** — בקובץ `css/styles.css`, בתוך `:root` בראש הקובץ (למשל `--accent` הוא הירוק-טורקיז).
- ✅ **קישורים** (וואטסאפ / טלפון / אימייל) — חפש `wa.me` / `tel:` / `mailto:` ב-`index.html`.

## מה דורש את Claude
- 🖼️ **אייקונים / גרפיקה** — כל האייקונים הם `<svg>` מוטמע בתוך `index.html`; שינוי או החלפה — בקש מ-Claude.

## מבנה
- `index.html` — תוכן האתר (ה-HTML בלבד).
- `css/styles.css` — כל העיצוב (כולל משתני הצבע ב-`:root`).
- `js/main.js` — כל ה-JS (אנימציות גלילה ומונה ה-impact).
- `learn-api/index.html` — דף תרגול API עצמאי (קובץ בפני עצמו).
- `deploy.sh` — פרסום לאתר החי.
- `edit.command` / `publish.command` — קיצורי דאבל-קליק (מקומיים).
- `CNAME` — מחבר את הדומיין ל-GitHub Pages (לא לגעת).
