Monolinux in Rust for the Jiffy board

Run:

.. code-block:: text

   $ rustup target add arm-unknown-linux-musleabi

Create ~/.cargo/config.

.. code-block:: ini

   [build]
   target = "arm-unknown-linux-musleabi"
   
   [target.arm-unknown-linux-musleabi]
   linker = "/home/erik/workspace/monolinux-rust-jiffy/docker/arm-linux-musleabi-cross/bin/arm-linux-musleabi-gcc"

Run this to cross compile for ARM. The output is a statically linked binary.

.. code-block:: text

   $ cargo build --target arm-unknown-linux-musleabi
