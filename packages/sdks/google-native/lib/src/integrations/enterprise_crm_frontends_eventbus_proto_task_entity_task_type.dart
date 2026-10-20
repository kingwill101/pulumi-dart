import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of the task
enum EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType implements pulumi.PulumiEnum<String> {
  task("TASK"),
  asisTemplate("ASIS_TEMPLATE"),
  ioTemplate("IO_TEMPLATE");

  const EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType value: $value');
  }
}
