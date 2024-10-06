# Build docker image
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile .

docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./Dockerfile .