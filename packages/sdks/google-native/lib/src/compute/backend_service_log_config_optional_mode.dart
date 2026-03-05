/// This field can only be specified if logging is enabled for this backend service. Configures whether all, none or a subset of optional fields should be added to the reported logs. One of [INCLUDE_ALL_OPTIONAL, EXCLUDE_ALL_OPTIONAL, CUSTOM]. Default is EXCLUDE_ALL_OPTIONAL.
enum BackendServiceLogConfigOptionalMode {
  custom("CUSTOM"),
  excludeAllOptional("EXCLUDE_ALL_OPTIONAL"),
  includeAllOptional("INCLUDE_ALL_OPTIONAL"),
  unspecifiedOptionalMode("UNSPECIFIED_OPTIONAL_MODE");

  const BackendServiceLogConfigOptionalMode(this.wireValue);
  final String wireValue;

  static BackendServiceLogConfigOptionalMode fromValue(String value) {
    for (final item in BackendServiceLogConfigOptionalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceLogConfigOptionalMode value: $value');
  }
}

