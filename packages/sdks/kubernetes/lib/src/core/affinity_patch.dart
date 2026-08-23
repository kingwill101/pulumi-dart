// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_affinity_patch.dart';
import 'pod_affinity_patch.dart';
import 'pod_anti_affinity_patch.dart';

/// Affinity is a group of affinity scheduling rules.
class AffinityPatch {
  /// Describes node affinity scheduling rules for the pod.
  final pulumi.Input<NodeAffinityPatch>? nodeAffinity;
  /// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  final pulumi.Input<PodAffinityPatch>? podAffinity;
  /// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  final pulumi.Input<PodAntiAffinityPatch>? podAntiAffinity;

  /// Creates a new [AffinityPatch].
  /// [nodeAffinity] Describes node affinity scheduling rules for the pod.
  /// [podAffinity] Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  /// [podAntiAffinity] Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  const AffinityPatch({
    this.nodeAffinity,
    this.podAffinity,
    this.podAntiAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeAffinity': ?pulumi.Input.mapOptionalInputValue<NodeAffinityPatch, Map<String, dynamic>>(nodeAffinity, (value) => value.toMap()),
      'podAffinity': ?pulumi.Input.mapOptionalInputValue<PodAffinityPatch, Map<String, dynamic>>(podAffinity, (value) => value.toMap()),
      'podAntiAffinity': ?pulumi.Input.mapOptionalInputValue<PodAntiAffinityPatch, Map<String, dynamic>>(podAntiAffinity, (value) => value.toMap()),
    };
  }

  factory AffinityPatch.fromMap(Map<String, dynamic> map) {
    return AffinityPatch(
      nodeAffinity: (() { final guardedValue = map['nodeAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAffinityPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAffinity: (() { final guardedValue = map['podAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodAffinityPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podAntiAffinity: (() { final guardedValue = map['podAntiAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodAntiAffinityPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
