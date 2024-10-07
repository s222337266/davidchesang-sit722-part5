set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$DATABASE_URL"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -