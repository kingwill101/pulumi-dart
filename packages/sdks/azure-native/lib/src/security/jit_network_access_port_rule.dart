// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JitNetworkAccessPortRule {
  /// Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  final pulumi.Input<String>? allowedSourceAddressPrefix;
  /// Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  final pulumi.Input<List<String>>? allowedSourceAddressPrefixes;
  /// Maximum duration requests can be made for. In ISO 8601 duration format. Minimum 5 minutes, maximum 1 day
  final pulumi.Input<String> maxRequestAccessDuration;
  final pulumi.Input<int> number;
  final pulumi.Input<String> protocol;

  /// Creates a new [JitNetworkAccessPortRule].
  /// [allowedSourceAddressPrefix] Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  /// [allowedSourceAddressPrefixes] Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  /// [maxRequestAccessDuration] Maximum duration requests can be made for. In ISO 8601 duration format. Minimum 5 minutes, maximum 1 day
  /// [number] Required.
  /// [protocol] Required.
  JitNetworkAccessPortRule({
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

  factory JitNetworkAccessPortRule.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessPortRule(
      allowedSourceAddressPrefix: (() { final guardedValue = map['allowedSourceAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedSourceAddressPrefixes: (() { final guardedValue = map['allowedSourceAddressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxRequestAccessDuration: pulumi.Input.fromValue(map['maxRequestAccessDuration'] as String),
      number: pulumi.Input.fromValue(map['number'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

