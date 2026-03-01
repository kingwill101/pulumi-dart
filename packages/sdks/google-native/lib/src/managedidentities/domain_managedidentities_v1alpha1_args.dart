// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_domain_managedidentities_v1alpha1_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_domain_managedidentities_v1alpha1_args_doc}
class DomainManagedidentitiesV1alpha1Args {
  /// Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  final pulumi.Input<bool>? auditLogsEnabled;
  /// Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * Must be unique within the project. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric.
  final pulumi.Input<String>? domainName;
  /// Optional. Resource labels to represent user provided metadata
  final pulumi.Input<Map<String, String>>? labels;
  /// Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>> locations;
  /// Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  final pulumi.Input<String>? managedIdentitiesAdminName;
  final pulumi.Input<String>? project;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  final pulumi.Input<String> reservedIpRange;

  /// Creates a new [DomainManagedidentitiesV1alpha1Args].
  /// [auditLogsEnabled] Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.
  /// [authorizedNetworks] Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Network can be added using UpdateDomain later. Domain is only available on network part of authorized_networks. Caller needs to make sure that CIDR subnets do not overlap between networks, else domain creation will fail.
  /// [domainName] The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * Must be unique within the project. * First segment length (mydomain form example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric.
  /// [labels] Optional. Resource labels to represent user provided metadata
  /// [locations] Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  /// [managedIdentitiesAdminName] Optional. Name of customer-visible admin used to perform Active Directory operations. If not specified `setupadmin` would be used.
  /// [project] Optional.
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  DomainManagedidentitiesV1alpha1Args({
    pulumi.Output<bool>? auditLogsEnabled,
    pulumi.Output<List<String>>? authorizedNetworks,
    pulumi.Output<String>? domainName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<List<String>> locations,
    pulumi.Output<String>? managedIdentitiesAdminName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservedIpRange,
  }) :
      auditLogsEnabled = pulumi.Input.asOptionalInput<bool>(auditLogsEnabled),
      authorizedNetworks = pulumi.Input.asOptionalInput<List<String>>(authorizedNetworks),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      locations = pulumi.Input.asInput<List<String>>(locations),
      managedIdentitiesAdminName = pulumi.Input.asOptionalInput<String>(managedIdentitiesAdminName),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservedIpRange = pulumi.Input.asInput<String>(reservedIpRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogsEnabled': ?auditLogsEnabled,
      'authorizedNetworks': ?authorizedNetworks,
      'domainName': ?domainName,
      'labels': ?labels,
      'locations': locations,
      'managedIdentitiesAdminName': ?managedIdentitiesAdminName,
      'project': ?project,
      'reservedIpRange': reservedIpRange,
    };
  }

  factory DomainManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return DomainManagedidentitiesV1alpha1Args(
      auditLogsEnabled: map['auditLogsEnabled'] == null ? null : pulumi.Output.create<bool>(map['auditLogsEnabled'] as bool),
      authorizedNetworks: map['authorizedNetworks'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedNetworks'] as List).cast<String>()),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      locations: pulumi.Output.create<List<String>>((map['locations'] as List).cast<String>()),
      managedIdentitiesAdminName: map['managedIdentitiesAdminName'] == null ? null : pulumi.Output.create<String>(map['managedIdentitiesAdminName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservedIpRange: pulumi.Output.create<String>(map['reservedIpRange'] as String),
    );
  }
}

