// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogRestrictedLocationsConfig {
  /// A list of GCS locations (e.g., `gs://my-other-bucket/...`) that are
  /// permitted for use by resources within this catalog. Each entry can be
  /// either a GCS bucket or a path within it.
  final pulumi.Input<List<String>?>? restrictedLocations;

  /// Creates a new [IcebergCatalogRestrictedLocationsConfig].
  /// [restrictedLocations] A list of GCS locations (e.g., `gs://my-other-bucket/...`) that are
  const IcebergCatalogRestrictedLocationsConfig({
    this.restrictedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restrictedLocations': ?restrictedLocations,
    };
  }

  factory IcebergCatalogRestrictedLocationsConfig.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogRestrictedLocationsConfig(
      restrictedLocations: (() { final guardedValue = map['restrictedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
