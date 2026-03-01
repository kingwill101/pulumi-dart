import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata_response.dart';
import 'partner_tenant_args.dart';

/// Creates a new BeyondCorp Enterprise partnerTenant in a given organization and can only be called by onboarded BeyondCorp Enterprise partner.
/// Auto-naming is currently not supported for this resource.
class PartnerTenant extends pulumi.CustomResource {
  /// Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  late final pulumi.Output<String> displayName;
  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  late final pulumi.Output<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse> group;
  /// Unique resource name of the PartnerTenant. The name is ignored when creating PartnerTenant.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  late final pulumi.Output<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse> partnerMetadata;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PartnerTenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerTenant]. {@macro pulumi_beyondcorp_v1alpha_partner_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerTenant(
    String name, {
    PartnerTenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:PartnerTenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.group = registerOutput<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>('group');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.partnerMetadata = registerOutput<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse>('partnerMetadata');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
