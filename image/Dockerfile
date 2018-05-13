FROM robobeerun/redmine:v3.4.5-puma-r1
LABEL maintainer "Erwin Mueller <erwin.mueller@deventm.com>"

# https://www.redmineup.com/pages/plugins/agile
RUN set -x \
  && src="https://www.dropbox.com/s/ffqnwnler0y3gl1/redmine_agile-1_4_6-light.zip?dl=0" \
  && hash="12b6ebda7b0c74daac32a8f27778b798a9296eba62eca01a44e868117ea3621e" \
  && name="redmine_agile" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/questions
RUN set -x \
  && src="https://www.dropbox.com/s/loi1combeh4io1n/redmine_questions-0_0_7-light.zip?dl=0" \
  && hash="b968633076037a8cb727997eec69a28919838fa49c99fe0fdc6ed2f4a6fe138c" \
  && name="redmine_questions" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/checklists
RUN set -x \
  && src="https://www.dropbox.com/s/7lp0wtieua9avm7/redmine_checklists-3_1_11-light.zip?dl=0" \
  && hash="df1e75401b4440ddccb0076ef9aa43d788ce04d06a6ae60d54001d4cfca00231" \
  && name="redmine_checklists" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/favorite-projects
RUN set -x \
  && src="https://www.dropbox.com/s/dk6ximxf7ov84nb/redmine_favorite_projects-2_0_3-light.zip?dl=0" \
  && hash="54f7c7f7964660b9ba5750651dff8aa109a509ee548d5c0d0fdadc05914ff7ef" \
  && name="redmine_favorite_projects" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/zenedit
RUN set -x \
  && src="https://www.dropbox.com/s/id4i3kwdtl51y8s/redmine_zenedit-0_0_3-light.zip?dl=0" \
  && hash="c31dd6b3eed727fe38b28fa20be97670fcb4bbf968e9e95e24f6e0451a41e1d4" \
  && name="redmine_zenedit" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

# https://www.redmineup.com/pages/plugins/people
RUN set -x \
  && src="https://www.dropbox.com/s/klxi6tqhxjy7vxw/redmine_people-1_3_2-light.zip?dl=0" \
  && hash="45a251fbb0cb492e8c3e191e50678cdd337e9de92b719ff1735f71697cbcff55" \
  && name="redmine_people" \
  && /install-redmine-plugin.sh "$src" "$name" "$hash" downloadOnly

RUN set -x \
  && src="https://www.dropbox.com/s/izngtjmvo1nn22b/coffee_theme-0_0_4.zip?dl=0" \
  && hash="854e164b390e7f0731566556c9abec317476d47ff86b9cb4754b2f28df35257f" \
  && name="circle_theme" \
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
