import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_attachment_args.dart';
import 'partner_attachment_bgp.dart';
import 'partner_attachment_state.dart';

class PartnerAttachment extends pulumi.CustomResource {
  late final pulumi.Output<PartnerAttachmentBgp> bgp;
  /// The children uuids of Partner Attachment
  late final pulumi.Output<List<String>> childrens;
  /// The connection bandwidth in Mbps
  late final pulumi.Output<int> connectionBandwidthInMbps;
  /// The date and time when the Partner Attachment was created
  late final pulumi.Output<String> createdAt;
  /// The NaaS provider
  late final pulumi.Output<String> naasProvider;
  /// The name of the Partner Attachment
  late final pulumi.Output<String> name;
  /// The UUID of the Parent Partner Attachment
  late final pulumi.Output<String?> parentUuid;
  /// The redundancy zone for the NaaS
  late final pulumi.Output<String> redundancyZone;
  /// The region where the Partner Attachment will be created
  late final pulumi.Output<String> region;
  /// The state of the Partner Attachment
  late final pulumi.Output<String> state;
  /// The list of VPC IDs to attach the Partner Attachment to
  late final pulumi.Output<List<String>> vpcIds;

  /// Creates a new [PartnerAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerAttachment]. {@macro pulumi_index_partner_attachment_partner_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerAttachment(
    String name, {
    PartnerAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/partnerAttachment:PartnerAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.80.1').merge(options),
        ) {
    bgp = registerOutput<PartnerAttachmentBgp>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    childrens = registerOutput<List<String>>('childrens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionBandwidthInMbps = registerOutput<int>('connectionBandwidthInMbps');
    createdAt = registerOutput<String>('createdAt');
    naasProvider = registerOutput<String>('naasProvider');
    this.name = registerOutput<String>('name');
    parentUuid = registerOutput<String?>('parentUuid');
    redundancyZone = registerOutput<String>('redundancyZone');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    vpcIds = registerOutput<List<String>>('vpcIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [PartnerAttachment] resource's state with the given [name] and [id].
  static PartnerAttachment get(
    String name,
    pulumi.Input<String> id, {
    PartnerAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PartnerAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PartnerAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/partnerAttachment:PartnerAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bgp = registerOutput<PartnerAttachmentBgp>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    childrens = registerOutput<List<String>>('childrens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionBandwidthInMbps = registerOutput<int>('connectionBandwidthInMbps');
    createdAt = registerOutput<String>('createdAt');
    naasProvider = registerOutput<String>('naasProvider');
    this.name = registerOutput<String>('name');
    parentUuid = registerOutput<String?>('parentUuid');
    redundancyZone = registerOutput<String>('redundancyZone');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    vpcIds = registerOutput<List<String>>('vpcIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [PartnerAttachment] resource.
  PartnerAttachment.reference(String urn)
    : super(
        'digitalocean:index/partnerAttachment:PartnerAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bgp = registerOutput<PartnerAttachmentBgp>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PartnerAttachmentBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    childrens = registerOutput<List<String>>('childrens', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectionBandwidthInMbps = registerOutput<int>('connectionBandwidthInMbps');
    createdAt = registerOutput<String>('createdAt');
    naasProvider = registerOutput<String>('naasProvider');
    this.name = registerOutput<String>('name');
    parentUuid = registerOutput<String?>('parentUuid');
    redundancyZone = registerOutput<String>('redundancyZone');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    vpcIds = registerOutput<List<String>>('vpcIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
