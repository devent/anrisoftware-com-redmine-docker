#!/bin/bash
set -e

tmp=$(mktemp)
trap "{ rm -f $tmp; }" EXIT

cat > $tmp << "EOM"


<!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(["setCookieDomain", "*.project.anrisoftware.com"]);
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//piwik.andrea.muellerpublic.de/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', '2']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<!-- End Piwik Code -->

EOM

file=app/views/layouts/base.html.erb
sed -i -e "/<%= call_hook :view_layouts_base_body_bottom %>/r $tmp" /usr/src/redmine/$file
