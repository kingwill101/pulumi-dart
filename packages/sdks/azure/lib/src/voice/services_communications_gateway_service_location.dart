// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicesCommunicationsGatewayServiceLocation {
  /// Specifies the allowed source IP address or CIDR ranges for media.
  final pulumi.Input<List<String>>? allowedMediaSourceAddressPrefixes;
  /// Specifies the allowed source IP address or CIDR ranges for signaling.
  final pulumi.Input<List<String>>? allowedSignalingSourceAddressPrefixes;
  /// IP address to use to contact the ESRP from this region.
  ///
  /// !&gt; **Note:** The `esrp_addresses` must be specified for each `service_location` when the`e911_type` is set to `DirectToEsrp`.  The `esrp_addresses` must not be specified for each `service_location` when the`e911_type` is set to `Standard`.
  final pulumi.Input<List<String>>? esrpAddresses;
  /// Specifies the region in which the resources needed for Teams Calling will be deployed.
  final pulumi.Input<String> location;
  /// IP address to use to contact the operator network from this region.
  final pulumi.Input<List<String>> operatorAddresses;

  /// Creates a new [ServicesCommunicationsGatewayServiceLocation].
  /// [allowedMediaSourceAddressPrefixes] Specifies the allowed source IP address or CIDR ranges for media.
  /// [allowedSignalingSourceAddressPrefixes] Specifies the allowed source IP address or CIDR ranges for signaling.
  /// [esrpAddresses] IP address to use to contact the ESRP from this region.
  /// [location] Specifies the region in which the resources needed for Teams Calling will be deployed.
  /// [operatorAddresses] IP address to use to contact the operator network from this region.
  const ServicesCommunicationsGatewayServiceLocation({
    this.allowedMediaSourceAddressPrefixes,
    this.allowedSignalingSourceAddressPrefixes,
    this.esrpAddresses,
    required this.location,
    required this.operatorAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMediaSourceAddressPrefixes': ?allowedMediaSourceAddressPrefixes,
      'allowedSignalingSourceAddressPrefixes': ?allowedSignalingSourceAddressPrefixes,
      'esrpAddresses': ?esrpAddresses,
      'location': location,
      'operatorAddresses': operatorAddresses,
    };
  }

  factory ServicesCommunicationsGatewayServiceLocation.fromMap(Map<String, dynamic> map) {
    return ServicesCommunicationsGatewayServiceLocation(
      allowedMediaSourceAddressPrefixes: (() { final guardedValue = map['allowedMediaSourceAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedSignalingSourceAddressPrefixes: (() { final guardedValue = map['allowedSignalingSourceAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      esrpAddresses: (() { final guardedValue = map['esrpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      operatorAddresses: pulumi.Input.fromValue((map['operatorAddresses'] as List).cast<String>()),
    );
  }
}

