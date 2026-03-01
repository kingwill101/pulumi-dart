// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'persistent_volume_claim_spec_patch.dart';

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
class PersistentVolumeClaimTemplatePatch {
  /// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMetaPatch? metadata;
  /// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  final PersistentVolumeClaimSpecPatch? spec;

  /// Creates a new [PersistentVolumeClaimTemplatePatch].
  /// [metadata] May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  PersistentVolumeClaimTemplatePatch({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory PersistentVolumeClaimTemplatePatch.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimTemplatePatch(
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : PersistentVolumeClaimSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

