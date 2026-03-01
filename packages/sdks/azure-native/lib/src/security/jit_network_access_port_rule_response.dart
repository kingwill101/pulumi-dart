// ignore_for_file: unused_element, unnecessary_cast


class JitNetworkAccessPortRuleResponse {
  /// Mutually exclusive with the "allowedSourceAddressPrefixes" parameter. Should be an IP address or CIDR, for example "192.168.0.3" or "192.168.0.0/16".
  final String? allowedSourceAddressPrefix;
  /// Mutually exclusive with the "allowedSourceAddressPrefix" parameter.
  final List<String>? allowedSourceAddressPrefixes;
  /// Maximum duration requests can be made for. In ISO 8601 duration format. Minimum 5 minutes, maximum 1 day
  final String maxRequestAccessDuration;
  final int number;
  final String protocol;

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
      allowedSourceAddressPrefix: map['allowedSourceAddressPrefix'] == null ? null : map['allowedSourceAddressPrefix'] as String,
      allowedSourceAddressPrefixes: map['allowedSourceAddressPrefixes'] == null ? null : (map['allowedSourceAddressPrefixes'] as List).cast<String>(),
      maxRequestAccessDuration: map['maxRequestAccessDuration'] as String,
      number: map['number'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

