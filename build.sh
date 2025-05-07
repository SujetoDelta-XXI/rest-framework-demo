set -o errexit

poetry install -t requirements.txt

python manage.py collectstatic --noinput
python manage.py migrate