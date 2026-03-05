<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Liên Hệ | Tin Học Quốc Đồng</title>
        <meta name="description"
            content="Liên hệ với Tin Học Quốc Đồng để được tư vấn và hỗ trợ các giải pháp công nghệ.">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <!-- Google Fonts: Inter -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
            rel="stylesheet">
        <!-- Font Awesome for icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <!-- AOS Animation CSS -->
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

        <style>
            .contact-page-header {
                padding: 40px 0 20px;
            }

            .breadcrumb {
                font-size: 0.9rem;
                color: var(--text-muted);
                margin-bottom: 20px;
            }

            .breadcrumb a {
                color: var(--primary-color);
                text-decoration: none;
            }

            .breadcrumb a:hover {
                text-decoration: underline;
            }

            .contact-map-wrapper {
                margin-bottom: 40px;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: var(--shadow-md);
                position: relative;
                background: #e5e3e3;
            }

            /* Simulating the map from the image with an iframe */
            .contact-map-wrapper iframe {
                width: 100%;
                height: 400px;
                border: 0;
                display: block;
            }

            /* Map overlay tooltip like in design */
            .map-tooltip {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -100%);
                background: white;
                padding: 8px 15px;
                border-radius: 8px;
                font-weight: 600;
                font-size: 0.9rem;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                margin-top: -15px;
                white-space: nowrap;
            }

            .map-tooltip::after {
                content: '';
                position: absolute;
                bottom: -6px;
                left: 50%;
                transform: translateX(-50%);
                border-width: 6px 6px 0;
                border-style: solid;
                border-color: white transparent transparent transparent;
            }

            .map-marker-icon {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color: #1a73e8;
                /* Google maps blue */
                font-size: 2rem;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
                margin-top: 10px;
            }

            .contact-grid {
                display: grid;
                grid-template-columns: 1fr 2fr;
                gap: 30px;
                margin-bottom: 60px;
                align-items: start;
            }

            @media (max-width: 900px) {
                .contact-grid {
                    grid-template-columns: 1fr;
                }
            }

            .info-panel {
                background-color: #f2f5f8;
                padding: 30px;
                border-radius: 12px;
            }

            .info-panel h3 {
                font-size: 1.2rem;
                color: var(--text-dark);
                margin-bottom: 25px;
            }

            .info-item {
                display: flex;
                align-items: flex-start;
                gap: 15px;
                margin-bottom: 25px;
            }

            .info-icon {
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                color: var(--primary-color);
                font-size: 1.1rem;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
                flex-shrink: 0;
            }

            .info-text-col {
                display: flex;
                flex-direction: column;
                gap: 4px;
            }

            .info-label {
                font-size: 0.85rem;
                color: var(--text-muted);
                text-transform: uppercase;
                letter-spacing: 0.5px;
                font-weight: 600;
            }

            .info-value {
                font-size: 1rem;
                color: var(--text-dark);
                font-weight: 600;
                line-height: 1.4;
            }

            .btn-zalo {
                background-color: #0068ff;
                color: #fff;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
                padding: 14px;
                border-radius: 8px;
                text-decoration: none;
                font-weight: 600;
                font-size: 1rem;
                transition: 0.3s;
                border: none;
                cursor: pointer;
            }

            .btn-zalo:hover {
                background-color: #0054cc;
                color: #fff;
            }

            .zalo-hint {
                text-align: center;
                font-size: 0.8rem;
                color: var(--text-muted);
                margin-top: 10px;
                font-style: italic;
            }

            .authorized-dealer-card {
                background: #fff;
                padding: 20px;
                border-radius: 12px;
                margin-top: 20px;
                display: flex;
                align-items: center;
                gap: 15px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
            }

            .authorized-icon {
                color: #00c853;
                font-size: 1.8rem;
            }

            .authorized-text strong {
                display: block;
                color: var(--text-dark);
                font-size: 1rem;
                margin-bottom: 3px;
            }

            .authorized-text span {
                color: var(--text-muted);
                font-size: 0.85rem;
            }

            .form-panel {
                background: #fff;
                padding: 40px;
                border-radius: 12px;
                border: 1px solid var(--border-color);
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.03);
            }

            .form-panel h2 {
                font-size: 1.5rem;
                color: var(--text-dark);
                margin-bottom: 10px;
            }

            .form-panel p {
                color: var(--text-muted);
                font-size: 0.95rem;
                margin-bottom: 30px;
                line-height: 1.6;
            }

            .form-row {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;
                margin-bottom: 20px;
            }

            @media (max-width: 600px) {
                .form-row {
                    grid-template-columns: 1fr;
                }
            }

            .form-group {
                display: flex;
                flex-direction: column;
                gap: 8px;
                margin-bottom: 20px;
            }

            .form-group label {
                font-size: 0.9rem;
                font-weight: 600;
                color: var(--text-dark);
            }

            .form-control {
                padding: 12px 15px;
                border: 1px solid #e1e4e8;
                border-radius: 8px;
                font-family: inherit;
                font-size: 0.95rem;
                outline: none;
                transition: 0.3s;
                background-color: #f9fbfc;
            }

            .form-control:focus {
                border-color: var(--primary-color);
                background-color: #fff;
                box-shadow: 0 0 0 3px rgba(11, 83, 224, 0.1);
            }

            textarea.form-control {
                min-height: 120px;
                resize: vertical;
            }

            .btn-submit {
                background-color: var(--primary-color);
                color: #fff;
                padding: 12px 25px;
                border: none;
                border-radius: 8px;
                font-weight: 600;
                font-size: 1rem;
                cursor: pointer;
                transition: 0.3s;
                display: inline-block;
            }

            .btn-submit:hover {
                background-color: var(--secondary-color);
                transform: translateY(-2px);
                box-shadow: 0 4px 10px rgba(11, 83, 224, 0.2);
            }
        </style>
    </head>

    <body>

        <!-- Header / Navbar -->
        <header class="header">
            <div class="container header-container">
                <div class="logo">
                    <a href="index.html"
                        style="text-decoration: none; color: inherit; display: flex; align-items: center; gap: 10px;">
                        <div class="logo-icon"><i class="fas fa-desktop"></i></div>
                        <span class="logo-text">TIN HỌC QUỐC ĐỒNG</span>
                    </a>
                </div>
                <nav class="main-nav">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="services">Services</a></li>
                        <li><a href="index.html#products">Products</a></li>
                        <li><a href="contact.jsp" class="active">Contact</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                    <div class="search-bar" style="background: #f0f2f5;">
                        <i class="fas fa-search" style="color: #65676b;"></i>
                        <input type="text" placeholder="Tìm kiếm sản phẩm..." style="background: transparent;">
                    </div>
                    <!-- Updated button to Zalo Chat matching the design header -->
                    <a href="https://zalo.me/0949754678" target="_blank" class="btn btn-primary btn-call"
                        style="background-color: #0068ff; border-color: #0068ff;">
                        <i class="fas fa-comment-dots"></i> Zalo Chat
                    </a>
                </div>
            </div>
        </header>

        <!-- Page Header -->
        <section class="contact-page-header">
            <div class="container">
                <div class="breadcrumb">
                    <a href="index.html">Trang chủ</a> &gt; Liên hệ & Hỗ trợ
                </div>
                <h1 class="hero-title" style="font-size: 2.2rem; margin-bottom: 15px; color: var(--text-dark);"
                    data-aos="fade-up">Liên hệ
                    với chúng tôi</h1>
                <p class="hero-desc"
                    style="max-width: 800px; margin-bottom: 0; color: var(--text-muted); font-size: 1.05rem;"
                    data-aos="fade-up" data-aos-delay="100">
                    Tin Học Quốc Đồng luôn sẵn sàng hỗ trợ giải pháp công nghệ tại Cà Mau.<br>
                    Đừng ngần ngại liên hệ để được tư vấn miễn phí.
                </p>
            </div>
        </section>

        <!-- Contact Content -->
        <section class="contact-content-section">
            <div class="container">

                <!-- Map Area -->
                <div class="contact-map-wrapper" data-aos="zoom-in">
                    <div class="map-tooltip">Tin Học Quốc Đồng</div>
                    <div class="map-marker-icon"><i class="fas fa-map-marker-alt" style="display:none;"></i></div>
                    <!-- Icon is part of the embed now -->
                    <!-- Embed Google Map targeting Plus Code W2X6+GJ Cái Nước -->
                    <iframe
                        src="https://www.google.com/maps?q=W2X6%2BGJ%20C%C3%A1i%20N%C6%B0%E1%BB%9Bc,%20C%C3%A0%20Mau,%20Vi%E1%BB%87t%20Nam&output=embed"
                        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                        style="height: 450px;"></iframe>
                </div>

                <!-- Contact Grid -->
                <div class="contact-grid">

                    <!-- Left: Info Panel -->
                    <div class="contact-left-wrapper" data-aos="fade-right">
                        <div class="info-panel">
                            <h3>Thông tin nhanh</h3>

                            <div class="info-item">
                                <div class="info-icon"><i class="fas fa-phone-alt"></i></div>
                                <div class="info-text-col">
                                    <span class="info-label">HOTLINE HỖ TRỢ</span>
                                    <span class="info-value"
                                        style="color: var(--primary-color); font-size: 1.2rem;">0949 754 678</span>
                                </div>
                            </div>

                            <div class="info-item">
                                <div class="info-icon"><i class="far fa-clock"></i></div>
                                <div class="info-text-col">
                                    <span class="info-label">GIỜ MỞ CỬA</span>
                                    <span class="info-value">Thứ 2 - Chủ Nhật<br>07:30 - 20:30</span>
                                </div>
                            </div>

                            <div class="info-item" style="margin-bottom: 30px;">
                                <div class="info-icon"><i class="fas fa-map-marker-alt"></i></div>
                                <div class="info-text-col">
                                    <span class="info-label">ĐỊA CHỈ</span>
                                    <span class="info-value">QL1A, Khóm 2, TT Cái Nước,<br>Cái Nước, Cà Mau</span>
                                </div>
                            </div>

                            <a href="https://zalo.me/0949754678" target="_blank" class="btn-zalo">
                                <i class="fas fa-comment-dots"></i> Chat Zalo ngay
                            </a>
                            <div class="zalo-hint">Trung tâm hỗ trợ kỹ thuật trực tuyến 24/7</div>
                        </div>

                        <div class="authorized-dealer-card">
                            <div class="authorized-icon"><i class="fas fa-check-decagram"></i><i
                                    class="fas fa-certificate"></i></div>
                            <div class="authorized-text">
                                <strong>Đại lý ủy quyền</strong>
                                <span>Cung cấp linh kiện chính hãng</span>
                            </div>
                        </div>
                    </div>

                    <!-- Right: Form Panel -->
                    <div class="form-panel" data-aos="fade-left">
                        <h2>Gửi tin nhắn cho chúng tôi</h2>
                        <p>Nếu bạn có bất kỳ thắc mắc nào về sản phẩm hoặc dịch vụ sửa chữa, vui lòng điền vào mẫu dưới
                            đây.</p>

                        <form id="contactForm" action="https://formsubmit.co/ajax/tinhocquocdong@gmail.com"
                            method="POST">
                            <!-- Thiết lập tiêu đề email nhận được -->
                            <input type="hidden" name="_subject" value="[Tin Học Quốc Đồng] Có khách hàng liên hệ mới!">
                            <!-- Tắt Captcha mặc định của FormSubmit -->
                            <input type="hidden" name="_captcha" value="false">

                            <div class="form-row">
                                <div class="form-group" style="margin-bottom: 0;">
                                    <label for="fullname">Họ và tên</label>
                                    <input type="text" id="fullname" name="Họ_và_tên" class="form-control"
                                        placeholder="Nguyễn Văn A" required>
                                </div>
                                <div class="form-group" style="margin-bottom: 0;">
                                    <label for="phone">Số điện thoại</label>
                                    <input type="tel" id="phone" name="Số_điện_thoại" class="form-control"
                                        placeholder="09xx xxx xxx" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="email">Email (nếu có)</label>
                                <input type="email" id="email" name="Email" class="form-control"
                                    placeholder="example@gmail.com">
                            </div>

                            <div class="form-group">
                                <label for="service">Dịch vụ quan tâm</label>
                                <div style="position: relative;">
                                    <select id="service" name="Dịch_vụ_quan_tâm" class="form-control"
                                        style="width: 100%; appearance: none;">
                                        <option value="Sửa chữa Laptop/PC">Sửa chữa Laptop/PC</option>
                                        <option value="Lắp đặt Camera an ninh">Lắp đặt Camera an ninh</option>
                                        <option value="Đèn Năng lượng mặt trời">Đèn Năng lượng mặt trời</option>
                                        <option value="Các dịch vụ khác">Các dịch vụ khác</option>
                                    </select>
                                    <i class="fas fa-chevron-down"
                                        style="position: absolute; right: 15px; top: 50%; transform: translateY(-50%); color: var(--text-muted); pointer-events: none;"></i>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="message">Lời nhắn</label>
                                <textarea id="message" name="Lời_nhắn" class="form-control"
                                    placeholder="Mô tả vấn đề bạn đang gặp phải..." required></textarea>
                            </div>

                            <div id="form-message" style="margin-bottom: 20px; font-weight: 600;"></div>

                            <button type="submit" class="btn-submit" id="submitBtn">Gửi yêu cầu ngay</button>
                        </form>
                    </div>

                    <script>
                        document.getElementById('contactForm').addEventListener('submit', function (e) {
                            e.preventDefault();

                            const form = e.target;
                            const btn = document.getElementById('submitBtn');
                            const msgDiv = document.getElementById('form-message');

                            // Change button state
                            btn.innerText = 'Đang gửi...';
                            btn.disabled = true;
                            msgDiv.innerText = '';
                            msgDiv.style.color = 'inherit';

                            const formData = new FormData(form);

                            fetch(form.action, {
                                method: 'POST',
                                body: formData
                            })
                                .then(response => response.json())
                                .then(data => {
                                    if (data.success) {
                                        msgDiv.innerText = 'Gửi tin nhắn thành công! Chúng tôi sẽ liên hệ trong thời gian sớm nhất.';
                                        msgDiv.style.color = '#16a34a'; // Green
                                        form.reset();
                                    } else {
                                        msgDiv.innerText = 'Có lỗi xảy ra, vui lòng thử lại sau.';
                                        msgDiv.style.color = '#dc2626'; // Red
                                    }
                                    btn.innerText = 'Gửi yêu cầu ngay';
                                    btn.disabled = false;
                                })
                                .catch(error => {
                                    msgDiv.innerText = 'Không thể gửi tin nhắn. Vui lòng kiểm tra lại kết nối mạng.';
                                    msgDiv.style.color = '#dc2626'; // Red
                                    btn.innerText = 'Gửi yêu cầu ngay';
                                    btn.disabled = false;
                                });
                        });
                    </script>

                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="container footer-grid">
                <div class="footer-col brand-col">
                    <div class="logo-footer">
                        <i class="fas fa-desktop"></i> TIN HỌC QUỐC ĐỒNG
                    </div>
                    <p>Chuyên cung cấp các giải pháp công nghệ, thiết bị văn phòng và hệ thống an ninh hàng đầu tại Cà
                        Mau.</p>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/axelocamau" target="_blank" title="Facebook"><i
                                class="fab fa-facebook-f"></i></a>
                    </div>
                </div>

                <div class="footer-col">
                    <h3>Dịch Vụ</h3>
                    <ul>
                        <li><a href="services">Sửa chữa Laptop/PC</a></li>
                        <li><a href="services">Lắp đặt Camera an ninh</a></li>
                        <li><a href="services">Nạp mực máy in</a></li>
                        <li><a href="services">Thi công mạng nội bộ</a></li>
                    </ul>
                </div>

                <div class="footer-col contact-col">
                    <h3>Thông Tin Liên Hệ</h3>
                    <ul>
                        <li><i class="fas fa-map-marker-alt"></i> QL1A, Khóm 2, TT Cái Nước, Cái Nước, Cà Mau</li>
                        <li><i class="fas fa-phone-alt"></i> 0949 754 678</li>
                        <li><i class="fas fa-envelope"></i> tinhocquocdong@gmail.com</li>
                        <li><i class="fas fa-clock"></i> 07:30 - 20:30 (Hàng ngày)</li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <p>&copy; 2024 Tin Học Quốc Đồng. Đã đăng ký bản quyền.</p>
                </div>
            </div>
        </footer>

        <!-- AOS Animation JS -->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init({
                duration: 800,
                once: true,
                offset: 100
            });
        </script>
        <script src="script.js"></script>
    </body>

    </html>