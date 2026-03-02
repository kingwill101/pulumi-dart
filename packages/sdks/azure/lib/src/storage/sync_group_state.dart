// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SyncGroup resources.
class SyncGroupState {
  /// The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created.
  final pulumi.Input<String>? storageSyncId;

  /// Creates a new [SyncGroupState].
  /// [name] The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created.
  /// [storageSyncId] The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created.
  SyncGroupState({
    this.name,
    this.storageSyncId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'storageSyncId': ?storageSyncId,
    };
  }

  factory SyncGroupState.fromMap(Map<String, dynamic> map) {
    return SyncGroupState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageSyncId: map['storageSyncId'] == null ? null : (map['storageSyncId'] as String).input(),
    );
  }
}

