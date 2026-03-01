/// Specifies the application-scoped volume kind.
enum ApplicationScopedVolumeKind {
  valueServiceFabricVolumeDisk("ServiceFabricVolumeDisk");

  const ApplicationScopedVolumeKind(this.value);
  final String value;

  static ApplicationScopedVolumeKind fromValue(String value) {
    for (final item in ApplicationScopedVolumeKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationScopedVolumeKind value: $value');
  }
}

