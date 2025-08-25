// Mahomet IL Ductless Mini Splits - Main JavaScript

document.addEventListener('DOMContentLoaded', function() {
    // Mobile menu toggle
    const mobileToggle = document.querySelector('.mobile-menu-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (mobileToggle && navMenu) {
        mobileToggle.addEventListener('click', function() {
            navMenu.classList.toggle('active');
        });
    }
    
    // Smooth scrolling for anchor links
    const anchorLinks = document.querySelectorAll('a[href^="#"]');
    anchorLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
    
    // Phone number click tracking
    const phoneLinks = document.querySelectorAll('a[href^="tel:"]');
    phoneLinks.forEach(link => {
        link.addEventListener('click', function() {
            // Track phone clicks with Google Analytics
            if (typeof gtag !== 'undefined') {
                gtag('event', 'phone_call', {
                    'event_category': 'contact',
                    'event_label': 'header_phone'
                });
            }
        });
    });
    
    // Floating phone button tracking
    const floatingPhone = document.querySelector('.floating-phone');
    if (floatingPhone) {
        floatingPhone.addEventListener('click', function() {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'phone_call', {
                    'event_category': 'contact',
                    'event_label': 'floating_phone'
                });
            }
        });
    }
    
    // CTA button tracking
    const ctaButtons = document.querySelectorAll('.cta-btn');
    ctaButtons.forEach(button => {
        button.addEventListener('click', function() {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'cta_click', {
                    'event_category': 'engagement',
                    'event_label': this.textContent.trim()
                });
            }
        });
    });
    
    // Scroll animations
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };
    
    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);
    
    // Observe elements for animation
    const animateElements = document.querySelectorAll('.service-card, .feature-item, .review-card');
    animateElements.forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });
    
    // Emergency service hours notice
    function updateEmergencyNotice() {
        const now = new Date();
        const hour = now.getHours();
        const isWeekend = now.getDay() === 0 || now.getDay() === 6;
        const isAfterHours = hour < 8 || hour > 18;
        
        if (isAfterHours || isWeekend) {
            const notice = document.createElement('div');
            notice.className = 'emergency-notice';
            notice.innerHTML = `
                <div style="background: #dc3545; color: white; text-align: center; padding: 10px; position: fixed; top: 80px; width: 100%; z-index: 998;">
                    🚨 After Hours? We're Still Here! Call <a href="tel:+18889189104" style="color: white; font-weight: bold;">+1 (888) 918-9104</a> for 24/7 Emergency Service
                </div>
            `;
            document.body.appendChild(notice);
        }
    }
    
    updateEmergencyNotice();
    
    // Form validation and submission tracking
    const forms = document.querySelectorAll('form');
    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'form_submit', {
                    'event_category': 'lead_generation',
                    'event_label': 'quote_request'
                });
            }
        });
    });
    
    // Lazy loading for images
    const images = document.querySelectorAll('img[data-src]');
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('lazy');
                imageObserver.unobserve(img);
            }
        });
    });
    
    images.forEach(img => imageObserver.observe(img));
    
    // Auto-close mobile menu when clicking outside
    document.addEventListener('click', function(e) {
        if (navMenu && navMenu.classList.contains('active')) {
            if (!navMenu.contains(e.target) && !mobileToggle.contains(e.target)) {
                navMenu.classList.remove('active');
            }
        }
    });
    
    // Add current year to copyright
    const yearElements = document.querySelectorAll('.current-year');
    yearElements.forEach(el => {
        el.textContent = new Date().getFullYear();
    });
});

// Service area highlighting
function highlightServiceArea(zipCode) {
    if (typeof gtag !== 'undefined') {
        gtag('event', 'zip_code_interest', {
            'event_category': 'location',
            'event_label': zipCode
        });
    }
}

// Emergency contact prompt
function showEmergencyContact() {
    if (confirm('Need immediate assistance? Call us now at +1 (888) 918-9104 for 24/7 emergency service!')) {
        window.location.href = 'tel:+18889189104';
    }
}

// Local SEO enhancement
function trackLocationInterest(location) {
    if (typeof gtag !== 'undefined') {
        gtag('event', 'location_interest', {
            'event_category': 'local_seo',
            'event_label': location
        });
    }
}
