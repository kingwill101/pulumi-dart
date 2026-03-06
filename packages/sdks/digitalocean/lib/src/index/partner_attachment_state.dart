// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_attachment_bgp.dart';

/// Input properties used for looking up and filtering PartnerAttachment resources.
class PartnerAttachmentState {
  final pulumi.Input<PartnerAttachmentBgp>? bgp;
  /// The children uuids of Partner Attachment
  final pulumi.Input<List<String>>? childrens;
  /// The connection bandwidth in Mbps
  final pulumi.Input<int>? connectionBandwidthInMbps;
  /// The date and time when the Partner Attachment was created
  final pulumi.Input<String>? createdAt;
  /// The NaaS provider
  final pulumi.Input<String>? naasProvider;
  /// The name of the Partner Attachment
  final pulumi.Input<String>? name;
  /// The UUID of the Parent Partner Attachment
  final pulumi.Input<String>? parentUuid;
  /// The redundancy zone for the NaaS
  final pulumi.Input<String>? redundancyZone;
  /// The region where the Partner Attachment will be created
  final pulumi.Input<String>? region;
  /// The state of the Partner Attachment
  final pulumi.Input<String>? state;
  /// The list of VPC IDs to attach the Partner Attachment to
  final pulumi.Input<List<String>>? vpcIds;

  /// Creates a new [PartnerAttachmentState].
  /// [bgp] Optional.
  /// [childrens] The children uuids of Partner Attachment
  /// [connectionBandwidthInMbps] The connection bandwidth in Mbps
  /// [createdAt] The date and time when the Partner Attachment was created
  /// [naasProvider] The NaaS provider
  /// [name] The name of the Partner Attachment
  /// [parentUuid] The UUID of the Parent Partner Attachment
  /// [redundancyZone] The redundancy zone for the NaaS
  /// [region] The region where the Partner Attachment will be created
  /// [state] The state of the Partner Attachment
  /// [vpcIds] The list of VPC IDs to attach the Partner Attachment to
  const PartnerAttachmentState({
    this.bgp,
    this.childrens,
    this.connectionBandwidthInMbps,
    this.createdAt,
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
      'bgp': ?pulumi.Input.mapOptionalInputValue<PartnerAttachmentBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'childrens': ?childrens,
      'connectionBandwidthInMbps': ?connectionBandwidthInMbps,
      'createdAt': ?createdAt,
      'naasProvider': ?naasProvider,
      'name': ?name,
      'parentUuid': ?parentUuid,
      'redundancyZone': ?redundancyZone,
      'region': ?region,
      'state': ?state,
      'vpcIds': ?vpcIds,
    };
  }

  factory PartnerAttachmentState.fromMap(Map<String, dynamic> map) {
    return PartnerAttachmentState(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      childrens: (() { final guardedValue = map['childrens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionBandwidthInMbps: (() { final guardedValue = map['connectionBandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      naasProvider: (() { final guardedValue = map['naasProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentUuid: (() { final guardedValue = map['parentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancyZone: (() { final guardedValue = map['redundancyZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

