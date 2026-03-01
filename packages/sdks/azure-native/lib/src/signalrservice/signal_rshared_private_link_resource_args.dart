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
  final pulumi.Input<String>? requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The name of the shared private link resource.
  final pulumi.Input<String>? sharedPrivateLinkResourceName;

  /// Creates a new [SignalRSharedPrivateLinkResourceArgs].
  /// [groupId] The group id from the provider of resource the shared private link resource is for
  /// [privateLinkResourceId] The resource id of the resource the shared private link resource is for
  /// [requestMessage] The request message for requesting approval of the shared private link resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource.
  SignalRSharedPrivateLinkResourceArgs({
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> privateLinkResourceId,
    pulumi.Output<String>? requestMessage,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? sharedPrivateLinkResourceName,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      privateLinkResourceId = pulumi.Input.asInput<String>(privateLinkResourceId),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      sharedPrivateLinkResourceName = pulumi.Input.asOptionalInput<String>(sharedPrivateLinkResourceName);

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
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      privateLinkResourceId: pulumi.Output.create<String>(map['privateLinkResourceId'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] == null ? null : pulumi.Output.create<String>(map['sharedPrivateLinkResourceName'] as String),
    );
  }
}

