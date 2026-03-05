// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/toleration.dart';

/// Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
class SchedulingNodeK8sIoV1beta1 {
  /// nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  final pulumi.Input<Map<String, String>>? nodeSelector;
  /// tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  final pulumi.Input<List<Toleration>>? tolerations;

  /// Creates a new [SchedulingNodeK8sIoV1beta1].
  /// [nodeSelector] nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
  /// [tolerations] tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
  SchedulingNodeK8sIoV1beta1({
    this.nodeSelector,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeSelector': ?nodeSelector,
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<Toleration>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<Toleration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchedulingNodeK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SchedulingNodeK8sIoV1beta1(
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tolerations: (() { final guardedValue = map['tolerations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Toleration>(guardedValue, (value) => Toleration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

