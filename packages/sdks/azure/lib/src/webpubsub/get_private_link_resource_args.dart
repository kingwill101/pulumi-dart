// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_private_link_resource_get_private_link_resource_args_doc}
/// Arguments for getPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_private_link_resource_get_private_link_resource_args_doc}
class GetPrivateLinkResourceArgs {
  /// The ID of an existing Web Pubsub Resource which Private Link Resource should be retrieved for.
  final pulumi.Input<String> webPubsubId;

  /// Creates a new [GetPrivateLinkResourceArgs].
  /// [webPubsubId] The ID of an existing Web Pubsub Resource which Private Link Resource should be retrieved for.
  GetPrivateLinkResourceArgs({
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webPubsubId': webPubsubId,
    };
  }

  factory GetPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkResourceArgs(
      webPubsubId: (map['webPubsubId'] as String).input(),
    );
  }
}

