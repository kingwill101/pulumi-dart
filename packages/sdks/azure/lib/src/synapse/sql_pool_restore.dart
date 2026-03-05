// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlPoolRestore {
  /// Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String> pointInTime;
  /// The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
  final pulumi.Input<String> sourceDatabaseId;

  /// Creates a new [SqlPoolRestore].
  /// [pointInTime] Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
  /// [sourceDatabaseId] The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
  SqlPoolRestore({
    required this.pointInTime,
    required this.sourceDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTime': pointInTime,
      'sourceDatabaseId': sourceDatabaseId,
    };
  }

  factory SqlPoolRestore.fromMap(Map<String, dynamic> map) {
    return SqlPoolRestore(
      pointInTime: pulumi.Input.fromValue(map['pointInTime'] as String),
      sourceDatabaseId: pulumi.Input.fromValue(map['sourceDatabaseId'] as String),
    );
  }
}

