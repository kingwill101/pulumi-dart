// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_base_blob_response.dart';
import 'management_policy_snap_shot_response.dart';
import 'management_policy_version_response.dart';

/// Actions are applied to the filtered blobs when the execution condition is met.
class ManagementPolicyActionResponse {
  /// The management policy action for base blob
  final pulumi.Input<ManagementPolicyBaseBlobResponse>? baseBlob;
  /// The management policy action for snapshot
  final pulumi.Input<ManagementPolicySnapShotResponse>? snapshot;
  /// The management policy action for version
  final pulumi.Input<ManagementPolicyVersionResponse>? version;

  /// Creates a new [ManagementPolicyActionResponse].
  /// [baseBlob] The management policy action for base blob
  /// [snapshot] The management policy action for snapshot
  /// [version] The management policy action for version
  const ManagementPolicyActionResponse({
    this.baseBlob,
    this.snapshot,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlob': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyBaseBlobResponse, Map<String, dynamic>>(baseBlob, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<ManagementPolicySnapShotResponse, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'version': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyVersionResponse, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyActionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyActionResponse(
      baseBlob: (() { final guardedValue = map['baseBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyBaseBlobResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicySnapShotResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

