import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_managedidentities_v1beta1_args.dart';

/// Creates a Microsoft AD domain.
/// Auto-naming is currently not supported for this resource.
class DomainManagedidentitiesV1beta1 extends pulumi.CustomResource {
  /// Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  late final pulumi.Output<String> admin;
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  late final pulumi.Output<bool> auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  late final pulumi.Output<List<String>> authorizedNetworks;
  /// The time the instance was created.
  late final pulumi.Output<String> createTime;
  /// Required. A domain name, e.g. mydomain.myorg.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.
  late final pulumi.Output<String> domainName;
  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.
  late final pulumi.Output<String> fqdn;
  /// Optional. Resource labels that can contain user-provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final pulumi.Output<List<String>> locations;
  /// The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  late final pulumi.Output<String> reservedIpRange;
  /// The current state of this domain.
  late final pulumi.Output<String> state;
  /// Additional information about the current status of this domain, if available.
  late final pulumi.Output<String> statusMessage;
  /// The current trusts associated with the domain.
  late final pulumi.Output<List<Map<String, dynamic>>> trusts;
  /// The last update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DomainManagedidentitiesV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainManagedidentitiesV1beta1]. {@macro pulumi_managedidentities_v1beta1_domain_managedidentities_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainManagedidentitiesV1beta1(
    String name, {
    DomainManagedidentitiesV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1beta1:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    admin = registerOutput<String>('admin');
    auditLogsEnabled = registerOutput<bool>('auditLogsEnabled');
    authorizedNetworks = registerOutput<List<String>>('authorizedNetworks');
    createTime = registerOutput<String>('createTime');
    domainName = registerOutput<String>('domainName');
    fqdn = registerOutput<String>('fqdn');
    labels = registerOutput<Map<String, String>>('labels');
    locations = registerOutput<List<String>>('locations');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reservedIpRange = registerOutput<String>('reservedIpRange');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    trusts = registerOutput<List<Map<String, dynamic>>>('trusts');
    updateTime = registerOutput<String>('updateTime');
  }
}
