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
    this.admin,
    this.auditLogsEnabled,
    this.authorizedNetworks,
    required this.domainName,
    this.labels,
    required this.locations,
    required this.name,
    this.project,
    required this.reservedIpRange,
  });

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
      admin: (() {
        final guardedValue = map['admin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      auditLogsEnabled: (() {
        final guardedValue = map['auditLogsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      authorizedNetworks: (() {
        final guardedValue = map['authorizedNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservedIpRange: pulumi.Input.fromValue(map['reservedIpRange'] as String),
    );
  }
}
