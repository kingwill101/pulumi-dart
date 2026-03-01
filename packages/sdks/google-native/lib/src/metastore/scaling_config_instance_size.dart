/// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
enum ScalingConfigInstanceSize {
  instanceSizeUnspecified("INSTANCE_SIZE_UNSPECIFIED"),
  extraSmall("EXTRA_SMALL"),
  small("SMALL"),
  medium("MEDIUM"),
  large("LARGE"),
  extraLarge("EXTRA_LARGE");

  const ScalingConfigInstanceSize(this.value);
  final String value;

  static ScalingConfigInstanceSize fromValue(String value) {
    for (final item in ScalingConfigInstanceSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScalingConfigInstanceSize value: $value');
  }
}

