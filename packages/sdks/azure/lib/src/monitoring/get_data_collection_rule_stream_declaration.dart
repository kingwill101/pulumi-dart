// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_stream_declaration_column.dart';

class GetDataCollectionRuleStreamDeclaration {
  /// One or more `column` blocks as defined above.
  final pulumi.Input<List<GetDataCollectionRuleStreamDeclarationColumn>> columns;
  /// The name of the custom stream. This name should be unique across all `streamDeclaration` blocks.
  final pulumi.Input<String> streamName;

  /// Creates a new [GetDataCollectionRuleStreamDeclaration].
  /// [columns] One or more `column` blocks as defined above.
  /// [streamName] The name of the custom stream. This name should be unique across all `streamDeclaration` blocks.
  const GetDataCollectionRuleStreamDeclaration({
    required this.columns,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<GetDataCollectionRuleStreamDeclarationColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GetDataCollectionRuleStreamDeclarationColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'streamName': streamName,
    };
  }

  factory GetDataCollectionRuleStreamDeclaration.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleStreamDeclaration(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataCollectionRuleStreamDeclarationColumn>(map['columns']!, (value) => GetDataCollectionRuleStreamDeclarationColumn.fromMap((value as Map).cast<String, dynamic>()))),
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
    );
  }
}
