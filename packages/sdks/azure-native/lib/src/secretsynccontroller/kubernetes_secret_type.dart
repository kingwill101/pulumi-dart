import 'package:pulumi/pulumi.dart' as pulumi;

/// Type specifies the type of the Kubernetes secret object, e.g. "Opaque" or"kubernetes.io/tls". The controller must have permission to create secrets of the specified type.
enum KubernetesSecretType implements pulumi.PulumiEnum<String> {
  opaque("Opaque"),
  tls("kubernetes.io/tls");

  const KubernetesSecretType(this.wireValue);
  @override
  final String wireValue;

  static KubernetesSecretType fromValue(String value) {
    for (final item in KubernetesSecretType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KubernetesSecretType value: $value');
  }
}
