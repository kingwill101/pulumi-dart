enum EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType {
  externalTaskTypeUnspecified("EXTERNAL_TASK_TYPE_UNSPECIFIED"),
  normalTask("NORMAL_TASK"),
  errorTask("ERROR_TASK");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType(this.wireValue);
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

