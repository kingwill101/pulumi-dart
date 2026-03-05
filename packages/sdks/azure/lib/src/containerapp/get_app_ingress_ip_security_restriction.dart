// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppIngressIpSecurityRestriction {
  /// The IP-filter action.
  final pulumi.Input<String> action;
  /// Description of the IP restriction rule that is being sent to the container-app.
  final pulumi.Input<String> description;
  /// CIDR notation that matches the incoming IP address.
  final pulumi.Input<String> ipAddressRange;
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// Creates a new [GetAppIngressIpSecurityRestriction].
  /// [action] The IP-filter action.
  /// [description] Description of the IP restriction rule that is being sent to the container-app.
  /// [ipAddressRange] CIDR notation that matches the incoming IP address.
  /// [name] The name of the Container App.
  GetAppIngressIpSecurityRestriction({
    required this.action,
    required this.description,
    required this.ipAddressRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'ipAddressRange': ipAddressRange,
      'name': name,
    };
  }

  factory GetAppIngressIpSecurityRestriction.fromMap(Map<String, dynamic> map) {
    return GetAppIngressIpSecurityRestriction(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ipAddressRange: pulumi.Input.fromValue(map['ipAddressRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

