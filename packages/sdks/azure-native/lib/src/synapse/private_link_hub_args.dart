// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_private_link_hub_args_doc}
/// The set of arguments for PrivateLinkHub.
/// {@endtemplate}
/// {@macro pulumi_synapse_private_link_hub_args_doc}
class PrivateLinkHubArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the privateLinkHub
  final pulumi.Input<String>? privateLinkHubName;
  /// PrivateLinkHub provisioning state
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateLinkHubArgs].
  /// [location] The geo-location where the resource lives
  /// [privateLinkHubName] Name of the privateLinkHub
  /// [provisioningState] PrivateLinkHub provisioning state
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PrivateLinkHubArgs({
    this.location,
    this.privateLinkHubName,
    this.provisioningState,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'privateLinkHubName': ?privateLinkHubName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateLinkHubArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLinkHubArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      privateLinkHubName: map['privateLinkHubName'] == null ? null : (map['privateLinkHubName'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

