FROM robobeerun/redmine:v3.4.3-passenger-r2
LABEL maintainer "Erwin Mueller <erwin.mueller@deventm.com>"

# Install plugins and themes.

RUN set -x \
  && src="https://www.dropbox.com/s/klxi6tqhxjy7vxw/redmine_people-1_3_2-light.zip?dl=0" \
  && hash="45a251fbb0cb492e8c3e191e50678cdd337e9de92b719ff1735f71697cbcff55" \
  && name="redmine_people" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

RUN set -x \
  && src="https://www.dropbox.com/s/0hjxk0adrblxgs2/redmine_agile-1_4_5-light.zip?dl=0" \
  && hash="33d180bddeff23fa3664821a427c5c33e9911b8a293fc51457d330ed9f413ce1" \
  && name="redmine_agile" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

RUN set -x \
  && src="https://www.dropbox.com/s/2bgpw0ymb1lrv66/circle_theme-2_1_3.zip?dl=0" \
  && hash="72e2d7ef257fe4d5e351f37cfe22fb56006155c51a44a92187b1a7a02771c3cb" \
  && name="circle_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly

RUN set -x \
  && src="https://www.dropbox.com/s/6tajqrrd2p97d3m/a1_theme-2_0_0.zip?dl=0" \
  && hash="a2d9b8f9c1a723241150924516ca461c64553c13eb81a9b06c683b46b984f84a" \
  && name="a1_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly

ADD rootfs/ /tmp/
  
RUN set -x \
  && bash -x /tmp/insert-piwik.sh
