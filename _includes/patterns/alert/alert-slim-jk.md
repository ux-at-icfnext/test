
{% assign type = page.alert.type | downcase %}
{% if type == "error" %}
  <div class="usa-alert usa-alert--error usa-alert--slim" role="alert">
    <div class="usa-alert__body">
      <p class="usa-alert__text">
        {{page.alert.content}}
        <a class="usa-link" href="{{page.alert.link}}">{{page.alert.linkText}}</a>
      </p>
    </div>
  </div>
{% elsif type == "warning" or type == "info" or type == "success" %}
  <div class="usa-alert usa-alert--{{type}} usa-alert--slim">
    <div class="usa-alert__body">
      <p class="usa-alert__text">
        {{page.alert.content}}
        <a class="usa-link" href="{{page.alert.link}}">{{page.alert.linkText}}</a>
      </p>
    </div>
  </div>
{% endif %}