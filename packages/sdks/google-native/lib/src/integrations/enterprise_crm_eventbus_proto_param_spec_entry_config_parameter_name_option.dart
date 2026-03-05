enum EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption {
  defaultNotParameterName("DEFAULT_NOT_PARAMETER_NAME"),
  isParameterName("IS_PARAMETER_NAME"),
  keyIsParameterName("KEY_IS_PARAMETER_NAME"),
  valueIsParameterName("VALUE_IS_PARAMETER_NAME");

  const EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption(this.wireValue);
  final String wireValue;

  static EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoParamSpecEntryConfigParameterNameOption value: $value');
  }
}

