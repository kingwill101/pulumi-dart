/// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
enum BackendServiceLogConfigOptionalModeComputeBeta {
  custom("CUSTOM"),
  excludeAllOptional("EXCLUDE_ALL_OPTIONAL"),
  includeAllOptional("INCLUDE_ALL_OPTIONAL");

  const BackendServiceLogConfigOptionalModeComputeBeta(this.wireValue);
  final String wireValue;

  static BackendServiceLogConfigOptionalModeComputeBeta fromValue(String value) {
    for (final item in BackendServiceLogConfigOptionalModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceLogConfigOptionalModeComputeBeta value: $value');
  }
}

