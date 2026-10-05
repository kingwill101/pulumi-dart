// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_cloud_identity_info_response.dart';

/// Result data returned by getChannelPartnerLink.
class GetChannelPartnerLinkResult {
  /// Cloud Identity info of the channel partner (IR).
  final GoogleCloudChannelV1CloudIdentityInfoResponse? channelPartnerCloudIdentityInfo;
  /// Timestamp of when the channel partner link is created.
  final String? createTime;
  /// URI of the web page where partner accepts the link invitation.
  final String? inviteLinkUri;
  /// State of the channel partner link.
  final String? linkState;
  /// Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.
  final String? name;
  /// Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.
  final String? publicId;
  /// Cloud Identity ID of the linked reseller.
  final String? resellerCloudIdentityId;
  /// Timestamp of when the channel partner link is updated.
  final String? updateTime;

  /// Creates a new [GetChannelPartnerLinkResult].
  /// [channelPartnerCloudIdentityInfo] Cloud Identity info of the channel partner (IR).
  /// [createTime] Timestamp of when the channel partner link is created.
  /// [inviteLinkUri] URI of the web page where partner accepts the link invitation.
  /// [linkState] State of the channel partner link.
  /// [name] Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.
  /// [publicId] Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.
  /// [resellerCloudIdentityId] Cloud Identity ID of the linked reseller.
  /// [updateTime] Timestamp of when the channel partner link is updated.
  const GetChannelPartnerLinkResult({
    this.channelPartnerCloudIdentityInfo,
    this.createTime,
    this.inviteLinkUri,
    this.linkState,
    this.name,
    this.publicId,
    this.resellerCloudIdentityId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelPartnerCloudIdentityInfo': ?channelPartnerCloudIdentityInfo?.toMap(),
      'createTime': ?createTime,
      'inviteLinkUri': ?inviteLinkUri,
      'linkState': ?linkState,
      'name': ?name,
      'publicId': ?publicId,
      'resellerCloudIdentityId': ?resellerCloudIdentityId,
      'updateTime': ?updateTime,
    };
  }

  factory GetChannelPartnerLinkResult.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerLinkResult(
      channelPartnerCloudIdentityInfo: (() { final guardedValue = map['channelPartnerCloudIdentityInfo']; if (guardedValue == null) return null; return GoogleCloudChannelV1CloudIdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inviteLinkUri: (() { final guardedValue = map['inviteLinkUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkState: (() { final guardedValue = map['linkState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicId: (() { final guardedValue = map['publicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resellerCloudIdentityId: (() { final guardedValue = map['resellerCloudIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
