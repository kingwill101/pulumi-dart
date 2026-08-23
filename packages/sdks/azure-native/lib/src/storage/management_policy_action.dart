// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_base_blob.dart';
import 'management_policy_snap_shot.dart';
import 'management_policy_version.dart';

/// Actions are applied to the filtered blobs when the execution condition is met.
class ManagementPolicyAction {
  /// The management policy action for base blob
  final pulumi.Input<ManagementPolicyBaseBlob>? baseBlob;
  /// The management policy action for snapshot
  final pulumi.Input<ManagementPolicySnapShot>? snapshot;
  /// The management policy action for version
  final pulumi.Input<ManagementPolicyVersion>? version;

  /// Creates a new [ManagementPolicyAction].
  /// [baseBlob] The management policy action for base blob
  /// [snapshot] The management policy action for snapshot
  /// [version] The management policy action for version
  const ManagementPolicyAction({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlob': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyBaseBlob, Map<String, dynamic>>(baseBlob, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<ManagementPolicySnapShot, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyAction.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyAction(
      baseBlob: (() { final guardedValue = map['baseBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyBaseBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicySnapShot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
