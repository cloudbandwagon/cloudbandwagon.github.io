---
layout: main
lang: en
permalink: /
---

<!-- ======= About Section ======= -->
<section class="services">
  <div class="container">
    <div class="section-title">
      <h2>Introduction</h2>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
        <div class="icon-box icon-box-pink">
          <div class="icon"><i class="bx bx-group"></i></div>
          <h4 class="title">A welcoming community</h4>
          <p class="description">We aim to be a welcoming and respectful community of people of all genders and ages.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
        <div class="icon-box icon-box-cyan">
          <div class="icon"><i class="bx bx-donate-heart"></i></div>
          <h4 class="title">Knowledge sharing and growth</h4>
          <p class="description">We actively embrace new technology trends and continually share knowledge to help us grow together.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
        <div class="icon-box icon-box-green">
          <div class="icon"><i class="bx bx-arch"></i></div>
          <h4 class="title">Bridging the information gap</h4>
          <p class="description">We strive to bridge the information gap that students / developers living outside of Seoul / Capital Region may experience.</p>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
        <div class="icon-box icon-box-blue">
          <div class="icon"><i class="bx bx-network-chart"></i></div>
          <h4 class="title">Share experiences and connect</h4>
          <p class="description">People with different experiences and knowledge come together to learn from each other and grow together.</p>
        </div>
      </div>
    </div>
  </div>
</section><!-- End About Section -->

<!-- ======= Events Section ======= -->
<section class="events section-bg" data-aos="fade-up" date-aos-delay="200">
  <div class="container">
    <div class="section-title">
      <h2>Recent activities</h2>
    </div>

    <div class="row">
{% assign events = site.events | sort: 'date' | reverse %}
{% for event in events limit:6 %}
      <div class="col-sm-12 col-md-6 col-lg-6 col-xl-4 d-flex align-items-stretch p-4">
        <div class="icon-box">
          <a href="{{ event.link }}" target="_blank">
            <!-- <div class="icon"><i class="bx bx-group"></i></div> -->
            <div class="thumbnail">
{% assign event_thumbnail = site.baseurl | append: "assets/img/events/thumbnail/" | append: event.thumbnail %}
{% if event.thumbnail == nil or event.thumbnail == "" %}
{% assign event_thumbnail = site.baseurl | append: "assets/img/icon-192.png" %}
{% endif %}
              <img src="{{ event_thumbnail }}" class="img-fluid" alt="{{ event.title }}">
            </div>
            <h4 class="title">{{ event.title }}</h4>
            <p class="description">{{ event.description }}</p>
          </a>
        </div>
      </div>
{% endfor %}
    </div>

  </div>
</section><!-- End Events Section -->

<!-- ======= Members Section ======= -->
<section class="team">
  <div class="container">

    <div class="section-title">
      <h2>Members</h2>
    </div>

    <div class="row">
{% assign members = site.members | sort: 'order' %}
{% for member in members %}
      <div class="col-sm-6 col-md-4 col-lg-3 col-xl-2 d-flex align-items-stretch"  style="justify-content: center;" data-aos="fade-up">
        <div class="member">
          <div class="member-img">
            <img src="{{ site.baseurl }}assets/img/members/{{ member.profile }}" class="img-fluid" alt="{{ member.name }}">
            <div class="social">
              {% if member.github   %}<a href="https://github.com/{{ member.github }}" target="_blank"><i class="bi bi-github"></i></a>{% endif %}
              {% if member.twitter  %}<a href="https://twitter.com/@{{ member.twitter  }}" target="_blank"><i class="bi bi-twitter"></i></a>{% endif %}
              {% if member.mastodon  %}<a href="https://mastodon.social/@{{ member.mastodon }}" target="_blank"><i class="bi bi-mastodon"></i></a>{% endif %}
              {% if member.instagram %}<a href="https://instagram.com/{{ member.instagram }}" target="_blank"><i class="bi bi-instagram"></i></a>{% endif %}
              {% if member.facebook  %}<a href="https://facebook.com/{{ member.facebook }}" target="_blank"><i class="bi bi-facebook"></i></a>{% endif %}
              {% if member.linkedin %}<a href="https://linkedin.com/in/{{ member.linkedin }}" target="_blank"><i class="bi bi-linkedin"></i></a>{% endif %}
              {% if member.youtube  %}<a href="https://youtube.com/@{{ member.youtube }}" target="_blank"><i class="bi bi-youtube"></i></a>{% endif %}
              {% if member.medium   %}<a href="https://medium.com/@{{ member.medium }}" target="_blank"><i class="bx bxl-medium"></i></a>{% endif %}
              {% if member.homepage %}<a href="https://{{ member.homepage }}" target="_blank"><i class="bx bx-home"></i></a>{% endif %}
            </div>
          </div>
          <div class="member-info">
            <h4>{{ member.name }}</h4>
            <span>{{ member.from }}</span>
          </div>
        </div>
      </div>
{% endfor %}
    </div>
  </div>
</section><!-- End Members Section -->