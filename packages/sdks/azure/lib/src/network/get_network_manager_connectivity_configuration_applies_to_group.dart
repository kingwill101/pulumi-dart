// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkManagerConnectivityConfigurationAppliesToGroup {
  /// Whether global mesh is supported.
  final pulumi.Input<bool> globalMeshEnabled;
  /// The group connectivity type.
  final pulumi.Input<String> groupConnectivity;
  /// The ID of the Network Manager Network Group.
  final pulumi.Input<String> networkGroupId;
  /// Whether hub gateway is used.
  final pulumi.Input<bool> useHubGateway;

  /// Creates a new [GetNetworkManagerConnectivityConfigurationAppliesToGroup].
  /// [globalMeshEnabled] Whether global mesh is supported.
  /// [groupConnectivity] The group connectivity type.
  /// [networkGroupId] The ID of the Network Manager Network Group.
  /// [useHubGateway] Whether hub gateway is used.
  const GetNetworkManagerConnectivityConfigurationAppliesToGroup({
    required this.globalMeshEnabled,
    required this.groupConnectivity,
    required this.networkGroupId,
    required this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalMeshEnabled': globalMeshEnabled,
      'groupConnectivity': groupConnectivity,
      'networkGroupId': networkGroupId,
      'useHubGateway': useHubGateway,
    };
  }

  factory GetNetworkManagerConnectivityConfigurationAppliesToGroup.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerConnectivityConfigurationAppliesToGroup(
      globalMeshEnabled: pulumi.Input.fromValue(map['globalMeshEnabled'] as bool),
      groupConnectivity: pulumi.Input.fromValue(map['groupConnectivity'] as String),
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
      useHubGateway: pulumi.Input.fromValue(map['useHubGateway'] as bool),
    );
  }
}

