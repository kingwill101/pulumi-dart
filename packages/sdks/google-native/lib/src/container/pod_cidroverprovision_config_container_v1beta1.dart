// ignore_for_file: unused_element, unnecessary_cast


/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfigContainerV1beta1 {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final bool? disable;

  /// Creates a new [PodCIDROverprovisionConfigContainerV1beta1].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  PodCIDROverprovisionConfigContainerV1beta1({
    this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
    };
  }

  factory PodCIDROverprovisionConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfigContainerV1beta1(
      disable: map['disable'] == null ? null : map['disable'] as bool,
    );
  }
}

