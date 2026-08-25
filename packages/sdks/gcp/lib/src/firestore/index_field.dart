// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_field_search_config.dart';
import 'index_field_vector_config.dart';

class IndexField {
  /// Indicates that this field supports operations on arrayValues. Only one of `order`, `arrayConfig`, `searchConfig` and
  /// `vectorConfig` can be specified.
  /// Possible values are: `CONTAINS`.
  final pulumi.Input<String?>? arrayConfig;
  /// Name of the field.
  final pulumi.Input<String?>? fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.
  /// Only one of `order`, `arrayConfig`, `searchConfig` and `vectorConfig` can be specified.
  /// Possible values are: `ASCENDING`, `DESCENDING`.
  final pulumi.Input<String?>? order;
  /// Indicates that this field supports text or geo-search operations. Only one of `order`, `arrayConfig`, `searchConfig` and
  /// `vectorConfig` can be specified.
  /// Structure is documented below.
  final pulumi.Input<IndexFieldSearchConfig?>? searchConfig;
  /// Indicates that this field supports vector search operations. Only one of `order`, `arrayConfig`, `searchConfig` and
  /// `vectorConfig` can be specified. Vector Fields should come after the field path `__name__`.
  /// Structure is documented below.
  final pulumi.Input<IndexFieldVectorConfig?>? vectorConfig;

  /// Creates a new [IndexField].
  /// [arrayConfig] Indicates that this field supports operations on arrayValues. Only one of `order`, `arrayConfig`, `searchConfig` and
  /// [fieldPath] Name of the field.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.
  /// [searchConfig] Indicates that this field supports text or geo-search operations. Only one of `order`, `arrayConfig`, `searchConfig` and
  /// [vectorConfig] Indicates that this field supports vector search operations. Only one of `order`, `arrayConfig`, `searchConfig` and
  const IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.searchConfig,
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?arrayConfig,
      'fieldPath': ?fieldPath,
      'order': ?order,
      'searchConfig': ?pulumi.Input.mapOptionalInputValue<IndexFieldSearchConfig, Map<String, dynamic>>(searchConfig, (value) => value.toMap()),
      'vectorConfig': ?pulumi.Input.mapOptionalInputValue<IndexFieldVectorConfig, Map<String, dynamic>>(vectorConfig, (value) => value.toMap()),
    };
  }

  factory IndexField.fromMap(Map<String, dynamic> map) {
    return IndexField(
      arrayConfig: (() { final guardedValue = map['arrayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchConfig: (() { final guardedValue = map['searchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexFieldSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vectorConfig: (() { final guardedValue = map['vectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexFieldVectorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
