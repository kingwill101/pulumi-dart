/// The managed application definition artifact type.
enum ApplicationArtifactType {
  valueNotSpecified("NotSpecified"),
  valueTemplate("Template"),
  valueCustom("Custom");

  const ApplicationArtifactType(this.value);
  final String value;

  static ApplicationArtifactType fromValue(String value) {
    for (final item in ApplicationArtifactType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationArtifactType value: $value');
  }
}

