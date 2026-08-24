// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceRetrievalOptionsBoostBy {
  /// Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not*exists' = boost chunks that lack the field. Optional — defaults to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
  /// Available values: "asc", "desc", "exists", "not*exists".
  final pulumi.Input<String?>? direction;
  /// Metadata field name to boost by. Use 'timestamp' for document freshness, or any custom*metadata field. Numeric and datetime fields support all four directions (asc, desc, exists, not*exists); text/boolean fields only support exists/not_exists.
  final pulumi.Input<String> field;

  /// Creates a new [AiSearchInstanceRetrievalOptionsBoostBy].
  /// [direction] Boost direction. 'desc' = higher values rank higher (e.g. newer timestamps). 'asc' = lower values rank higher. 'exists' = boost chunks that have the field. 'not*exists' = boost chunks that lack the field. Optional — defaults to 'asc' for numeric/datetime fields, 'exists' for text/boolean fields.
  /// [field] Metadata field name to boost by. Use 'timestamp' for document freshness, or any custom*metadata field. Numeric and datetime fields support all four directions (asc, desc, exists, not*exists); text/boolean fields only support exists/not_exists.
  const AiSearchInstanceRetrievalOptionsBoostBy({
    this.direction,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'field': field,
    };
  }

  factory AiSearchInstanceRetrievalOptionsBoostBy.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceRetrievalOptionsBoostBy(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
    );
  }
}
