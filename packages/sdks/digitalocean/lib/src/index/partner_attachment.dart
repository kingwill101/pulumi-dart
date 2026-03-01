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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgp = registerOutput<PartnerAttachmentBgp>('bgp');
    this.childrens = registerOutput<List<String>>('childrens');
    this.connectionBandwidthInMbps = registerOutput<int>('connectionBandwidthInMbps');
    this.createdAt = registerOutput<String>('createdAt');
    this.naasProvider = registerOutput<String>('naasProvider');
    this.name = registerOutput<String>('name');
    this.parentUuid = registerOutput<String?>('parentUuid');
    this.redundancyZone = registerOutput<String>('redundancyZone');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
  }

  /// Gets an existing [PartnerAttachment] resource's state with the given [name] and [id].
  static PartnerAttachment get(
    String name,
    pulumi.Input<String> id, {
    PartnerAttachmentState? state,
  }) {
    return PartnerAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.bgp = registerOutput<PartnerAttachmentBgp>('bgp');
    this.childrens = registerOutput<List<String>>('childrens');
    this.connectionBandwidthInMbps = registerOutput<int>('connectionBandwidthInMbps');
    this.createdAt = registerOutput<String>('createdAt');
    this.naasProvider = registerOutput<String>('naasProvider');
    this.name = registerOutput<String>('name');
    this.parentUuid = registerOutput<String?>('parentUuid');
    this.redundancyZone = registerOutput<String>('redundancyZone');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
  }
}
