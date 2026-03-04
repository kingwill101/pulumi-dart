// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of the API Bridge.
class ApiBridgeProperties {
  /// The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  final pulumi.Input<List<String>>? allowedAddressPrefixes;

  /// The activation state of the API Bridge for this Communications Gateway
  final pulumi.Input<String>? configureApiBridge;

  /// Creates a new [ApiBridgeProperties].
  /// [allowedAddressPrefixes] The allowed source IP addresses or CIDR ranges for accessing the API Bridge
  /// [configureApiBridge] The activation state of the API Bridge for this Communications Gateway
  ApiBridgeProperties({this.allowedAddressPrefixes, this.configureApiBridge});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddressPrefixes': ?allowedAddressPrefixes,
      'configureApiBridge': ?configureApiBridge,
    };
  }

  factory ApiBridgeProperties.fromMap(Map<String, dynamic> map) {
    return ApiBridgeProperties(
      allowedAddressPrefixes: (() {
        final guardedValue = map['allowedAddressPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      configureApiBridge: (() {
        final guardedValue = map['configureApiBridge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
