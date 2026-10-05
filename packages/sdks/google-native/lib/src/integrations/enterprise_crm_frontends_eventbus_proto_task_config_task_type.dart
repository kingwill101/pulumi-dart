import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of the task
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType implements pulumi.PulumiEnum<String> {
  task("TASK"),
  asisTemplate("ASIS_TEMPLATE"),
  ioTemplate("IO_TEMPLATE");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType value: $value');
  }
}
