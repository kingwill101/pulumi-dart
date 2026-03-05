// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerConnectivityConfigurationHub {
  /// Specifies the resource ID used as hub in Hub And Spoke topology.
  final pulumi.Input<String> resourceId;
  /// Specifies the resource Type used as hub in Hub And Spoke topology.
  final pulumi.Input<String> resourceType;

  /// Creates a new [NetworkManagerConnectivityConfigurationHub].
  /// [resourceId] Specifies the resource ID used as hub in Hub And Spoke topology.
  /// [resourceType] Specifies the resource Type used as hub in Hub And Spoke topology.
  NetworkManagerConnectivityConfigurationHub({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory NetworkManagerConnectivityConfigurationHub.fromMap(Map<String, dynamic> map) {
    return NetworkManagerConnectivityConfigurationHub(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

