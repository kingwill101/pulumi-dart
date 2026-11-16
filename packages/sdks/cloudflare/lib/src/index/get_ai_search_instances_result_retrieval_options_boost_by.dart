// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultRetrievalOptionsBoostBy {
  /// Available values: "number", "datetime", "text", "boolean".
  final pulumi.Input<String> dataType;
  /// Available values: "asc", "desc", "exists", "notExists".
  final pulumi.Input<String> direction;
  final pulumi.Input<String> field;

  /// Creates a new [GetAiSearchInstancesResultRetrievalOptionsBoostBy].
  /// [dataType] Available values: "number", "datetime", "text", "boolean".
  /// [direction] Available values: "asc", "desc", "exists", "notExists".
  /// [field] Required.
  const GetAiSearchInstancesResultRetrievalOptionsBoostBy({
    required this.dataType,
    required this.direction,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'direction': direction,
      'field': field,
    };
  }

  factory GetAiSearchInstancesResultRetrievalOptionsBoostBy.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultRetrievalOptionsBoostBy(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      field: pulumi.Input.fromValue(map['field'] as String),
    );
  }
}
