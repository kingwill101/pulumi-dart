// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overhead structure represents the resource overhead associated with running a pod.
class OverheadNodeK8sIoV1alpha1 {
  /// PodFixed represents the fixed resource overhead associated with running a pod.
  final pulumi.Input<Map<String, String>?>? podFixed;

  /// Creates a new [OverheadNodeK8sIoV1alpha1].
  /// [podFixed] PodFixed represents the fixed resource overhead associated with running a pod.
  const OverheadNodeK8sIoV1alpha1({
    this.podFixed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podFixed': ?podFixed,
    };
  }

  factory OverheadNodeK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return OverheadNodeK8sIoV1alpha1(
      podFixed: (() { final guardedValue = map['podFixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
