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
  PartnerAttachmentState({
    pulumi.Output<PartnerAttachmentBgp>? bgp,
    pulumi.Output<List<String>>? childrens,
    pulumi.Output<int>? connectionBandwidthInMbps,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? naasProvider,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentUuid,
    pulumi.Output<String>? redundancyZone,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? vpcIds,
  }) :
      bgp = pulumi.Input.asOptionalInput<PartnerAttachmentBgp>(bgp),
      childrens = pulumi.Input.asOptionalInput<List<String>>(childrens),
      connectionBandwidthInMbps = pulumi.Input.asOptionalInput<int>(connectionBandwidthInMbps),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      naasProvider = pulumi.Input.asOptionalInput<String>(naasProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentUuid = pulumi.Input.asOptionalInput<String>(parentUuid),
      redundancyZone = pulumi.Input.asOptionalInput<String>(redundancyZone),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      vpcIds = pulumi.Input.asOptionalInput<List<String>>(vpcIds);

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
      bgp: map['bgp'] == null ? null : pulumi.Output.create<PartnerAttachmentBgp>(PartnerAttachmentBgp.fromMap((map['bgp'] as Map).cast<String, dynamic>())),
      childrens: map['childrens'] == null ? null : pulumi.Output.create<List<String>>((map['childrens'] as List).cast<String>()),
      connectionBandwidthInMbps: map['connectionBandwidthInMbps'] == null ? null : pulumi.Output.create<int>(map['connectionBandwidthInMbps'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      naasProvider: map['naasProvider'] == null ? null : pulumi.Output.create<String>(map['naasProvider'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentUuid: map['parentUuid'] == null ? null : pulumi.Output.create<String>(map['parentUuid'] as String),
      redundancyZone: map['redundancyZone'] == null ? null : pulumi.Output.create<String>(map['redundancyZone'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      vpcIds: map['vpcIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcIds'] as List).cast<String>()),
    );
  }
}

