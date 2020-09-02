VERSION=2008271251x7da45b
IMAGE_TAG=iconloop/citizen:$(VERSION)
MOUNT_PATH=$(PWD)

build:
	docker build -t $(IMAGE_TAG) .

run:
	docker run -it -p 9100:9000 --rm \
            -v $(MOUNT_PATH)/../db/mainnet:/db $(IMAGE_TAG)

shell:
	docker run -it -p 9100:9000 --rm --entrypoint /bin/bash $(IMAGE_TAG)
