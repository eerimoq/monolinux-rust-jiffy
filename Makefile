all:
	cd app && cargo build --target arm-unknown-linux-musleabi
	ls -lh app/target/arm-unknown-linux-musleabi/debug/app
	file app/target/arm-unknown-linux-musleabi/debug/app

clean:
	cd app && cargo clean --target arm-unknown-linux-musleabi
