// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_private_link_hub_args_doc}
/// Arguments for getPrivateLinkHub.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_private_link_hub_args_doc}
class GetPrivateLinkHubArgs {
  /// Name of the privateLinkHub
  final pulumi.Input<String> privateLinkHubName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateLinkHubArgs].
  /// [privateLinkHubName] Name of the privateLinkHub
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateLinkHubArgs({
    required this.privateLinkHubName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkHubName': privateLinkHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateLinkHubArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkHubArgs(
      privateLinkHubName: pulumi.Input.fromValue(
        map['privateLinkHubName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
