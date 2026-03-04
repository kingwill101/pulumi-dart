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
  /// &gt; **Note:** The available sub resource can be retrieved by using `azure.webpubsub.getPrivateLinkResource` data source.
  final pulumi.Input<String>? subresourceName;

  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The sub resource name should match with the type of the target resource id that's being specified.
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
    this.name,
    this.requestMessage,
    this.status,
    this.subresourceName,
    this.targetResourceId,
    this.webPubsubId,
  });

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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestMessage: (() {
        final guardedValue = map['requestMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subresourceName: (() {
        final guardedValue = map['subresourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webPubsubId: (() {
        final guardedValue = map['webPubsubId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
