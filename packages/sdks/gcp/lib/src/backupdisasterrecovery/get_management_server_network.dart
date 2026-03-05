// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagementServerNetwork {
  /// Network with format 'projects/{{project_id}}/global/networks/{{network_id}}'
  final pulumi.Input<String> network;
  /// Type of Network peeringMode Default value: "PRIVATE_SERVICE_ACCESS" Possible values: ["PRIVATE_SERVICE_ACCESS"]
  final pulumi.Input<String> peeringMode;

  /// Creates a new [GetManagementServerNetwork].
  /// [network] Network with format 'projects/{{project_id}}/global/networks/{{network_id}}'
  /// [peeringMode] Type of Network peeringMode Default value: "PRIVATE_SERVICE_ACCESS" Possible values: ["PRIVATE_SERVICE_ACCESS"]
  GetManagementServerNetwork({
    required this.network,
    required this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'peeringMode': peeringMode,
    };
  }

  factory GetManagementServerNetwork.fromMap(Map<String, dynamic> map) {
    return GetManagementServerNetwork(
      network: pulumi.Input.fromValue(map['network'] as String),
      peeringMode: pulumi.Input.fromValue(map['peeringMode'] as String),
    );
  }
}

