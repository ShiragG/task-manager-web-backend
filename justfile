# -- Cинонимы для uv --
run:
    uv run $(filter-out $@,$(MAKECMDGOALS))

# -- Управление проектом --
# Синхронизировать окружение (установить все зависимости)
sync:
    uv sync

# Запустить сервер разработки
serve:
    uv run python manage.py runserver

# Создать миграции
makemigrations:
    uv run python manage.py makemigrations

# Применить миграции
migrate:
    uv run python manage.py migrate

# Создать суперпользователя
createsuperuser:
    uv run python manage.py createsuperuser

# -- Качество кода (Ruff) --
# Запустить линтер
lint:
    ruff check .

# Запустить линтер и автоматически исправить ошибки
fix:
    ruff check . --fix

# Отформатировать код
format:
    ruff format .
