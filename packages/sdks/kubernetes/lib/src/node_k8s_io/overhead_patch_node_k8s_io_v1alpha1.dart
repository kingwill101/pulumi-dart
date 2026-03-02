// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overhead structure represents the resource overhead associated with running a pod.
class OverheadPatchNodeK8sIoV1alpha1 {
  /// PodFixed represents the fixed resource overhead associated with running a pod.
  final pulumi.Input<Map<String, String>>? podFixed;

  /// Creates a new [OverheadPatchNodeK8sIoV1alpha1].
  /// [podFixed] PodFixed represents the fixed resource overhead associated with running a pod.
  OverheadPatchNodeK8sIoV1alpha1({
    this.podFixed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podFixed': ?podFixed,
    };
  }

  factory OverheadPatchNodeK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return OverheadPatchNodeK8sIoV1alpha1(
      podFixed: map['podFixed'] == null ? null : ((map['podFixed']! as Map).cast<String, String>()).input(),
    );
  }
}

