<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sửa chữa Laptop & Máy Tính | Tin Học Quốc Đồng</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <!-- AOS Animation CSS -->
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <!-- Re-use the specific styles defined previously for service pages -->
        <style>
            .page-header {
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

            .service-detail-section {
                padding: 60px 0;
                border-bottom: 1px solid var(--border-color);
            }

            .service-layout {
                display: grid;
                grid-template-columns: 1fr;
                gap: 40px;
            }

            @media (min-width: 900px) {
                .service-layout {
                    grid-template-columns: 1fr 1.5fr;
                    align-items: center;
                }
            }

            .service-img-wrap img {
                width: 100%;
                border-radius: 12px;
                box-shadow: var(--shadow-md);
                object-fit: cover;
            }

            .service-content-wrap h3 {
                font-size: 1.8rem;
                color: var(--text-dark);
                margin-bottom: 15px;
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .service-content-wrap h3 i {
                color: var(--primary-color);
            }

            .service-desc {
                color: var(--text-muted);
                font-size: 1.05rem;
                margin-bottom: 25px;
                line-height: 1.7;
            }

            .service-features-list {
                list-style: none;
                margin-bottom: 30px;
            }

            .service-features-list li {
                position: relative;
                padding-left: 30px;
                margin-bottom: 15px;
                color: var(--text-dark);
            }

            .service-features-list li::before {
                content: '\f058';
                font-family: 'Font Awesome 6 Free';
                font-weight: 900;
                position: absolute;
                left: 0;
                top: 2px;
                color: var(--primary-color);
                font-size: 1.1rem;
            }

            .service-actions {
                display: flex;
                gap: 15px;
                flex-wrap: wrap;
            }
        </style>
    </head>

    <body>

        <!-- Header -->
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
                        <li><a href="services?type=repair" class="active">Services</a></li>
                        <li><a href="index.html#products">Products</a></li>
                        <li><a href="index.html#contact">Contact</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                    <a href="tel:0949754678" class="btn btn-primary btn-call"><i class="fas fa-phone-alt"></i> 0949 754
                        678</a>
                </div>
            </div>
        </header>

        <section class="page-header" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="breadcrumb">
                    <a href="index.html">Trang chủ</a> &gt; <a href="services">Dịch vụ công nghệ</a>
                </div>
                <h1 class="hero-title"
                    style="font-size: 2.2rem; margin-bottom: 10px; text-align: left; color: var(--text-dark);"
                    data-aos="fade-up">Giải Pháp
                    Công Nghệ<br>Toàn Diện Tại Cà Mau</h1>
                <p class="hero-desc" style="max-width: 800px; margin-bottom: 0; text-align: left; font-size: 1rem;"
                    data-aos="fade-up" data-aos-delay="100">
                    Chúng tôi cung cấp dịch vụ sửa chữa chuyên nghiệp, lắp đặt hệ thống an ninh và giải pháp năng lượng
                    sạch cho gia đình và doanh nghiệp.<br>
                    Trung tâm bảo hành & sửa chữa Tin Học Quốc Đồng
                </p>
            </div>
        </section>

        <!-- Specific Content for Repair -->
        <section class="service-detail-section" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="service-layout" style="grid-template-columns: 1fr 2fr; gap: 50px; align-items: start;">
                    <!-- Left: 2 Vertical Images -->
                    <div class="service-img-vertical-combo" style="display: flex; flex-direction: column; gap: 20px;"
                        data-aos="fade-right">
                        <img src="https://images.unsplash.com/photo-1593640495253-23196b27a87f?auto=format&fit=crop&w=600&q=80"
                            alt="Kỹ thuật viên"
                            style="width: 100%; border-radius: 8px; object-fit: cover; aspect-ratio: 3/4;">
                        <img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=600&q=80"
                            alt="Laptop" style="width: 100%; border-radius: 8px; object-fit: cover; aspect-ratio: 4/3;">
                    </div>

                    <!-- Right: Detailed Content List -->
                    <div class="service-content-wrap" data-aos="fade-left">
                        <!-- Item 1: Repair -->
                        <div class="service-item-block" style="margin-bottom: 40px;">
                            <h3 style="font-size: 1.5rem; margin-bottom: 10px;"><i class="fas fa-tools"
                                    style="color: var(--text-dark); margin-right: 8px;"></i> Sửa Chữa & Nâng cấp</h3>
                            <h4 style="font-size: 1.2rem; color: var(--text-dark); margin-bottom: 10px;">Sửa Chữa Laptop
                                & Máy Tính Để Bàn</h4>
                            <p class="service-desc" style="font-size: 0.95rem;">Khắc phục nhanh chóng mọi sự cố phần
                                cứng và phần mềm. Chúng tôi cam kết sử dụng linh kiện chính hãng và bảo hành dài hạn cho
                                mọi khách hàng.</p>

                            <ul class="service-features-list"
                                style="margin-bottom: 20px; font-size: 0.95rem; list-style: none; padding-left: 0;">
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span>Cài đặt Windows, MacOS, phần mềm đồ họa, văn phòng.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span>Vệ sinh máy, thay keo tản nhiệt MX-4/Diamond cao cấp.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span>Nâng cấp RAM, SSD giúp máy chạy nhanh gấp 10 lần.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span>Thay màn hình, bàn phím, pin Laptop lấy liền trong 30p.</span>
                                </li>
                            </ul>

                            <div class="service-actions">
                                <a href="tel:0949754678" class="btn btn-outline"
                                    style="border-color: var(--border-color); color: var(--text-dark); border-radius: 4px; padding: 6px 15px; font-size: 0.9rem;">Nhận
                                    Báo Giá</a>
                                <a href="#contact" class="btn btn-outline"
                                    style="border-color: var(--border-color); color: var(--text-dark); border-radius: 4px; padding: 6px 15px; font-size: 0.9rem;">Xem
                                    Chi Tiết</a>
                            </div>
                        </div>

                        <!-- Add a spacer to push content naturally if needed or keep it clean -->
                        <div style="height: 20px;"></div>

                        <!-- The rest of the page would follow the same pattern if it were a single page. 
                             Since this is service-repair.jsp, we only focus on the repair specific content. -->
                    </div>
                </div>
            </div>
        </section>

        <!-- Bottom CTA -->
        <section class="cta-section" style="padding: 60px 0;">
            <div class="container">
                <div class="cta-banner" data-aos="zoom-in"
                    style="display: flex; flex-direction: column; align-items: flex-start; text-align: left; background: #fff; border: 1px solid var(--border-color); color: var(--text-dark);">
                    <div class="cta-content" style="margin-bottom: 20px;">
                        <h2 style="color: var(--text-dark);">Bạn đang gặp sự cố công nghệ?</h2>
                        <p style="color: var(--text-muted); max-width: 100%;">Liên hệ ngay với đội ngũ kỹ thuật của Tin
                            Học Quốc Đồng để được hỗ trợ tận nơi.</p>
                    </div>
                    <div class="cta-action" style="flex-direction: row;">
                        <a href="tel:0949754678" class="btn btn-primary"><i class="fas fa-phone-alt"></i> Gọi Ngay:
                            0949.754.678</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer">
            <div class="footer-bottom">
                <div class="container">
                    <p>&copy; 2026 Tin Học Quốc Đồng. All rights reserved.</p>
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
        <script src="${pageContext.request.contextPath}/script.js"></script>
    </body>

    </html>