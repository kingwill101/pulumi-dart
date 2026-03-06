// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamNetwork {
  /// Required. Network name is of the format:
  /// `projects/{project}/global/networks/{network}`
  final pulumi.Input<String> name;

  /// Creates a new [SecurityGatewayApplicationUpstreamNetwork].
  /// [name] Required. Network name is of the format:
  const SecurityGatewayApplicationUpstreamNetwork({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory SecurityGatewayApplicationUpstreamNetwork.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamNetwork(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

