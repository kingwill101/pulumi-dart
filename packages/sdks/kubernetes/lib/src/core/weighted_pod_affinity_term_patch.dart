// ignore_for_file: unused_element, unnecessary_cast

import 'pod_affinity_term_patch.dart';

/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
class WeightedPodAffinityTermPatch {
  /// Required. A pod affinity term, associated with the corresponding weight.
  final PodAffinityTermPatch? podAffinityTerm;
  /// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  final int? weight;

  /// Creates a new [WeightedPodAffinityTermPatch].
  /// [podAffinityTerm] Required. A pod affinity term, associated with the corresponding weight.
  /// [weight] weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  WeightedPodAffinityTermPatch({
    this.podAffinityTerm,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podAffinityTerm': ?podAffinityTerm == null ? null : podAffinityTerm!.toMap(),
      'weight': ?weight,
    };
  }

  factory WeightedPodAffinityTermPatch.fromMap(Map<String, dynamic> map) {
    return WeightedPodAffinityTermPatch(
      podAffinityTerm: map['podAffinityTerm'] == null ? null : PodAffinityTermPatch.fromMap((map['podAffinityTerm'] as Map).cast<String, dynamic>()),
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

