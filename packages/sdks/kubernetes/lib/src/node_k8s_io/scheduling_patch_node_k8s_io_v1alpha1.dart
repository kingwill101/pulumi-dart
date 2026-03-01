// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/toleration_patch.dart';

/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
class SchedulingPatchNodeK8sIoV1alpha1 {
  /// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  final Map<String, String>? nodeSelector;
  /// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  final List<TolerationPatch>? tolerations;

  /// Creates a new [SchedulingPatchNodeK8sIoV1alpha1].
  /// [nodeSelector] nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  /// [tolerations] tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  SchedulingPatchNodeK8sIoV1alpha1({
    this.nodeSelector,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelector': ?nodeSelector,
      'tolerations': ?tolerations == null ? null : pulumi.Input.encodeList<TolerationPatch, Map<String, dynamic>>(tolerations!, (value) => value.toMap()),
    };
  }

  factory SchedulingPatchNodeK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SchedulingPatchNodeK8sIoV1alpha1(
      nodeSelector: map['nodeSelector'] == null ? null : (map['nodeSelector'] as Map).cast<String, String>(),
      tolerations: map['tolerations'] == null ? null : pulumi.Input.decodeList<TolerationPatch>(map['tolerations'], (value) => TolerationPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

