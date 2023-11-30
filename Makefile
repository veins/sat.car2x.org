.PHONY: gen watch serve

gen:
	hugo --config config.toml --cleanDestinationDir
	chmod a+rX public

watch: serve

serve:
	hugo server --config config.toml --disableFastRender --noHTTPCache --navigateToChanged

content/%.md:
	hugo --config config.toml --editor gvim new content "$(patsubst content/%,%,$@)"
