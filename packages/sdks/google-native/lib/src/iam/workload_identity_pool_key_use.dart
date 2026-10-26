import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The purpose of the key.
enum WorkloadIdentityPoolKeyUse implements pulumi.PulumiEnum<String> {
  keyUseUnspecified("KEY_USE_UNSPECIFIED"),
  encryption("ENCRYPTION");

  const WorkloadIdentityPoolKeyUse(this.wireValue);
  @override
  final String wireValue;

  static WorkloadIdentityPoolKeyUse fromValue(String value) {
    for (final item in WorkloadIdentityPoolKeyUse.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadIdentityPoolKeyUse value: $value');
  }
}
