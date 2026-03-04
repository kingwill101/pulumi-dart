// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_stream_declaration_column.dart';

class DataCollectionRuleStreamDeclaration {
  /// One or more `column` blocks as defined above.
  final pulumi.Input<List<DataCollectionRuleStreamDeclarationColumn>> columns;

  /// The name of the custom stream. This name should be unique across all `stream_declaration` blocks and must begin with a prefix of `Custom-`.
  final pulumi.Input<String> streamName;

  /// Creates a new [DataCollectionRuleStreamDeclaration].
  /// [columns] One or more `column` blocks as defined above.
  /// [streamName] The name of the custom stream. This name should be unique across all `stream_declaration` blocks and must begin with a prefix of `Custom-`.
  DataCollectionRuleStreamDeclaration({
    required this.columns,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          pulumi.Input.mapInputValue<
            List<DataCollectionRuleStreamDeclarationColumn>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  DataCollectionRuleStreamDeclarationColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'streamName': streamName,
    };
  }

  factory DataCollectionRuleStreamDeclaration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionRuleStreamDeclaration(
      columns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DataCollectionRuleStreamDeclarationColumn>(
          map['columns']!,
          (value) => DataCollectionRuleStreamDeclarationColumn.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
    );
  }
}
