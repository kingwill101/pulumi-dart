// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoClusterIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign.
  ///
  /// &gt; **Note:** Required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>> identityIds;
  /// The type of managed identity to assign. Possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [MongoClusterIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign.
  /// [type] The type of managed identity to assign. Possible value is `UserAssigned`.
  MongoClusterIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory MongoClusterIdentity.fromMap(Map<String, dynamic> map) {
    return MongoClusterIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

