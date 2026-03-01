// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterConfidentialComputing {
  /// Should the SGX quote helper be enabled?
  final bool sgxQuoteHelperEnabled;

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
      sgxQuoteHelperEnabled: map['sgxQuoteHelperEnabled'] as bool,
    );
  }
}

