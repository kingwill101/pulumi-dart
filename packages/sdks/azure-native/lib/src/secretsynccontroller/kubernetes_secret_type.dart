/// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
enum KubernetesSecretType {
  opaque("Opaque"),
  tls("kubernetes.io/tls");

  const KubernetesSecretType(this.value);
  final String value;

  static KubernetesSecretType fromValue(String value) {
    for (final item in KubernetesSecretType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubernetesSecretType value: $value');
  }
}

