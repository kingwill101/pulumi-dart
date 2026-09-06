import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the application-scoped volume kind.
enum ApplicationScopedVolumeKind implements pulumi.PulumiEnum<String> {
  valueServiceFabricVolumeDisk("ServiceFabricVolumeDisk");

  const ApplicationScopedVolumeKind(this.wireValue);
  @override
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
