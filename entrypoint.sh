echo "Waiting for mysql..."

while ! nc -z samsam-db 3306; do
    sleep 0.1
done

echo "mysql started"

python main.py run -h 0.0.0.0