// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'persistent_volume_claim_spec_patch.dart';

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
class PersistentVolumeClaimTemplatePatch {
  /// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  final pulumi.Input<PersistentVolumeClaimSpecPatch?>? spec;

  /// Creates a new [PersistentVolumeClaimTemplatePatch].
  /// [metadata] May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  const PersistentVolumeClaimTemplatePatch({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<PersistentVolumeClaimSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory PersistentVolumeClaimTemplatePatch.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimTemplatePatch(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistentVolumeClaimSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
