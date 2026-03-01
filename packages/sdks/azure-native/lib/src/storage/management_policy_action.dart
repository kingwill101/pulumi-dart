// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_base_blob.dart';
import 'management_policy_snap_shot.dart';
import 'management_policy_version.dart';

/// Actions are applied to the filtered blobs when the execution condition is met.
class ManagementPolicyAction {
  /// The management policy action for base blob
  final ManagementPolicyBaseBlob? baseBlob;
  /// The management policy action for snapshot
  final ManagementPolicySnapShot? snapshot;
  /// The management policy action for version
  final ManagementPolicyVersion? version;

  /// Creates a new [ManagementPolicyAction].
  /// [baseBlob] The management policy action for base blob
  /// [snapshot] The management policy action for snapshot
  /// [version] The management policy action for version
  ManagementPolicyAction({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlob': ?baseBlob == null ? null : baseBlob!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'version': ?version == null ? null : version!.toMap(),
    };
  }

  factory ManagementPolicyAction.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyAction(
      baseBlob: map['baseBlob'] == null ? null : ManagementPolicyBaseBlob.fromMap((map['baseBlob'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : ManagementPolicySnapShot.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : ManagementPolicyVersion.fromMap((map['version'] as Map).cast<String, dynamic>()),
    );
  }
}

