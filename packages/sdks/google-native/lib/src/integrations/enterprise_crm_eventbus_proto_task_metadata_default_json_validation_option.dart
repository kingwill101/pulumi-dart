/// Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
enum EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption {
  unspecifiedJsonValidationOption("UNSPECIFIED_JSON_VALIDATION_OPTION"),
  skip("SKIP"),
  preExecution("PRE_EXECUTION"),
  postExecution("POST_EXECUTION"),
  prePostExecution("PRE_POST_EXECUTION");

  const EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption(
    this.wireValue,
  );
  final String wireValue;

  static EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption
  fromValue(String value) {
    for (final item
        in EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoTaskMetadataDefaultJsonValidationOption value: $value',
    );
  }
}
