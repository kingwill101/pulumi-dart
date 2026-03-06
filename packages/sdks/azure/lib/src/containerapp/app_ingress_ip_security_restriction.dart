// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppIngressIpSecurityRestriction {
  /// The IP-filter action. `Allow` or `Deny`.
  ///
  /// &gt; **Note:** The `action` types in an all `ip_security_restriction` blocks must be the same for the `ingress`, mixing `Allow` and `Deny` rules is not currently supported by the service.
  final pulumi.Input<String> action;
  /// Describe the IP restriction rule that is being sent to the container-app.
  final pulumi.Input<String>? description;
  /// The incoming IP address or range of IP addresses (in CIDR notation).
  final pulumi.Input<String> ipAddressRange;
  /// Name for the IP restriction rule.
  final pulumi.Input<String> name;

  /// Creates a new [AppIngressIpSecurityRestriction].
  /// [action] The IP-filter action. `Allow` or `Deny`.
  /// [description] Describe the IP restriction rule that is being sent to the container-app.
  /// [ipAddressRange] The incoming IP address or range of IP addresses (in CIDR notation).
  /// [name] Name for the IP restriction rule.
  const AppIngressIpSecurityRestriction({
    required this.action,
    this.description,
    required this.ipAddressRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'ipAddressRange': ipAddressRange,
      'name': name,
    };
  }

  factory AppIngressIpSecurityRestriction.fromMap(Map<String, dynamic> map) {
    return AppIngressIpSecurityRestriction(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressRange: pulumi.Input.fromValue(map['ipAddressRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

