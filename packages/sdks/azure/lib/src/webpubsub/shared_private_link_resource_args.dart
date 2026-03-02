// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_shared_private_link_resource_shared_private_link_resource_args_doc}
/// The set of arguments for SharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_shared_private_link_resource_shared_private_link_resource_args_doc}
class SharedPrivateLinkResourceArgs {
  /// Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  final pulumi.Input<String>? requestMessage;
  /// Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The available sub resource can be retrieved by using `azure.webpubsub.getPrivateLinkResource` data source.
  final pulumi.Input<String> subresourceName;
  /// Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The sub resource name should match with the type of the target resource id that's being specified.
  final pulumi.Input<String> targetResourceId;
  /// Specify the id of the Web Pubsub. Changing this forces a new resource to be created.
  final pulumi.Input<String> webPubsubId;

  /// Creates a new [SharedPrivateLinkResourceArgs].
  /// [name] Specify the name of the Web Pubsub Shared Private Link Resource. Changing this forces a new resource to be created.
  /// [requestMessage] Specify the request message for requesting approval of the Shared Private Link Enabled Remote Resource.
  /// [subresourceName] Specify the sub resource name which the Web Pubsub Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] Specify the ID of the Shared Private Link Enabled Remote Resource which this Web Pubsub Private Endpoint should be connected to. Changing this forces a new resource to be created.
  /// [webPubsubId] Specify the id of the Web Pubsub. Changing this forces a new resource to be created.
  SharedPrivateLinkResourceArgs({
    this.name,
    this.requestMessage,
    required this.subresourceName,
    required this.targetResourceId,
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'requestMessage': ?requestMessage,
      'subresourceName': subresourceName,
      'targetResourceId': targetResourceId,
      'webPubsubId': webPubsubId,
    };
  }

  factory SharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResourceArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage'] as String).input(),
      subresourceName: (map['subresourceName'] as String).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
      webPubsubId: (map['webPubsubId'] as String).input(),
    );
  }
}

