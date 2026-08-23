/// The instance size of this the instance configuration.
enum InstanceConfigInstanceSize {
  instanceSizeUnspecified("INSTANCE_SIZE_UNSPECIFIED"),
  standardSmall("STANDARD_SMALL"),
  standardMedium("STANDARD_MEDIUM"),
  standardLarge("STANDARD_LARGE"),
  standardXlarge("STANDARD_XLARGE"),
  standard2xlarge("STANDARD_2XLARGE"),
  standard3xlarge("STANDARD_3XLARGE"),
  devXsmall("DEV_XSMALL");

  const InstanceConfigInstanceSize(this.wireValue);
  final String wireValue;

  static InstanceConfigInstanceSize fromValue(String value) {
    for (final item in InstanceConfigInstanceSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceConfigInstanceSize value: $value');
  }
}
