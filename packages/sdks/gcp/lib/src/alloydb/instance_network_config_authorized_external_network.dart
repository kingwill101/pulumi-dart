// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkConfigAuthorizedExternalNetwork {
  /// CIDR range for one authorized network of the instance.
  final pulumi.Input<String>? cidrRange;

  /// Creates a new [InstanceNetworkConfigAuthorizedExternalNetwork].
  /// [cidrRange] CIDR range for one authorized network of the instance.
  const InstanceNetworkConfigAuthorizedExternalNetwork({
    this.cidrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': ?cidrRange,
    };
  }

  factory InstanceNetworkConfigAuthorizedExternalNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkConfigAuthorizedExternalNetwork(
      cidrRange: (() { final guardedValue = map['cidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

