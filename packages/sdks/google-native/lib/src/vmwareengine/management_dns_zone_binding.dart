import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_dns_zone_binding_args.dart';

/// Creates a new `ManagementDnsZoneBinding` resource in a private cloud. This RPC creates the DNS binding and the resource that represents the DNS binding of the consumer VPC network to the management DNS zone. A management DNS zone is the Cloud DNS cross-project binding zone that VMware Engine creates for each private cloud. It contains FQDNs and corresponding IP addresses for the private cloud's ESXi hosts and management VM appliances like vCenter and NSX Manager.
/// Auto-naming is currently not supported for this resource.
class ManagementDnsZoneBinding extends pulumi.CustomResource {
  /// Creation time of this resource.
  late final pulumi.Output<String> createTime;
  /// User-provided description for this resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;
  /// Required. The user-provided identifier of the `ManagementDnsZoneBinding` resource to be created. This identifier must be unique among `ManagementDnsZoneBinding` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> managementDnsZoneBindingId;
  /// The resource name of this binding. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> privateCloudId;
  late final pulumi.Output<String> project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The state of the resource.
  late final pulumi.Output<String> state;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last update time of this resource.
  late final pulumi.Output<String> updateTime;
  /// Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  late final pulumi.Output<String> vmwareEngineNetwork;
  /// Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  late final pulumi.Output<String> vpcNetwork;

  /// Creates a new [ManagementDnsZoneBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementDnsZoneBinding]. {@macro pulumi_vmwareengine_v1_management_dns_zone_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementDnsZoneBinding(
    String name, {
    ManagementDnsZoneBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:ManagementDnsZoneBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    managementDnsZoneBindingId = registerOutput<String>('managementDnsZoneBindingId');
    this.name = registerOutput<String>('name');
    privateCloudId = registerOutput<String>('privateCloudId');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
    vpcNetwork = registerOutput<String>('vpcNetwork');
  }
}
