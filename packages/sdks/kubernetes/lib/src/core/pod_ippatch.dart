// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodIP represents a single IP address allocated to the pod.
class PodIPPatch {
  /// IP is the IP address assigned to the pod
  final pulumi.Input<String?>? ip;

  /// Creates a new [PodIPPatch].
  /// [ip] IP is the IP address assigned to the pod
  const PodIPPatch({
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
    };
  }

  factory PodIPPatch.fromMap(Map<String, dynamic> map) {
    return PodIPPatch(
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
