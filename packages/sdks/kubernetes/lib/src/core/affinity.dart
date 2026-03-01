// ignore_for_file: unused_element, unnecessary_cast

import 'node_affinity.dart';
import 'pod_affinity.dart';
import 'pod_anti_affinity.dart';

/// Affinity is a group of affinity scheduling rules.
class Affinity {
  /// Describes node affinity scheduling rules for the pod.
  final NodeAffinity? nodeAffinity;
  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final PodAffinity? podAffinity;
  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final PodAntiAffinity? podAntiAffinity;

  /// Creates a new [Affinity].
  /// [nodeAffinity] Describes node affinity scheduling rules for the pod.
  /// [podAffinity] Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  /// [podAntiAffinity] Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  Affinity({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinity': ?nodeAffinity == null ? null : nodeAffinity!.toMap(),
      'podAffinity': ?podAffinity == null ? null : podAffinity!.toMap(),
      'podAntiAffinity': ?podAntiAffinity == null ? null : podAntiAffinity!.toMap(),
    };
  }

  factory Affinity.fromMap(Map<String, dynamic> map) {
    return Affinity(
      nodeAffinity: map['nodeAffinity'] == null ? null : NodeAffinity.fromMap((map['nodeAffinity'] as Map).cast<String, dynamic>()),
      podAffinity: map['podAffinity'] == null ? null : PodAffinity.fromMap((map['podAffinity'] as Map).cast<String, dynamic>()),
      podAntiAffinity: map['podAntiAffinity'] == null ? null : PodAntiAffinity.fromMap((map['podAntiAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}

