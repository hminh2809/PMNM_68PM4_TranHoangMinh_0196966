<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/PMNM_68PM4_TranHoangMinh_0196966/public/assets/style.css" rel="stylesheet">
</head>
<body>
    <main class="page-content">
        <div class="app-shell">
            <div class="soft-card auth-card">
                <div class="text-center mb-4">
                    <span class="brand-mark mx-auto mb-3">SV</span>
                    <h1 class="h3 fw-bold mb-1">Đăng nhập</h1>
                    <p class="text-secondary mb-0">Vào hệ thống quản lý sinh viên</p>
                </div>

                <form action="/PMNM_68PM4_TranHoangMinh_0196966/public/auth/login" method="post">
                    <div class="mb-3">
                        <label class="form-label" for="username">Tên đăng nhập</label>
                        <input class="form-control" type="text" id="username" name="username" placeholder="Nhập tài khoản" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="password">Mật khẩu</label>
                        <input class="form-control" type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                    </div>

                    <div class="form-check mb-4">
                        <input class="form-check-input" type="checkbox" id="remember" name="remember">
                        <label class="form-check-label" for="remember">Ghi nhớ đăng nhập</label>
                    </div>

                    <button class="btn btn-primary w-100" type="submit">Đăng nhập</button>
                </form>
            </div>
        </div>
    </main>
</body>
</html>