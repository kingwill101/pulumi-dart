// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkManagerConnectivityConfigurationAppliesToGroup {
  /// Indicates whether to global mesh is supported for this group. Possible values are `true` and `false`.
  ///
  /// &gt; **Note:** A group can be global only if the `groupConnectivity` is `DirectlyConnected`.
  final pulumi.Input<bool?>? globalMeshEnabled;
  /// Specifies the group connectivity type. Possible values are `None` and `DirectlyConnected`.
  final pulumi.Input<String> groupConnectivity;
  /// Specifies the resource ID of Network Group which the configuration applies to.
  final pulumi.Input<String> networkGroupId;
  /// Indicates whether the hub gateway is used. Possible values are `true` and `false`.
  final pulumi.Input<bool?>? useHubGateway;

  /// Creates a new [NetworkManagerConnectivityConfigurationAppliesToGroup].
  /// [globalMeshEnabled] Indicates whether to global mesh is supported for this group. Possible values are `true` and `false`.
  /// [groupConnectivity] Specifies the group connectivity type. Possible values are `None` and `DirectlyConnected`.
  /// [networkGroupId] Specifies the resource ID of Network Group which the configuration applies to.
  /// [useHubGateway] Indicates whether the hub gateway is used. Possible values are `true` and `false`.
  const NetworkManagerConnectivityConfigurationAppliesToGroup({
    this.globalMeshEnabled,
    required this.groupConnectivity,
    required this.networkGroupId,
    this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalMeshEnabled': ?globalMeshEnabled,
      'groupConnectivity': groupConnectivity,
      'networkGroupId': networkGroupId,
      'useHubGateway': ?useHubGateway,
    };
  }

  factory NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap(Map<String, dynamic> map) {
    return NetworkManagerConnectivityConfigurationAppliesToGroup(
      globalMeshEnabled: (() { final guardedValue = map['globalMeshEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupConnectivity: pulumi.Input.fromValue(map['groupConnectivity'] as String),
      networkGroupId: pulumi.Input.fromValue(map['networkGroupId'] as String),
      useHubGateway: (() { final guardedValue = map['useHubGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
