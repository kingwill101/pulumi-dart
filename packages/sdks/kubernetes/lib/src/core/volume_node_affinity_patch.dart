// ignore_for_file: unused_element, unnecessary_cast

import 'node_selector_patch.dart';

/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
class VolumeNodeAffinityPatch {
  /// required specifies hard node constraints that must be met.
  final NodeSelectorPatch? required;

  /// Creates a new [VolumeNodeAffinityPatch].
  /// [required] required specifies hard node constraints that must be met.
  VolumeNodeAffinityPatch({
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'required': ?required == null ? null : required!.toMap(),
    };
  }

  factory VolumeNodeAffinityPatch.fromMap(Map<String, dynamic> map) {
    return VolumeNodeAffinityPatch(
      required: map['required'] == null ? null : NodeSelectorPatch.fromMap((map['required'] as Map).cast<String, dynamic>()),
    );
  }
}

