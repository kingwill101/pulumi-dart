// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_affinity_term.dart';

/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
class WeightedPodAffinityTerm {
  /// Required. A pod affinity term, associated with the corresponding weight.
  final pulumi.Input<PodAffinityTerm> podAffinityTerm;
  /// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  final pulumi.Input<int> weight;

  /// Creates a new [WeightedPodAffinityTerm].
  /// [podAffinityTerm] Required. A pod affinity term, associated with the corresponding weight.
  /// [weight] weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  const WeightedPodAffinityTerm({
    required this.podAffinityTerm,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podAffinityTerm': pulumi.Input.mapInputValue<PodAffinityTerm, Map<String, dynamic>>(podAffinityTerm, (value) => value.toMap()),
      'weight': weight,
    };
  }

  factory WeightedPodAffinityTerm.fromMap(Map<String, dynamic> map) {
    return WeightedPodAffinityTerm(
      podAffinityTerm: pulumi.Input.fromValue(PodAffinityTerm.fromMap((map['podAffinityTerm']! as Map).cast<String, dynamic>())),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
