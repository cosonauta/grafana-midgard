#!/bin/bash
# vim: ai:ts=8:sw=8:noet
set -efCo pipefail
export SHELLOPTS
IFS=$'\t\n'

[ -z "$VERSION" ] && echo "VERSION env var is required." && exit 1
[ -z "$IMAGE" ] && echo "IMAGE env var is required." && exit 1

IMAGE_TAG="${IMAGE}:${VERSION}"

# Build image.
echo "Pushing image ${IMAGE_TAG}..."
docker push "${IMAGE_TAG}"
