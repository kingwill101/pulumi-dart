// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_public_advertised_prefix_public_advertised_prefix_args_doc}
/// The set of arguments for PublicAdvertisedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_public_advertised_prefix_public_advertised_prefix_args_doc}
class PublicAdvertisedPrefixArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The IPv4 address to be used for reverse DNS verification.
  final pulumi.Input<String>? dnsVerificationIp;
  /// The address range, in CIDR format, represented by this public advertised prefix.
  final pulumi.Input<String> ipCidrRange;
  /// The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// set to one of following:
  /// * EXTERNAL: Default access type. The prefix will be announced to the
  /// internet. All children PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? ipv6AccessType;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Specifies how child public delegated prefix will be scoped. pdpScope
  /// must be one of: GLOBAL, REGIONAL
  /// * REGIONAL: The public delegated prefix is regional only. The
  /// provisioning will take a few minutes.
  /// * GLOBAL: The public delegated prefix is global only. The provisioning
  /// will take ~4 weeks.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  final pulumi.Input<String>? pdpScope;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [PublicAdvertisedPrefixArgs].
  /// [description] An optional description of this resource.
  /// [dnsVerificationIp] The IPv4 address to be used for reverse DNS verification.
  /// [ipCidrRange] The address range, in CIDR format, represented by this public advertised prefix.
  /// [ipv6AccessType] The internet access type for IPv6 Public Advertised Prefixes. It can be
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [pdpScope] Specifies how child public delegated prefix will be scoped. pdpScope
  /// [project] The ID of the project in which the resource belongs.
  PublicAdvertisedPrefixArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsVerificationIp,
    required pulumi.Output<String> ipCidrRange,
    pulumi.Output<String>? ipv6AccessType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pdpScope,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsVerificationIp = pulumi.Input.asOptionalInput<String>(dnsVerificationIp),
      ipCidrRange = pulumi.Input.asInput<String>(ipCidrRange),
      ipv6AccessType = pulumi.Input.asOptionalInput<String>(ipv6AccessType),
      name = pulumi.Input.asOptionalInput<String>(name),
      pdpScope = pulumi.Input.asOptionalInput<String>(pdpScope),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dnsVerificationIp': ?dnsVerificationIp,
      'ipCidrRange': ipCidrRange,
      'ipv6AccessType': ?ipv6AccessType,
      'name': ?name,
      'pdpScope': ?pdpScope,
      'project': ?project,
    };
  }

  factory PublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicAdvertisedPrefixArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsVerificationIp: map['dnsVerificationIp'] == null ? null : pulumi.Output.create<String>(map['dnsVerificationIp'] as String),
      ipCidrRange: pulumi.Output.create<String>(map['ipCidrRange'] as String),
      ipv6AccessType: map['ipv6AccessType'] == null ? null : pulumi.Output.create<String>(map['ipv6AccessType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pdpScope: map['pdpScope'] == null ? null : pulumi.Output.create<String>(map['pdpScope'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

