FROM robobeerun/redmine:v4.0.2-puma-r1
LABEL maintainer "Erwin Mueller <erwin.mueller@deventm.com>"

# https://www.redmineup.com/pages/plugins/agile
RUN set -x \
  && src="https://www.dropbox.com/s/ftiz7dnhsfxffke/redmine_agile-1_4_8-light.zip?dl=0" \
  && hash="37609d619e3dc119d49f5bb683f868d6c4a4d98597b275b78f585c98e374b9d0" \
  && name="redmine_agile" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/questions
#RUN set -x \
#  && src="https://www.dropbox.com/s/f5kkj6mrjhbk9er/redmine_questions-1_0_0-light.zip?dl=0" \
#  && hash="ef7500869e4923ce4305c50984cdc3d5b1564922e7df01d4b56ad165e3a43d10" \
#  && name="redmine_questions" \
#  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/checklists
RUN set -x \
  && src="https://www.dropbox.com/s/87bxvjyemi3fm5j/redmine_checklists-3_1_14-light.zip?dl=0" \
  && hash="16a1e2f9aed676958995114ad235a24a3076b34d54620960eaec6a6756c36e43" \
  && name="redmine_checklists" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/favorite-projects
#RUN set -x \
#  && src="https://www.dropbox.com/s/dk6ximxf7ov84nb/redmine_favorite_projects-2_0_3-light.zip?dl=0" \
#  && hash="54f7c7f7964660b9ba5750651dff8aa109a509ee548d5c0d0fdadc05914ff7ef" \
#  && name="redmine_favorite_projects" \
#  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/zenedit
RUN set -x \
  && src="https://www.dropbox.com/s/gshi4hcmld3e1in/redmine_zenedit-1_0_2-light.zip?dl=0" \
  && hash="123cda6cf32969f9222cdd18df936db60869f51c2259431d08b90c90b4be13db" \
  && name="redmine_zenedit" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/people
RUN set -x \
  && src="https://www.dropbox.com/s/uxvt9qo44gxpevs/redmine_people-1_4_0-light.zip?dl=0" \
  && hash="5792af5e789417dd002bc5144eca0bc0e50b0d3693dfd86da91f7c328c8612e5" \
  && name="redmine_people" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/themes/coffee
RUN set -x \
  && src="https://www.dropbox.com/s/izngtjmvo1nn22b/coffee_theme-0_0_4.zip?dl=0" \
  && hash="854e164b390e7f0731566556c9abec317476d47ff86b9cb4754b2f28df35257f" \
  && name="coffee_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/themes/circle
RUN set -x \
  && src="https://www.dropbox.com/s/2bgpw0ymb1lrv66/circle_theme-2_1_3.zip?dl=0" \
  && hash="72e2d7ef257fe4d5e351f37cfe22fb56006155c51a44a92187b1a7a02771c3cb" \
  && name="circle_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/themes/a1
RUN set -x \
  && src="https://www.dropbox.com/s/6tajqrrd2p97d3m/a1_theme-2_0_0.zip?dl=0" \
  && hash="a2d9b8f9c1a723241150924516ca461c64553c13eb81a9b06c683b46b984f84a" \
  && name="a1_theme" \
  && /install-redmine-theme.sh "$src" "$name" "$hash" downloadOnly
