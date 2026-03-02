// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration used in this region as primary, and other regions as backup.
class PrimaryRegionProperties {
  /// The allowed source IP addresses or CIDR ranges for media
  final pulumi.Input<List<String>>? allowedMediaSourceAddressPrefixes;
  /// The allowed source IP addresses or CIDR ranges for signaling
  final pulumi.Input<List<String>>? allowedSignalingSourceAddressPrefixes;
  /// IP address to use to contact the ESRP from this region
  final pulumi.Input<List<String>>? esrpAddresses;
  /// IP address to use to contact the operator network from this region
  final pulumi.Input<List<String>> operatorAddresses;

  /// Creates a new [PrimaryRegionProperties].
  /// [allowedMediaSourceAddressPrefixes] The allowed source IP addresses or CIDR ranges for media
  /// [allowedSignalingSourceAddressPrefixes] The allowed source IP addresses or CIDR ranges for signaling
  /// [esrpAddresses] IP address to use to contact the ESRP from this region
  /// [operatorAddresses] IP address to use to contact the operator network from this region
  PrimaryRegionProperties({
    this.allowedMediaSourceAddressPrefixes,
    this.allowedSignalingSourceAddressPrefixes,
    this.esrpAddresses,
    required this.operatorAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMediaSourceAddressPrefixes': ?allowedMediaSourceAddressPrefixes,
      'allowedSignalingSourceAddressPrefixes': ?allowedSignalingSourceAddressPrefixes,
      'esrpAddresses': ?esrpAddresses,
      'operatorAddresses': operatorAddresses,
    };
  }

  factory PrimaryRegionProperties.fromMap(Map<String, dynamic> map) {
    return PrimaryRegionProperties(
      allowedMediaSourceAddressPrefixes: map['allowedMediaSourceAddressPrefixes'] == null ? null : ((map['allowedMediaSourceAddressPrefixes'] as List).cast<String>()).input(),
      allowedSignalingSourceAddressPrefixes: map['allowedSignalingSourceAddressPrefixes'] == null ? null : ((map['allowedSignalingSourceAddressPrefixes'] as List).cast<String>()).input(),
      esrpAddresses: map['esrpAddresses'] == null ? null : ((map['esrpAddresses'] as List).cast<String>()).input(),
      operatorAddresses: ((map['operatorAddresses'] as List).cast<String>()).input(),
    );
  }
}

