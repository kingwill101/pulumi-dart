import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType implements pulumi.PulumiEnum<String> {
  externalTaskTypeUnspecified("EXTERNAL_TASK_TYPE_UNSPECIFIED"),
  normalTask("NORMAL_TASK"),
  errorTask("ERROR_TASK");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType value: $value');
  }
}
