// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PscConfigResponse {
  /// The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  final pulumi.Input<String> network;

  /// Creates a new [PscConfigResponse].
  /// [network] The network where the IP address of the discovery endpoint will be reserved, in the form of projects/{network_project}/global/networks/{network_id}.
  PscConfigResponse({required this.network});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'network': network};
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
