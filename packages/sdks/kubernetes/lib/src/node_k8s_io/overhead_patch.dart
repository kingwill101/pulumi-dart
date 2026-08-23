// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Overhead structure represents the resource overhead associated with running a pod.
class OverheadPatch {
  /// podFixed represents the fixed resource overhead associated with running a pod.
  final pulumi.Input<Map<String, String>>? podFixed;

  /// Creates a new [OverheadPatch].
  /// [podFixed] podFixed represents the fixed resource overhead associated with running a pod.
  const OverheadPatch({
    this.podFixed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podFixed': ?podFixed,
    };
  }

  factory OverheadPatch.fromMap(Map<String, dynamic> map) {
    return OverheadPatch(
      podFixed: (() { final guardedValue = map['podFixed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
