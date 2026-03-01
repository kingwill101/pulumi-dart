// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalr_shared_private_link_resource_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_signalr_shared_private_link_resource_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// The id of the Signalr Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> signalrServiceId;
  /// The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  final pulumi.Input<String> subResourceName;
  /// The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `sub_resource_name` should match with the type of the `target_resource_id` that's being specified.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [name] The name of the Signalr Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] The request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [signalrServiceId] The id of the Signalr Service. Changing this forces a new resource to be created.
  /// [subResourceName] The sub resource name which the Signalr Private Endpoint can connect to. Possible values are `sites`, `vault`. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Shared Private Link Enabled Remote Resource which this Signalr Private Endpoint should be connected to. Changing this forces a new resource to be created.
  SharedPrivateLinkResourceArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? requestMessage,
    required pulumi.Output<String> signalrServiceId,
    required pulumi.Output<String> subResourceName,
    required pulumi.Output<String> targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      signalrServiceId = pulumi.Input.asInput<String>(signalrServiceId),
      subResourceName = pulumi.Input.asInput<String>(subResourceName),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'signalrServiceId': signalrServiceId,
      'subResourceName': subResourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      signalrServiceId: pulumi.Output.create<String>(map['signalrServiceId'] as String),
      subResourceName: pulumi.Output.create<String>(map['subResourceName'] as String),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
    );
  }
}

