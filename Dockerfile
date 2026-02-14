FROM v2fly/v2fly-core:latest

# نسخ ملف الإعدادات إلى داخل الصورة
COPY config.json /etc/v2ray/config.json

# إخبار Cloud Run أننا نستخدم البورت 8080
EXPOSE 8080

# تشغيل v2ray عند بدء الحاوية
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
