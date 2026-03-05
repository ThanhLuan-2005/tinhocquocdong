// script.js

// --- Intersection Observer for Scroll Animations ---
document.addEventListener('DOMContentLoaded', () => {
    // Header scroll effect
    const header = document.querySelector('.header');

    window.addEventListener('scroll', () => {
        if (window.scrollY > 50) {
            header.style.boxShadow = '0 4px 20px rgba(0,0,0,0.08)';
        } else {
            header.style.boxShadow = 'none';
        }
    });

    // Animate cards on scroll (Services & Products)
    const cards = document.querySelectorAll('.service-card, .product-card');

    // Add dynamic animation order based on index if not set
    cards.forEach((card, index) => {
        card.style.setProperty('--animation-order', (index % 6) + 1);
    });

    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                // Add a small delay based on CSS variable
                const order = entry.target.style.getPropertyValue('--animation-order');
                const delay = (order || 1) * 100;

                setTimeout(() => {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }, delay);

                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    // Initial state for cards before animation
    cards.forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(30px)';
        card.style.transition = 'opacity 0.6s ease-out, transform 0.6s ease-out, box-shadow 0.3s';
        observer.observe(card);
    });
});
