all:
	cd app && cargo build --target arm-unknown-linux-musleabi
	ls -lh app/target/arm-unknown-linux-musleabi/debug/app
	file app/target/arm-unknown-linux-musleabi/debug/app

clean:
	cd app && cargo clean --target arm-unknown-linux-musleabi

docker-image:
	rm -rf docker/punchboot
	cp -r 3pp/punchboot docker
	rm -rf docker/bpak
	cp -r 3pp/bpak docker
	cd docker && docker build -t monolinux-rust-jiffy .

docker-image-tag-and-push:
	docker tag monolinux-rust-jiffy:latest eerimoq/monolinux-rust-jiffy:$(TAG)
	docker push eerimoq/monolinux-rust-jiffy:$(TAG)
