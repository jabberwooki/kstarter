api = 2
core = 7.x

;=== Contrib modules ==========================================================
projects[admin_menu][subdir] = contrib
projects[better_formats][subdir] = contrib
projects[context][subdir] = contrib
projects[ctools][subdir] = contrib
projects[ds][subdir] = contrib
projects[entity][subdir] = contrib
projects[features][subdir] = contrib
projects[features_extra][subdir] = contrib
projects[field_group][subdir] = contrib
projects[files_undo_remove][subdir] = contrib
projects[imce][subdir] = contrib
projects[imce_mkdir][subdir] = contrib
projects[jquery_update][subdir] = contrib
projects[l10n_update][subdir] = contrib
projects[libraries][subdir] = contrib
projects[link][subdir] = contrib
projects[linkit][subdir] = contrib
projects[options_element][subdir] = contrib
projects[role_export][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[taxonomy_access_fix][subdir] = contrib
projects[token][subdir] = contrib
projects[user_settings_access][subdir] = contrib
projects[uuid][subdir] = contrib
projects[uuid_features][subdir] = contrib
projects[views][subdir] = contrib

;=== Modules - optional =======================================================
;projects[bean][subdir] = contrib
;projects[block_class][subdir] = contrib
;projects[boxes][subdir] = contrib
;projects[date][subdir] = contrib
;projects[email][subdir] = contrib
;projects[entityreference][subdir] = contrib
;projects[field_collection][subdir] = contrib
;projects[filefield_sources][subdir] = contrib
;projects[migrate][subdir] = contrib
;projects[migrate_extras][subdir] = contrib
;projects[views_bulk_operations][subdir] = contrib
;projects[views_slideshow][subdir] = contrib

;=== Kstarter features modules ================================================
includes[seo] = makefiles/seo.make
; Feature kpages doesn't need additionnal modules.
includes[edition] = makefiles/edition.make
includes[contextes] = makefiles/contextes.make
includes[development] = makefiles/development.make

;--- Optional -----------------------------------------------------------------
;includes[webstats_google] = makefiles/wstatsgoogle.make
;includes[webstats_piwik] = makefiles/wstatspiwik.make
;includes[agenda] = makefiles/agenda.make
;includes[news] = makefiles/news.make

;=== Themes ===================================================================
; Admin themes
includes[adminimal] = makefiles/themes/adminimal.make
;includes[rubik] = makefiles/themes/rubik.make

; Front themes
;-------------
;includes[bootstrap] = makefiles/themes/bootstrap.make
;includes[foundation] = makefiles/themes/foundation.make
;includes[omega] = makefiles/themes/omega.make
