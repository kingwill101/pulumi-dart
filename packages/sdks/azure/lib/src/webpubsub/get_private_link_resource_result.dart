// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_link_resource_shared_private_link_resource_type.dart';

/// Result data returned by getPrivateLinkResource.
class GetPrivateLinkResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `sharedPrivateLinkResourceTypes` block as defined below.
  final List<GetPrivateLinkResourceSharedPrivateLinkResourceType> sharedPrivateLinkResourceTypes;
  final String webPubsubId;

  /// Creates a new [GetPrivateLinkResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sharedPrivateLinkResourceTypes] A `sharedPrivateLinkResourceTypes` block as defined below.
  /// [webPubsubId] Required.
  const GetPrivateLinkResourceResult({
    required this.id,
    required this.sharedPrivateLinkResourceTypes,
    required this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sharedPrivateLinkResourceTypes': pulumi.Input.encodeList<GetPrivateLinkResourceSharedPrivateLinkResourceType, Map<String, dynamic>>(sharedPrivateLinkResourceTypes, (value) => value.toMap()),
      'webPubsubId': webPubsubId,
    };
  }

  factory GetPrivateLinkResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkResourceResult(
      id: map['id'] as String,
      sharedPrivateLinkResourceTypes: pulumi.Input.decodeList<GetPrivateLinkResourceSharedPrivateLinkResourceType>(map['sharedPrivateLinkResourceTypes']!, (value) => GetPrivateLinkResourceSharedPrivateLinkResourceType.fromMap((value as Map).cast<String, dynamic>())),
      webPubsubId: map['webPubsubId'] as String,
    );
  }
}
