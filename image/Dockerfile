FROM erwin82/redmine-unpriv:v3.4.1-passenger-1-2
LABEL maintainer "Erwin Mueller <erwin.mueller@deventm.com>"

# Install plugins and themes.

RUN set -x \
  && src="https://cloud.muellerpublic.de/s/KGkotQ3Pgt0mAXZ/download" \
  && hash="da26fae60434a7d6a137a22376c04eb6ef69424c8f5c0a381a6080c0307bf542" \
  && name="redmine_people" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

RUN set -x \
  && src="https://cloud.muellerpublic.de/s/9Plh1fgzpG0uPnN/download" \
  && hash="f34943d2a3e5e1397740ac9b728df9cf1824f646a1fbe99d71207fcb326f1a2d" \
  && name="circle_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly

ADD rootfs/insert-piwik.sh /tmp/
  
RUN set -x \
  && bash -x /tmp/insert-piwik.sh
