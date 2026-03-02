// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfigResponseContainerV1beta1 {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final pulumi.Input<bool> disable;

  /// Creates a new [PodCIDROverprovisionConfigResponseContainerV1beta1].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  PodCIDROverprovisionConfigResponseContainerV1beta1({
    required this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
    };
  }

  factory PodCIDROverprovisionConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfigResponseContainerV1beta1(
      disable: (map['disable'] as bool).input(),
    );
  }
}

