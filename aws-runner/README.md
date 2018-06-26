Все переменные лежать в зашифрованных файлах

Используемые переменные есть в докерфайле.

    INSTANCE
    REGION
    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
    USERNAME
    URL_BASH
    SSH_PRIVATE_KEY

Так можно получить ssh ключ одной строкой в base64 кодировке:

    cat ~/.ssh/id_rsa | base64 | tr -d "\n"


В таком формате надо записать в перменную.
