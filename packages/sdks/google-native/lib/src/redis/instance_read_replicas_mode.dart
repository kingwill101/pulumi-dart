import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
enum InstanceReadReplicasMode implements pulumi.PulumiEnum<String> {
  readReplicasModeUnspecified("READ_REPLICAS_MODE_UNSPECIFIED"),
  readReplicasDisabled("READ_REPLICAS_DISABLED"),
  readReplicasEnabled("READ_REPLICAS_ENABLED");

  const InstanceReadReplicasMode(this.wireValue);
  @override
  final String wireValue;

  static InstanceReadReplicasMode fromValue(String value) {
    for (final item in InstanceReadReplicasMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceReadReplicasMode value: $value');
  }
}
