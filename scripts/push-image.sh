# Push the image that has been built in build-image.sh
    set -u # or set -o nounset
    : "$CONTAINER_REGISTRY"
    : "$VERSION"
    : "$REGISTRY_UN"
    : "$REGISTRY_PW"

echo "Now pushing to azure container registry..."
echo $CONTAINER_REGISTRY
echo $REGISTRY_PW
echo "Begin push..."

echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book-catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory-management:$VERSION
