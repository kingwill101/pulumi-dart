// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoClusterRestore {
  /// The point in time (in UTC) to restore from, in ISO 8601 format (e.g., `2024-01-01T00:00:00Z`). Changing this forces a new resource to be created.
  final pulumi.Input<String> pointInTimeUtc;
  /// The ID of the source MongoDB Cluster to restore from. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceId;

  /// Creates a new [MongoClusterRestore].
  /// [pointInTimeUtc] The point in time (in UTC) to restore from, in ISO 8601 format (e.g., `2024-01-01T00:00:00Z`). Changing this forces a new resource to be created.
  /// [sourceId] The ID of the source MongoDB Cluster to restore from. Changing this forces a new resource to be created.
  const MongoClusterRestore({
    required this.pointInTimeUtc,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTimeUtc': pointInTimeUtc,
      'sourceId': sourceId,
    };
  }

  factory MongoClusterRestore.fromMap(Map<String, dynamic> map) {
    return MongoClusterRestore(
      pointInTimeUtc: pulumi.Input.fromValue(map['pointInTimeUtc'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}
