// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_activedirectory_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_activedirectory_domain_domain_args_doc}
class DomainArgs {
  /// The name of delegated administrator account used to perform Active Directory operations.
  /// If not specified, setupadmin will be used.
  final pulumi.Input<String>? admin;
  /// The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the domain. Defaults to true.
  /// When a`terraform destroy` or `pulumi up` would delete the domain,
  /// the command will fail if this field is not set to false in Terraform state.
  /// When the field is set to true or unset in Terraform state, a `pulumi up`
  /// or `terraform destroy` that would delete the domain will fail.
  /// When the field is set to false, deleting the domain is allowed.
  final pulumi.Input<bool>? deletionProtection;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String> domainName;
  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>> locations;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  /// Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  final pulumi.Input<String> reservedIpRange;

  /// Creates a new [DomainArgs].
  /// [admin] The name of delegated administrator account used to perform Active Directory operations.
  /// [authorizedNetworks] The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the domain. Defaults to true.
  /// [domainName] The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// [labels] Resource labels that can contain user-provided metadata
  /// [locations] Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// [project] The ID of the project in which the resource belongs.
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  const DomainArgs({
    this.admin,
    this.authorizedNetworks,
    this.deletionPolicy,
    this.deletionProtection,
    required this.domainName,
    this.labels,
    required this.locations,
    this.project,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'authorizedNetworks': ?authorizedNetworks,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'domainName': domainName,
      'labels': ?labels,
      'locations': locations,
      'project': ?project,
      'reservedIpRange': reservedIpRange,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizedNetworks: (() { final guardedValue = map['authorizedNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRange: pulumi.Input.fromValue(map['reservedIpRange'] as String),
    );
  }
}
