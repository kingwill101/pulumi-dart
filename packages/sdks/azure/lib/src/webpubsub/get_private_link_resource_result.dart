// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_link_resource_shared_private_link_resource_type.dart';

/// Result data returned by getPrivateLinkResource.
class GetPrivateLinkResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `sharedPrivateLinkResourceTypes` block as defined below.
  final List<GetPrivateLinkResourceSharedPrivateLinkResourceType>? sharedPrivateLinkResourceTypes;
  final String? webPubsubId;

  /// Creates a new [GetPrivateLinkResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sharedPrivateLinkResourceTypes] A `sharedPrivateLinkResourceTypes` block as defined below.
  /// [webPubsubId] Optional.
  const GetPrivateLinkResourceResult({
    this.id,
    this.sharedPrivateLinkResourceTypes,
    this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'sharedPrivateLinkResourceTypes': ?(() { final guardedValue = sharedPrivateLinkResourceTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrivateLinkResourceSharedPrivateLinkResourceType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webPubsubId': ?webPubsubId,
    };
  }

  factory GetPrivateLinkResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkResourceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedPrivateLinkResourceTypes: (() { final guardedValue = map['sharedPrivateLinkResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrivateLinkResourceSharedPrivateLinkResourceType>(guardedValue, (value) => GetPrivateLinkResourceSharedPrivateLinkResourceType.fromMap((value as Map).cast<String, dynamic>())); })(),
      webPubsubId: (() { final guardedValue = map['webPubsubId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
