// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_field_search_config_geo_spec.dart';
import 'index_field_search_config_text_spec.dart';

class IndexFieldSearchConfig {
  /// The specification for building a geo search index for a field.
  /// Structure is documented below.
  final pulumi.Input<IndexFieldSearchConfigGeoSpec?>? geoSpec;
  /// The specification for building a text search index for a field.
  /// Structure is documented below.
  final pulumi.Input<IndexFieldSearchConfigTextSpec?>? textSpec;

  /// Creates a new [IndexFieldSearchConfig].
  /// [geoSpec] The specification for building a geo search index for a field.
  /// [textSpec] The specification for building a text search index for a field.
  const IndexFieldSearchConfig({
    this.geoSpec,
    this.textSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoSpec': ?pulumi.Input.mapOptionalInputValue<IndexFieldSearchConfigGeoSpec, Map<String, dynamic>>(geoSpec, (value) => value.toMap()),
      'textSpec': ?pulumi.Input.mapOptionalInputValue<IndexFieldSearchConfigTextSpec, Map<String, dynamic>>(textSpec, (value) => value.toMap()),
    };
  }

  factory IndexFieldSearchConfig.fromMap(Map<String, dynamic> map) {
    return IndexFieldSearchConfig(
      geoSpec: (() { final guardedValue = map['geoSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexFieldSearchConfigGeoSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textSpec: (() { final guardedValue = map['textSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexFieldSearchConfigTextSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
