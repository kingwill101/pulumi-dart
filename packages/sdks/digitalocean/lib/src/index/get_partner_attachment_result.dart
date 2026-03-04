// ignore_for_file: unused_element, unnecessary_cast

import 'get_partner_attachment_bgp.dart';

/// Result data returned by getPartnerAttachment.
class GetPartnerAttachmentResult {
  final GetPartnerAttachmentBgp? bgp;
  final List<String> childrens;
  final int connectionBandwidthInMbps;
  final String createdAt;
  final String id;
  final String naasProvider;
  final String name;
  final String parentUuid;
  final String? redundancyZone;
  final String region;
  final String state;
  final List<String> vpcIds;

  /// Creates a new [GetPartnerAttachmentResult].
  /// [bgp] Optional.
  /// [childrens] Required.
  /// [connectionBandwidthInMbps] Required.
  /// [createdAt] Required.
  /// [id] Required.
  /// [naasProvider] Required.
  /// [name] Required.
  /// [parentUuid] Required.
  /// [redundancyZone] Optional.
  /// [region] Required.
  /// [state] Required.
  /// [vpcIds] Required.
  GetPartnerAttachmentResult({
    this.bgp,
    required this.childrens,
    required this.connectionBandwidthInMbps,
    required this.createdAt,
    required this.id,
    required this.naasProvider,
    required this.name,
    required this.parentUuid,
    this.redundancyZone,
    required this.region,
    required this.state,
    required this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?bgp?.toMap(),
      'childrens': childrens,
      'connectionBandwidthInMbps': connectionBandwidthInMbps,
      'createdAt': createdAt,
      'id': id,
      'naasProvider': naasProvider,
      'name': name,
      'parentUuid': parentUuid,
      'redundancyZone': ?redundancyZone,
      'region': region,
      'state': state,
      'vpcIds': vpcIds,
    };
  }

  factory GetPartnerAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentResult(
      bgp: (() {
        final guardedValue = map['bgp'];
        if (guardedValue == null) return null;
        return GetPartnerAttachmentBgp.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      childrens: (map['childrens'] as List).cast<String>(),
      connectionBandwidthInMbps: map['connectionBandwidthInMbps'] as int,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      naasProvider: map['naasProvider'] as String,
      name: map['name'] as String,
      parentUuid: map['parentUuid'] as String,
      redundancyZone: (() {
        final guardedValue = map['redundancyZone'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      state: map['state'] as String,
      vpcIds: (map['vpcIds'] as List).cast<String>(),
    );
  }
}
