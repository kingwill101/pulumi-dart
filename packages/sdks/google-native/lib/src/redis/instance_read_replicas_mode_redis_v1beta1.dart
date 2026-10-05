import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
enum InstanceReadReplicasModeRedisV1beta1 implements pulumi.PulumiEnum<String> {
  readReplicasModeUnspecified("READ_REPLICAS_MODE_UNSPECIFIED"),
  readReplicasDisabled("READ_REPLICAS_DISABLED"),
  readReplicasEnabled("READ_REPLICAS_ENABLED");

  const InstanceReadReplicasModeRedisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static InstanceReadReplicasModeRedisV1beta1 fromValue(String value) {
    for (final item in InstanceReadReplicasModeRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceReadReplicasModeRedisV1beta1 value: $value');
  }
}
