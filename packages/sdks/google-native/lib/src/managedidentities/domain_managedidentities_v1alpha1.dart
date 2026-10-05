import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_managedidentities_v1alpha1_args.dart';
import 'trust_response_managedidentities_v1alpha1.dart';

/// Creates a Microsoft AD Domain in a given project. Operation
/// Auto-naming is currently not supported for this resource.
class DomainManagedidentitiesV1alpha1 extends pulumi.CustomResource {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  late final pulumi.Output<bool> auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  late final pulumi.Output<List<String>> authorizedNetworks;
  /// The time the instance was created. Synthetic field is populated automatically by CCFE. go/ccfe-synthetic-field-user-guide
  late final pulumi.Output<String> createTime;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * Must be unique within the project. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric.
  late final pulumi.Output<String?> domainName;
  /// Fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory that is set up on an internal network.
  late final pulumi.Output<String> fqdn;
  /// Optional. Resource labels to represent user provided metadata
  late final pulumi.Output<Map<String, String>> labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final pulumi.Output<List<String>> locations;
  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  late final pulumi.Output<String> managedIdentitiesAdminName;
  /// Unique name of the domain in this scope including projects and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  late final pulumi.Output<String> reservedIpRange;
  /// The current state of this domain.
  late final pulumi.Output<String> state;
  /// Additional information about the current status of this domain, if available.
  late final pulumi.Output<String> statusMessage;
  /// The current trusts associated with the domain.
  late final pulumi.Output<List<TrustResponseManagedidentitiesV1alpha1>> trusts;
  /// Last update time. Synthetic field is populated automatically by CCFE.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DomainManagedidentitiesV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainManagedidentitiesV1alpha1]. {@macro pulumi_managedidentities_v1alpha1_domain_managedidentities_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainManagedidentitiesV1alpha1(
    String name, {
    DomainManagedidentitiesV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:managedidentities/v1alpha1:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['project']).merge(options),
        ) {
    auditLogsEnabled = registerOutput<bool>('auditLogsEnabled');
    authorizedNetworks = registerOutput<List<String>>('authorizedNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    domainName = registerOutput<String?>('domainName');
    fqdn = registerOutput<String>('fqdn');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    locations = registerOutput<List<String>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    managedIdentitiesAdminName = registerOutput<String>('managedIdentitiesAdminName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reservedIpRange = registerOutput<String>('reservedIpRange');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    trusts = registerOutput<List<TrustResponseManagedidentitiesV1alpha1>>('trusts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustResponseManagedidentitiesV1alpha1>(guardedValue, (value) => TrustResponseManagedidentitiesV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [DomainManagedidentitiesV1alpha1] resource.
  DomainManagedidentitiesV1alpha1.reference(String urn)
    : super(
        'google-native:managedidentities/v1alpha1:Domain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    auditLogsEnabled = registerOutput<bool>('auditLogsEnabled');
    authorizedNetworks = registerOutput<List<String>>('authorizedNetworks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    domainName = registerOutput<String?>('domainName');
    fqdn = registerOutput<String>('fqdn');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    locations = registerOutput<List<String>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    managedIdentitiesAdminName = registerOutput<String>('managedIdentitiesAdminName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    reservedIpRange = registerOutput<String>('reservedIpRange');
    state = registerOutput<String>('state');
    statusMessage = registerOutput<String>('statusMessage');
    trusts = registerOutput<List<TrustResponseManagedidentitiesV1alpha1>>('trusts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustResponseManagedidentitiesV1alpha1>(guardedValue, (value) => TrustResponseManagedidentitiesV1alpha1.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
