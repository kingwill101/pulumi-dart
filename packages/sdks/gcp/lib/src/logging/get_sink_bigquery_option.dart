// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSinkBigqueryOption {
  /// Whether [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables) are used.
  final pulumi.Input<bool> usePartitionedTables;

  /// Creates a new [GetSinkBigqueryOption].
  /// [usePartitionedTables] Whether [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables) are used.
  const GetSinkBigqueryOption({
    required this.usePartitionedTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usePartitionedTables': usePartitionedTables,
    };
  }

  factory GetSinkBigqueryOption.fromMap(Map<String, dynamic> map) {
    return GetSinkBigqueryOption(
      usePartitionedTables: pulumi.Input.fromValue(map['usePartitionedTables'] as bool),
    );
  }
}

