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
  {% capture name %}#### {{ association.name }}{% endcapture %}
  {{ name | markdownify }}
  {% for role in association.roles %}
    {% capture role_markdown %}
- _{{ role.role }}_  
  {{ role.period }}
    {% endcapture %}
    {{ role_markdown || markdownify }}
  {% endfor %}
{% endfor %}
