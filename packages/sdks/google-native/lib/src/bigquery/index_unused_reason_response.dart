// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_reference_response.dart';

class IndexUnusedReasonResponse {
  /// Specifies the base table involved in the reason that no search index was used.
  final pulumi.Input<TableReferenceResponse> baseTable;
  /// Specifies the high-level reason for the scenario when no search index was used.
  final pulumi.Input<String> code;
  /// Specifies the name of the unused search index, if available.
  final pulumi.Input<String> indexName;
  /// Free form human-readable reason for the scenario when no search index was used.
  final pulumi.Input<String> message;

  /// Creates a new [IndexUnusedReasonResponse].
  /// [baseTable] Specifies the base table involved in the reason that no search index was used.
  /// [code] Specifies the high-level reason for the scenario when no search index was used.
  /// [indexName] Specifies the name of the unused search index, if available.
  /// [message] Free form human-readable reason for the scenario when no search index was used.
  const IndexUnusedReasonResponse({
    required this.baseTable,
    required this.code,
    required this.indexName,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(baseTable, (value) => value.toMap()),
      'code': code,
      'indexName': indexName,
      'message': message,
    };
  }

  factory IndexUnusedReasonResponse.fromMap(Map<String, dynamic> map) {
    return IndexUnusedReasonResponse(
      baseTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['baseTable']! as Map).cast<String, dynamic>())),
      code: pulumi.Input.fromValue(map['code'] as String),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

