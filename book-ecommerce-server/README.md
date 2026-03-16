# Book Ecommerce Server

This backend is now aligned to a cleaner and easier-to-maintain database structure:

- Keep each table focused (no mixed concerns in one table).
- Avoid runtime `ALTER TABLE` in repository code.
- Use explicit SQL schema files under [`database`](./database).

## Clean Database Structure

Main schema file:
- [`database/schema_clean.sql`](./database/schema_clean.sql)

Core tables:
1. `authors`
2. `categories`
3. `books`
4. `customers`
5. `password_reset_tokens`

### Why this is cleaner

- `customers` only stores customer profile/auth data.
- Password reset OTP/token is moved to `password_reset_tokens`.
- `books` has consistent ordering fields:
  - `created_at` for New Arrivals
  - `sales_count` for Best Sellers

## Apply Schema

Run the schema on PostgreSQL:

```sql
\i database/schema_clean.sql
```

If you already have old columns in `customers`, run optional cleanup:

```sql
\i database/migration_cleanup.sql
```

## OTP / Forgot Password Flow

Only forgot/reset password uses OTP now.

Required `.env` values:

```env
RESET_TOKEN_EXPIRY_MINUTES=15

MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your_email@gmail.com
MAIL_PASSWORD=your_app_password
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS=your_email@gmail.com
MAIL_FROM_NAME=Bookly
```

Flow:
1. `POST /customers/forgot-password` with `{ "email": "user@email.com" }`
2. Server stores OTP in `password_reset_tokens`
3. OTP email is sent with PHPMailer
4. `POST /customers/reset-password` with `{ "token": "1234", "new_password": "..." }`

## Removed Legacy Endpoints

These register-OTP endpoints were removed to simplify authentication:

- `POST /customers/verify-register-otp`
- `POST /customers/resend-register-otp`
