// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_domain_args_doc}
class DomainArgs {
  /// Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  final pulumi.Input<String>? admin;
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final pulumi.Input<bool>? auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;
  /// Required. The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain for example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.
  final pulumi.Input<String> domainName;
  /// Optional. Resource labels that can contain user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>> locations;
  /// The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final pulumi.Input<String> reservedIpRange;

  /// Creates a new [DomainArgs].
  /// [admin] Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  /// [auditLogsEnabled] Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  /// [authorizedNetworks] Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  /// [domainName] Required. The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain for example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.
  /// [labels] Optional. Resource labels that can contain user-provided metadata.
  /// [locations] Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  /// [name] The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  /// [project] Optional.
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  DomainArgs({
    pulumi.Output<String>? admin,
    pulumi.Output<bool>? auditLogsEnabled,
    pulumi.Output<List<String>>? authorizedNetworks,
    required pulumi.Output<String> domainName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<List<String>> locations,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservedIpRange,
  }) :
      admin = pulumi.Input.asOptionalInput<String>(admin),
      auditLogsEnabled = pulumi.Input.asOptionalInput<bool>(auditLogsEnabled),
      authorizedNetworks = pulumi.Input.asOptionalInput<List<String>>(authorizedNetworks),
      domainName = pulumi.Input.asInput<String>(domainName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      locations = pulumi.Input.asInput<List<String>>(locations),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservedIpRange = pulumi.Input.asInput<String>(reservedIpRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'auditLogsEnabled': ?auditLogsEnabled,
      'authorizedNetworks': ?authorizedNetworks,
      'domainName': domainName,
      'labels': ?labels,
      'locations': locations,
      'name': name,
      'project': ?project,
      'reservedIpRange': reservedIpRange,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      admin: map['admin'] == null ? null : pulumi.Output.create<String>(map['admin'] as String),
      auditLogsEnabled: map['auditLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['auditLogsEnabled'] as bool),
      authorizedNetworks: map['authorizedNetworks'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedNetworks'] as List).cast<String>()),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      locations: pulumi.Output.create<List<String>>((map['locations'] as List).cast<String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservedIpRange: pulumi.Output.create<String>(map['reservedIpRange'] as String),
    );
  }
}

