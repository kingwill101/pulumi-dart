// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overhead structure represents the resource overhead associated with running a pod.
class OverheadPatchNodeK8sIoV1beta1 {
  /// PodFixed represents the fixed resource overhead associated with running a pod.
  final pulumi.Input<Map<String, String>>? podFixed;

  /// Creates a new [OverheadPatchNodeK8sIoV1beta1].
  /// [podFixed] PodFixed represents the fixed resource overhead associated with running a pod.
  const OverheadPatchNodeK8sIoV1beta1({
    this.podFixed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podFixed': ?podFixed,
    };
  }

  factory OverheadPatchNodeK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return OverheadPatchNodeK8sIoV1beta1(
      podFixed: (() { final guardedValue = map['podFixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

