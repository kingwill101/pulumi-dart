// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagementServerNetwork {
  /// Network with format `projects/{{project_id}}/global/networks/{{network_id}}`
  final pulumi.Input<String> network;
  /// Type of Network peeringMode
  /// Default value is `PRIVATE_SERVICE_ACCESS`.
  /// Possible values are: `PRIVATE_SERVICE_ACCESS`.
  final pulumi.Input<String>? peeringMode;

  /// Creates a new [ManagementServerNetwork].
  /// [network] Network with format `projects/{{project_id}}/global/networks/{{network_id}}`
  /// [peeringMode] Type of Network peeringMode
  ManagementServerNetwork({
    required this.network,
    this.peeringMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'peeringMode': ?peeringMode,
    };
  }

  factory ManagementServerNetwork.fromMap(Map<String, dynamic> map) {
    return ManagementServerNetwork(
      network: (map['network'] as String).input(),
      peeringMode: map['peeringMode'] == null ? null : (map['peeringMode'] as String).input(),
    );
  }
}

