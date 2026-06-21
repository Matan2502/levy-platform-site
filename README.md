# אתר levy-platform.com

## איך לעדכן את האתר (קל!)

1. **לערוך** את הקובץ `index.html` (או לבקש מ-Claude לערוך)
2. **לפרסם** בלחיצה אחת — בטרמינל:
   ```bash
   cd ~/Projects/levy-platform-site
   ./deploy.sh "מה שינית"
   ```
3. האתר מתעדכן לבד תוך ~1 דקה.

## כתובות
- 🌐 האתר: https://levy-platform.com
- 🌐 גיבוי (GitHub): https://matan2502.github.io/levy-platform-site/
- 📦 קוד: https://github.com/Matan2502/levy-platform-site

## תצוגה מקדימה לפני פרסום
```bash
open ~/Projects/levy-platform-site/index.html
```

## מבנה
- `index.html` — האתר כולו (קובץ אחד, כולל תמונות מוטמעות)
- `deploy.sh` — פרסום בלחיצה אחת
- `CNAME` — מחבר את הדומיין ל-GitHub Pages
