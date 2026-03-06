// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuntimeTemplateNetworkSpec {
  /// Enable public internet access for the runtime.
  final pulumi.Input<bool>? enableInternetAccess;
  /// The name of the VPC that this runtime is in.
  final pulumi.Input<String>? network;
  /// The name of the subnetwork that this runtime is in.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [RuntimeTemplateNetworkSpec].
  /// [enableInternetAccess] Enable public internet access for the runtime.
  /// [network] The name of the VPC that this runtime is in.
  /// [subnetwork] The name of the subnetwork that this runtime is in.
  const RuntimeTemplateNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetAccess': ?enableInternetAccess,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory RuntimeTemplateNetworkSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateNetworkSpec(
      enableInternetAccess: (() { final guardedValue = map['enableInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

