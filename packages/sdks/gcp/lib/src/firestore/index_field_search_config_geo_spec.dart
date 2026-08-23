// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexFieldSearchConfigGeoSpec {
  /// If true, disables GeoJSON indexing for the field. By default, GeoJSON points are indexed.
  /// Firestore GeoPoints are indexed regardless of the value of this field.
  final pulumi.Input<bool> geoJsonIndexingDisabled;

  /// Creates a new [IndexFieldSearchConfigGeoSpec].
  /// [geoJsonIndexingDisabled] If true, disables GeoJSON indexing for the field. By default, GeoJSON points are indexed.
  const IndexFieldSearchConfigGeoSpec({
    required this.geoJsonIndexingDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoJsonIndexingDisabled': geoJsonIndexingDisabled,
    };
  }

  factory IndexFieldSearchConfigGeoSpec.fromMap(Map<String, dynamic> map) {
    return IndexFieldSearchConfigGeoSpec(
      geoJsonIndexingDisabled: pulumi.Input.fromValue(map['geoJsonIndexingDisabled'] as bool),
    );
  }
}
