<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dịch Vụ | Tin Học Quốc Đồng</title>
        <meta name="description"
            content="Chi tiết các dịch vụ tại Tin Học Quốc Đồng: Sửa chữa, Lắp đặt Camera, Đèn Năng Lượng Mặt Trời.">
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
            /* Specific styles for Services Page */
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

            .service-detail-section:last-of-type {
                border-bottom: none;
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

                .service-layout.reversed {
                    grid-template-columns: 1.5fr 1fr;
                }

                .service-layout.reversed .service-img-wrap {
                    order: 2;
                }

                .service-layout.reversed .service-content-wrap {
                    order: 1;
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
                margin-bottom: 15px;
                color: var(--text-dark);
            }

            .feature-block {
                margin-bottom: 20px;
            }

            .feature-block h4 {
                font-size: 1.1rem;
                color: var(--text-dark);
                margin-bottom: 5px;
                display: flex;
                align-items: center;
                gap: 8px;
            }

            .feature-block h4 i {
                color: var(--text-muted);
            }

            .feature-block p {
                color: var(--text-muted);
                font-size: 0.95rem;
            }

            .service-actions {
                display: flex;
                gap: 15px;
                flex-wrap: wrap;
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
                        <li><a href="services" class="active">Services</a></li>
                        <li><a href="index.html#products">Products</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>
                <div class="header-actions">
                    <div class="search-bar">
                        <i class="fas fa-search"></i>
                        <input type="text" placeholder="Search services...">
                    </div>
                    <a href="tel:0949754678" class="btn btn-primary btn-call">
                        <i class="fas fa-phone-alt"></i> 0949 754 678
                    </a>
                </div>
            </div>
        </header>

        <!-- Page Header -->
        <section class="page-header">
            <div class="container">
                <div class="breadcrumb">
                    <a href="index.html">Trang chủ</a> &gt; Dịch vụ công nghệ
                </div>
                <h1 class="hero-title" style="font-size: 3rem; margin-bottom: 15px;" data-aos="fade-up">Giải Pháp Công
                    Nghệ<br><span class="text-primary">Toàn Diện Tại Cà Mau</span></h1>
                <p class="hero-desc" style="max-width: 800px; margin-bottom: 0;" data-aos="fade-up"
                    data-aos-delay="100">
                    Chúng tôi cung cấp dịch vụ sửa chữa chuyên nghiệp, lắp đặt hệ thống an ninh và giải pháp năng lượng
                    sạch cho gia đình và doanh nghiệp.<br>
                    Trung tâm bảo hành & sửa chữa Tin Học Quốc Đồng.
                </p>
            </div>
        </section>

        <!-- Service 1: Sửa Chữa Laptop & PC -->
        <section id="laptop-pc" class="service-detail-section" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="service-layout" style="grid-template-columns: 1fr 1.5fr; gap: 50px; align-items: start;">
                    <!-- Left: 1 Image -->
                    <div class="service-img-wrap" data-aos="fade-right">
                        <img src="https://images.unsplash.com/photo-1593640495253-23196b27a87f?auto=format&fit=crop&w=600&q=80"
                            alt="Kỹ thuật viên"
                            style="width: 100%; border-radius: 8px; object-fit: cover; aspect-ratio: 1/1;">
                    </div>

                    <!-- Right: Detailed Content List -->
                    <div class="service-content-wrap" data-aos="fade-left">
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

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Service 2: Camera Quan Sát -->
        <section id="camera" class="service-detail-section" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="service-layout" style="grid-template-columns: 1fr 1.5fr; gap: 50px; align-items: start;">
                    <div class="service-img-wrap" data-aos="fade-right">
                        <img src="ezviz_camera.png" alt="Camera an ninh Ezviz"
                            style="width: 100%; border-radius: 8px; object-fit: contain; background-color: #fff; aspect-ratio: 1/1; box-shadow: var(--shadow-md);">
                    </div>

                    <div class="service-content-wrap" data-aos="fade-left">
                        <div class="service-item-block" style="margin-bottom: 40px;">
                            <h3 style="font-size: 1.5rem; margin-bottom: 10px;"><i class="fas fa-video"
                                    style="color: var(--text-dark); margin-right: 8px;"></i> Lắp Đặt Camera An Ninh</h3>
                            <h4 style="font-size: 1.2rem; color: var(--text-dark); margin-bottom: 10px;">Lắp Đặt Hệ
                                Thống Camera Quan Sát</h4>
                            <p class="service-desc" style="font-size: 0.95rem;">Giải pháp an ninh tối ưu cho ngôi nhà và
                                doanh nghiệp của bạn. Quan sát từ xa qua điện thoại mọi lúc mọi nơi với độ nét 4K/2K.
                            </p>

                            <ul class="service-features-list"
                                style="margin-bottom: 20px; font-size: 0.95rem; list-style: none; padding-left: 0;">
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Thương Hiệu:</strong> Hikvision, Dahua, Imou, Ezviz chính hãng
                                        100%.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Công Nghệ:</strong> Báo động chống trộm, đàm thoại 2 chiều, xoay 360
                                        độ.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Lưu Trữ:</strong> Thẻ nhớ hoặc ổ cứng chuyên dụng, lưu trữ từ 1-4
                                        tuần.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Bảo Hành:</strong> Bảo hành 2 năm, hỗ trợ kỹ thuật tận nơi tại Cà
                                        Mau.</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Service 3: Đèn Năng Lượng Mặt Trời -->
        <section id="solar" class="service-detail-section" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="service-layout" style="grid-template-columns: 1fr 1.5fr; gap: 50px; align-items: start;">
                    <div class="service-img-wrap" data-aos="fade-right" data-aos-delay="100">
                        <img src="https://images.unsplash.com/photo-1509391366360-2e959784a276?auto=format&fit=crop&w=600&q=80"
                            alt="Tấm pin năng lượng"
                            style="width: 100%; border-radius: 8px; object-fit: cover; aspect-ratio: 1/1;">
                    </div>

                    <div class="service-content-wrap" data-aos="fade-left" data-aos-delay="200">
                        <div class="service-item-block" style="margin-bottom: 40px;">
                            <h3 style="font-size: 1.5rem; margin-bottom: 10px;"><i class="fas fa-sun"
                                    style="color: var(--text-dark); margin-right: 8px;"></i> Năng Lượng Sạch</h3>
                            <h4 style="font-size: 1.2rem; color: var(--text-dark); margin-bottom: 10px;">Đèn Năng Lượng
                                Mặt Trời</h4>
                            <p class="service-desc" style="font-size: 0.95rem;">Tiết kiệm 100% chi phí điện năng hàng
                                tháng. Tự động bật khi trời tối, tắt khi trời sáng. Thích hợp cho sân vườn, đường đi,
                                vuông tôm tại Cà Mau.</p>

                            <ul class="service-features-list"
                                style="margin-bottom: 20px; font-size: 0.95rem; list-style: none; padding-left: 0;">
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Tấm pin Mono cao cấp:</strong> Hiệu suất chuyển đổi cao, sạc nhanh
                                        ngay cả khi trời ít nắng.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Pin Lithium chống chai:</strong> Tuổi thọ pin lên đến 5-8 năm, chiếu
                                        sáng liên tục 12-15 giờ.</span>
                                </li>
                                <li style="margin-bottom: 12px; display: flex; align-items: flex-start; gap: 10px;">
                                    <i class="fas fa-check-circle"
                                        style="color: var(--primary-color); margin-top: 3px;"></i>
                                    <span><strong>Kháng nước IP67:</strong> Chống chịu mọi điều kiện thời tiết khắc
                                        nghiệt tại vùng biển Cà Mau.</span>
                                </li>
                            </ul>
                        </div>
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
                            Học Quốc Đồng để được hỗ trợ tận nơi tại Cà Mau nhanh nhất trong 30 phút.</p>
                    </div>
                    <div class="cta-action" style="flex-direction: row;">
                        <a href="tel:0949754678" class="btn btn-primary">
                            <i class="fas fa-phone-alt"></i> Gọi Ngay: 0949.754.678
                        </a>
                        <a href="https://zalo.me/0949754678" class="btn btn-outline"
                            style="border-color: var(--primary-color); color: var(--primary-color);">
                            <i class="fas fa-comment-dots"></i> Chat Trực Tuyến
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer id="contact" class="footer">
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
                        <li><i class="fas fa-clock"></i> 07:30 - 20:00 (Hàng ngày)</li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <p>&copy; 2026 Tin Học Quốc Đồng. All rights reserved. Designed for excellence.</p>
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