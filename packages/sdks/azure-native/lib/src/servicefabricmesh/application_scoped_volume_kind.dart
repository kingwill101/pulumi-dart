/// Specifies the application-scoped volume kind.
enum ApplicationScopedVolumeKind {
  valueServiceFabricVolumeDisk("ServiceFabricVolumeDisk");

  const ApplicationScopedVolumeKind(this.wireValue);
  final String wireValue;

  static ApplicationScopedVolumeKind fromValue(String value) {
    for (final item in ApplicationScopedVolumeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationScopedVolumeKind value: $value');
  }
}

