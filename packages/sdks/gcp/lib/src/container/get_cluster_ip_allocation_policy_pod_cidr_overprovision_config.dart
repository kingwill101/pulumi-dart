// ignore_for_file: unused_element, unnecessary_cast


class GetClusterIpAllocationPolicyPodCidrOverprovisionConfig {
  final bool disabled;

  /// Creates a new [GetClusterIpAllocationPolicyPodCidrOverprovisionConfig].
  /// [disabled] Required.
  GetClusterIpAllocationPolicyPodCidrOverprovisionConfig({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory GetClusterIpAllocationPolicyPodCidrOverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyPodCidrOverprovisionConfig(
      disabled: map['disabled'] as bool,
    );
  }
}

