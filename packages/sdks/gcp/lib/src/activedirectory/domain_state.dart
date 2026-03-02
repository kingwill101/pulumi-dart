// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The name of delegated administrator account used to perform Active Directory operations.
  /// If not specified, setupadmin will be used.
  final pulumi.Input<String>? admin;
  /// The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  final pulumi.Input<List<String>>? authorizedNetworks;
  final pulumi.Input<bool>? deletionProtection;
  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  final pulumi.Input<String>? domainName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service.
  /// Similar to what would be chosen for an Active Directory set up on an internal network.
  final pulumi.Input<String>? fqdn;
  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  final pulumi.Input<List<String>>? locations;
  /// The unique name of the domain using the format: `projects/{project}/locations/global/domains/{domainName}`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  /// Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  final pulumi.Input<String>? reservedIpRange;

  /// Creates a new [DomainState].
  /// [admin] The name of delegated administrator account used to perform Active Directory operations.
  /// [authorizedNetworks] The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// [deletionProtection] Optional.
  /// [domainName] The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [fqdn] The fully-qualified domain name of the exposed domain used by clients to connect to the service.
  /// [labels] Resource labels that can contain user-provided metadata
  /// [locations] Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// [name] The unique name of the domain using the format: `projects/{project}/locations/global/domains/{domainName}`.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  DomainState({
    this.admin,
    this.authorizedNetworks,
    this.deletionProtection,
    this.domainName,
    this.effectiveLabels,
    this.fqdn,
    this.labels,
    this.locations,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'authorizedNetworks': ?authorizedNetworks,
      'deletionProtection': ?deletionProtection,
      'domainName': ?domainName,
      'effectiveLabels': ?effectiveLabels,
      'fqdn': ?fqdn,
      'labels': ?labels,
      'locations': ?locations,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservedIpRange': ?reservedIpRange,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      admin: map['admin'] == null ? null : (map['admin']! as String).input(),
      authorizedNetworks: map['authorizedNetworks'] == null ? null : ((map['authorizedNetworks']! as List).cast<String>()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      fqdn: map['fqdn'] == null ? null : (map['fqdn']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reservedIpRange: map['reservedIpRange'] == null ? null : (map['reservedIpRange']! as String).input(),
    );
  }
}

