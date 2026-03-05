/// Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
enum RoutineDataGovernanceType {
  dataGovernanceTypeUnspecified("DATA_GOVERNANCE_TYPE_UNSPECIFIED"),
  dataMasking("DATA_MASKING");

  const RoutineDataGovernanceType(this.wireValue);
  final String wireValue;

  static RoutineDataGovernanceType fromValue(String value) {
    for (final item in RoutineDataGovernanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineDataGovernanceType value: $value');
  }
}

