import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of replica.
enum ReplicaInfoType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY"),
  witness("WITNESS");

  const ReplicaInfoType(this.wireValue);
  @override
  final String wireValue;

  static ReplicaInfoType fromValue(String value) {
    for (final item in ReplicaInfoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicaInfoType value: $value');
  }
}
