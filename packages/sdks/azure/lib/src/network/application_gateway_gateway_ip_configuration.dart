// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayGatewayIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Name of this Gateway IP Configuration.
  final pulumi.Input<String> name;
  /// The ID of the Subnet which the Application Gateway should be connected to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ApplicationGatewayGatewayIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of this Gateway IP Configuration.
  /// [subnetId] The ID of the Subnet which the Application Gateway should be connected to.
  ApplicationGatewayGatewayIpConfiguration({
    this.id,
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'subnetId': subnetId,
    };
  }

  factory ApplicationGatewayGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGatewayIpConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

