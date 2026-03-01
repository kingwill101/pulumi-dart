// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_stream_declaration_column.dart';

class DataCollectionRuleStreamDeclaration {
  /// One or more `column` blocks as defined above.
  final List<DataCollectionRuleStreamDeclarationColumn> columns;
  /// The name of the custom stream. This name should be unique across all `stream_declaration` blocks and must begin with a prefix of `Custom-`.
  final String streamName;

  /// Creates a new [DataCollectionRuleStreamDeclaration].
  /// [columns] One or more `column` blocks as defined above.
  /// [streamName] The name of the custom stream. This name should be unique across all `stream_declaration` blocks and must begin with a prefix of `Custom-`.
  DataCollectionRuleStreamDeclaration({
    required this.columns,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.encodeList<DataCollectionRuleStreamDeclarationColumn, Map<String, dynamic>>(columns, (value) => value.toMap()),
      'streamName': streamName,
    };
  }

  factory DataCollectionRuleStreamDeclaration.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleStreamDeclaration(
      columns: pulumi.Input.decodeList<DataCollectionRuleStreamDeclarationColumn>(map['columns'], (value) => DataCollectionRuleStreamDeclarationColumn.fromMap((value as Map).cast<String, dynamic>())),
      streamName: map['streamName'] as String,
    );
  }
}

