// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [PRIVATE FIELD] Config for pod CIDR size overprovisioning.
class PodCIDROverprovisionConfig {
  /// Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  final pulumi.Input<bool>? disable;

  /// Creates a new [PodCIDROverprovisionConfig].
  /// [disable] Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by default.
  const PodCIDROverprovisionConfig({
    this.disable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
    };
  }

  factory PodCIDROverprovisionConfig.fromMap(Map<String, dynamic> map) {
    return PodCIDROverprovisionConfig(
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

