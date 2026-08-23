// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_get_signal_rshared_private_link_resource_args_doc}
/// Arguments for getSignalRSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_get_signal_rshared_private_link_resource_args_doc}
class GetSignalRSharedPrivateLinkResourceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The name of the shared private link resource.
  final pulumi.Input<String> sharedPrivateLinkResourceName;

  /// Creates a new [GetSignalRSharedPrivateLinkResourceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource.
  const GetSignalRSharedPrivateLinkResourceArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.sharedPrivateLinkResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sharedPrivateLinkResourceName': sharedPrivateLinkResourceName,
    };
  }

  factory GetSignalRSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalRSharedPrivateLinkResourceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      sharedPrivateLinkResourceName: pulumi.Input.fromValue(map['sharedPrivateLinkResourceName'] as String),
    );
  }
}
