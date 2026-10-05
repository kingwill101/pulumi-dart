import 'package:pulumi/pulumi.dart' as pulumi;

/// If set, overrides the option configured in the Task implementation class.
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption implements pulumi.PulumiEnum<String> {
  unspecifiedJsonValidationOption("UNSPECIFIED_JSON_VALIDATION_OPTION"),
  skip("SKIP"),
  preExecution("PRE_EXECUTION"),
  postExecution("POST_EXECUTION"),
  prePostExecution("PRE_POST_EXECUTION");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption value: $value');
  }
}
