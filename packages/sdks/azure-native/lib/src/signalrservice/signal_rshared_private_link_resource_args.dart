// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_signal_rshared_private_link_resource_args_doc}
/// The set of arguments for SignalRSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rshared_private_link_resource_args_doc}
class SignalRSharedPrivateLinkResourceArgs {
  /// The group id from the provider of resource the shared private link resource is for
  final pulumi.Input<String> groupId;
  /// The resource id of the resource the shared private link resource is for
  final pulumi.Input<String> privateLinkResourceId;
  /// The request message for requesting approval of the shared private link resource
  final pulumi.Input<String?>? requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The name of the shared private link resource.
  final pulumi.Input<String?>? sharedPrivateLinkResourceName;

  /// Creates a new [SignalRSharedPrivateLinkResourceArgs].
  /// [groupId] The group id from the provider of resource the shared private link resource is for
  /// [privateLinkResourceId] The resource id of the resource the shared private link resource is for
  /// [requestMessage] The request message for requesting approval of the shared private link resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource.
  const SignalRSharedPrivateLinkResourceArgs({
    required this.groupId,
    required this.privateLinkResourceId,
    this.requestMessage,
    required this.resourceGroupName,
    required this.resourceName,
    this.sharedPrivateLinkResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'privateLinkResourceId': privateLinkResourceId,
      'requestMessage': ?requestMessage,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sharedPrivateLinkResourceName': ?sharedPrivateLinkResourceName,
    };
  }

  factory SignalRSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SignalRSharedPrivateLinkResourceArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      privateLinkResourceId: pulumi.Input.fromValue(map['privateLinkResourceId'] as String),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      sharedPrivateLinkResourceName: (() { final guardedValue = map['sharedPrivateLinkResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
