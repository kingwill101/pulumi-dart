// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayGatewayIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The ID of the subnet the private link configuration is connected to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetApplicationGatewayGatewayIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  GetApplicationGatewayGatewayIpConfiguration({
    required this.id,
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayGatewayIpConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

