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
  const SyncGroupState({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSyncId: (() { final guardedValue = map['storageSyncId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

