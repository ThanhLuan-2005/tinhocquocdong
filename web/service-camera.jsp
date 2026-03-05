<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lắp Đặt Camera | Tin Học Quốc Đồng</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <!-- AOS Animation CSS -->
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

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
                        <li><a href="services?type=camera" class="active">Services</a></li>
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
                    style="font-size: 2.2rem; margin-bottom: 10px; text-align: left; color: var(--text-dark);">Giải Pháp
                    Công Nghệ<br>Toàn Diện Tại Cà Mau</h1>
                <p class="hero-desc" style="max-width: 800px; margin-bottom: 0; text-align: left; font-size: 1rem;">
                    Chúng tôi cung cấp dịch vụ sửa chữa chuyên nghiệp, lắp đặt hệ thống an ninh và giải pháp năng lượng
                    sạch cho gia đình và doanh nghiệp.<br>
                    Trung tâm bảo hành & sửa chữa Tin Học Quốc Đồng
                </p>
            </div>
        </section>

        <!-- Specific Content for Camera -->
        <section class="service-detail-section" style="background-color: var(--bg-main);">
            <div class="container">
                <div class="service-layout" style="grid-template-columns: 1fr 2fr; gap: 50px; align-items: start;">
                    <!-- Left: 2 Vertical Images -->
                    <div class="service-img-wrap" data-aos="fade-right">
                        <img src="ezviz_camera.png" alt="Camera an ninh Ezviz"
                            style="width: 100%; border-radius: 8px; object-fit: contain; background-color: #fff; aspect-ratio: 1/1; box-shadow: var(--shadow-md);">
                    </div>

                    <!-- Right: Detailed Content List -->
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

                            <div class="service-actions">
                                <a href="tel:0949754678" class="btn btn-outline"
                                    style="border-color: var(--border-color); color: var(--text-dark); border-radius: 4px; padding: 6px 15px; font-size: 0.9rem;">Liên
                                    Hệ Tư Vấn Ngay</a>
                                <a href="#contact" class="btn btn-outline"
                                    style="border-color: var(--border-color); color: var(--text-dark); border-radius: 4px; padding: 6px 15px; font-size: 0.9rem;">Xem
                                    Chi Tiết</a>
                            </div>
                        </div>

                        <div style="height: 20px;"></div>
                    </div>
                </div>
            </div>
        </section>

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