// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterConfidentialComputing {
  /// Should the SGX quote helper be enabled?
  final pulumi.Input<bool> sgxQuoteHelperEnabled;

  /// Creates a new [KubernetesClusterConfidentialComputing].
  /// [sgxQuoteHelperEnabled] Should the SGX quote helper be enabled?
  KubernetesClusterConfidentialComputing({
    required this.sgxQuoteHelperEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sgxQuoteHelperEnabled': sgxQuoteHelperEnabled,
    };
  }

  factory KubernetesClusterConfidentialComputing.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterConfidentialComputing(
      sgxQuoteHelperEnabled: pulumi.Input.fromValue(map['sgxQuoteHelperEnabled'] as bool),
    );
  }
}

