# Build docker image
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

echo "in Build file"
pwd
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile .

docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory_management/Dockerfile .