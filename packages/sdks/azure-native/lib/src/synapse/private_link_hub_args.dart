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
    pulumi.Output<String>? location,
    pulumi.Output<String>? privateLinkHubName,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      privateLinkHubName = pulumi.Input.asOptionalInput<String>(privateLinkHubName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateLinkHubName: map['privateLinkHubName'] == null ? null : pulumi.Output.create<String>(map['privateLinkHubName'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

