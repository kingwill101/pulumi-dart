// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfigResponse {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final pulumi.Input<bool> disable;

  /// Creates a new [PodCIDROverprovisionConfigResponse].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  PodCIDROverprovisionConfigResponse({required this.disable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disable': disable};
  }

  factory PodCIDROverprovisionConfigResponse.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfigResponse(
      disable: pulumi.Input.fromValue(map['disable'] as bool),
    );
  }
}
