---
layout: page
title: My CV
date: '2012-06-18 19:52:30 -0400'
date_gmt: '2012-06-18 23:52:30 -0400'
---

{% for type in site.data.experience %}
  {% capture name %}### {{ type.name }}{% endcapture %}
  {{ name | markdownify }}

  {% for role in type.roles %}
    {% capture role_markdown %}
- __{{ role.organization  }}__  
  _{{ role.role }}_  
  {{ role.period }}
    {% endcapture %}
    {{ role_markdown || markdownify }}
  {% endfor %}
{% endfor %}

### Associations
{% for association in site.data.associations %}
  {% capture name %}#### _{{ association.name }}_{% endcapture %}
  {{ name | markdownify }}
  {% for role in association.roles %}
    {% capture role_markdown %}
- _{{ role.role }}_  
  {{ role.period }}
    {% endcapture %}
    {{ role_markdown || markdownify }}
  {% endfor %}
{% endfor %}

### Talks
{% for talk in site.data.talks %}
  {% capture talk_markdown %}
- __{{ talk.title }}__  
  _{{ talk.event }}_  
  {{ talk.date }}
  {% endcapture %}
  {{ talk_markdown || markdownify }}
{% endfor %}

### Conferences
{% for conference in site.data.conferences %}
  {% capture conference_markdown %}
- __{{ conference.conference }}__  
  {{ conference.date }}
  {% endcapture %}
  {{ conference_markdown || markdownify }}
{% endfor %}
