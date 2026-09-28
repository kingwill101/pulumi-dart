// ignore_for_file: unused_element, unnecessary_cast

import 'get_partner_attachment_bgp.dart';

/// Result data returned by getPartnerAttachment.
class GetPartnerAttachmentResult {
  final GetPartnerAttachmentBgp? bgp;
  final List<String>? childrens;
  final int? connectionBandwidthInMbps;
  final String? createdAt;
  final String? id;
  final String? naasProvider;
  final String? name;
  final String? parentUuid;
  final String? redundancyZone;
  final String? region;
  final String? state;
  final List<String>? vpcIds;

  /// Creates a new [GetPartnerAttachmentResult].
  /// [bgp] Optional.
  /// [childrens] Optional.
  /// [connectionBandwidthInMbps] Optional.
  /// [createdAt] Optional.
  /// [id] Optional.
  /// [naasProvider] Optional.
  /// [name] Optional.
  /// [parentUuid] Optional.
  /// [redundancyZone] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [vpcIds] Optional.
  const GetPartnerAttachmentResult({
    this.bgp,
    this.childrens,
    this.connectionBandwidthInMbps,
    this.createdAt,
    this.id,
    this.naasProvider,
    this.name,
    this.parentUuid,
    this.redundancyZone,
    this.region,
    this.state,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?bgp?.toMap(),
      'childrens': ?childrens,
      'connectionBandwidthInMbps': ?connectionBandwidthInMbps,
      'createdAt': ?createdAt,
      'id': ?id,
      'naasProvider': ?naasProvider,
      'name': ?name,
      'parentUuid': ?parentUuid,
      'redundancyZone': ?redundancyZone,
      'region': ?region,
      'state': ?state,
      'vpcIds': ?vpcIds,
    };
  }

  factory GetPartnerAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentResult(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return GetPartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      childrens: (() { final guardedValue = map['childrens']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      connectionBandwidthInMbps: (() { final guardedValue = map['connectionBandwidthInMbps']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      naasProvider: (() { final guardedValue = map['naasProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentUuid: (() { final guardedValue = map['parentUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redundancyZone: (() { final guardedValue = map['redundancyZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
