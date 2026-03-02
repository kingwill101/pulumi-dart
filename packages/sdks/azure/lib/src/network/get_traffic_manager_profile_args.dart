// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_traffic_manager_profile_get_traffic_manager_profile_args_doc}
/// Arguments for getTrafficManagerProfile.
/// {@endtemplate}
/// {@macro pulumi_network_get_traffic_manager_profile_get_traffic_manager_profile_args_doc}
class GetTrafficManagerProfileArgs {
  /// Specifies the name of the Traffic Manager Profile.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Traffic Manager Profile is located in.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates whether Traffic View is enabled for the Traffic Manager profile.
  final pulumi.Input<bool>? trafficViewEnabled;

  /// Creates a new [GetTrafficManagerProfileArgs].
  /// [name] Specifies the name of the Traffic Manager Profile.
  /// [resourceGroupName] Specifies the name of the resource group the Traffic Manager Profile is located in.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trafficViewEnabled] Indicates whether Traffic View is enabled for the Traffic Manager profile.
  GetTrafficManagerProfileArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
    this.trafficViewEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trafficViewEnabled': ?trafficViewEnabled,
    };
  }

  factory GetTrafficManagerProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerProfileArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficViewEnabled: map['trafficViewEnabled'] == null ? null : (map['trafficViewEnabled'] as bool).input(),
    );
  }
}

