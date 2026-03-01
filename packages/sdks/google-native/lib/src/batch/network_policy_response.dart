// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_response.dart';

/// NetworkPolicy describes VM instance network configurations.
class NetworkPolicyResponse {
  /// Network configurations.
  final List<NetworkInterfaceResponse> networkInterfaces;

  /// Creates a new [NetworkPolicyResponse].
  /// [networkInterfaces] Network configurations.
  NetworkPolicyResponse({
    required this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
    };
  }

  factory NetworkPolicyResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyResponse(
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

