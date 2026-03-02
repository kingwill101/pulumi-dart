// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JitNetworkAccessPortRuleResponse {
  /// Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  final pulumi.Input<String>? allowedSourceAddressPrefix;
  /// Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  final pulumi.Input<List<String>>? allowedSourceAddressPrefixes;
  /// Maximum duration requests can be made for. In ISO 8601 duration format. Minimum 5 minutes, maximum 1 day
  final pulumi.Input<String> maxRequestAccessDuration;
  final pulumi.Input<int> number;
  final pulumi.Input<String> protocol;

  /// Creates a new [JitNetworkAccessPortRuleResponse].
  /// [allowedSourceAddressPrefix] Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  /// [allowedSourceAddressPrefixes] Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  /// [maxRequestAccessDuration] Maximum duration requests can be made for. In ISO 8601 duration format. Minimum 5 minutes, maximum 1 day
  /// [number] Required.
  /// [protocol] Required.
  JitNetworkAccessPortRuleResponse({
    this.allowedSourceAddressPrefix,
    this.allowedSourceAddressPrefixes,
    required this.maxRequestAccessDuration,
    required this.number,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSourceAddressPrefix': ?allowedSourceAddressPrefix,
      'allowedSourceAddressPrefixes': ?allowedSourceAddressPrefixes,
      'maxRequestAccessDuration': maxRequestAccessDuration,
      'number': number,
      'protocol': protocol,
    };
  }

  factory JitNetworkAccessPortRuleResponse.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessPortRuleResponse(
      allowedSourceAddressPrefix: map['allowedSourceAddressPrefix'] == null ? null : (map['allowedSourceAddressPrefix']! as String).input(),
      allowedSourceAddressPrefixes: map['allowedSourceAddressPrefixes'] == null ? null : ((map['allowedSourceAddressPrefixes']! as List).cast<String>()).input(),
      maxRequestAccessDuration: (map['maxRequestAccessDuration'] as String).input(),
      number: (map['number'] as int).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

