// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity.dart';
import 'pod_affinity.dart';
import 'pod_anti_affinity.dart';

/// Affinity is a group of affinity scheduling rules.
class Affinity {
  /// Describes node affinity scheduling rules for the pod.
  final pulumi.Input<NodeAffinity>? nodeAffinity;
  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final pulumi.Input<PodAffinity>? podAffinity;
  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final pulumi.Input<PodAntiAffinity>? podAntiAffinity;

  /// Creates a new [Affinity].
  /// [nodeAffinity] Describes node affinity scheduling rules for the pod.
  /// [podAffinity] Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  /// [podAntiAffinity] Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  const Affinity({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinity': ?pulumi.Input.mapOptionalInputValue<NodeAffinity, Map<String, dynamic>>(nodeAffinity, (value) => value.toMap()),
      'podAffinity': ?pulumi.Input.mapOptionalInputValue<PodAffinity, Map<String, dynamic>>(podAffinity, (value) => value.toMap()),
      'podAntiAffinity': ?pulumi.Input.mapOptionalInputValue<PodAntiAffinity, Map<String, dynamic>>(podAntiAffinity, (value) => value.toMap()),
    };
  }

  factory Affinity.fromMap(Map<String, dynamic> map) {
    return Affinity(
      nodeAffinity: (() { final guardedValue = map['nodeAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAffinity: (() { final guardedValue = map['podAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAntiAffinity: (() { final guardedValue = map['podAntiAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodAntiAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
