// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedPrivateLinkResource resources.
class SharedPrivateLinkResourceState {
  /// Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  final pulumi.Input<String>? status;
  /// Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The available sub resource can be retrieved by using `azure.webpubsub.getPrivateLinkResource` data source.
  final pulumi.Input<String>? subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  final pulumi.Input<String>? targetResourceId;
  /// Specify the id of the Web Pubsub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? webPubsubId;

  /// Creates a new [SharedPrivateLinkResourceState].
  /// [name] Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [status] The status of a private endpoint connection. Possible values are Pending, Approved, Rejected or Disconnected.
  /// [subresourceName] Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  /// [webPubsubId] Specify the id of the Web Pubsub. Changing this forces a new resource to be created.
  SharedPrivateLinkResourceState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? requestMessage,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subresourceName,
    pulumi.Output<String>? targetResourceId,
    pulumi.Output<String>? webPubsubId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      status = pulumi.Input.asOptionalInput<String>(status),
      subresourceName = pulumi.Input.asOptionalInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      webPubsubId = pulumi.Input.asOptionalInput<String>(webPubsubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'status': ?status,
      'subresourceName': ?subresourceName,
      'targetResourceId': ?targetResourceId,
      'webPubsubId': ?webPubsubId,
    };
  }

  factory SharedPrivateLinkResourceState.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subresourceName: map['subresourceName'] == null ? null : pulumi.Output.create<String>(map['subresourceName'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      webPubsubId: map['webPubsubId'] == null ? null : pulumi.Output.create<String>(map['webPubsubId'] as String),
    );
  }
}

