// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_public_delegated_prefix_public_delegated_prefix_args_doc}
/// The set of arguments for PublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_public_delegated_prefix_public_delegated_prefix_args_doc}
class PublicDelegatedPrefixArgs {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final pulumi.Input<int>? allocatablePrefixLength;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String> ipCidrRange;
  /// If true, the prefix will be live migrated.
  final pulumi.Input<bool>? isLiveMigration;
  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  final pulumi.Input<String>? mode;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final pulumi.Input<String> parentPrefix;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A region where the prefix will reside.
  final pulumi.Input<String> region;

  /// Creates a new [PublicDelegatedPrefixArgs].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [description] An optional description of this resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [mode] Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A region where the prefix will reside.
  PublicDelegatedPrefixArgs({
    pulumi.Output<int>? allocatablePrefixLength,
    pulumi.Output<String>? description,
    required pulumi.Output<String> ipCidrRange,
    pulumi.Output<bool>? isLiveMigration,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    required pulumi.Output<String> parentPrefix,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      allocatablePrefixLength = pulumi.Input.asOptionalInput<int>(allocatablePrefixLength),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipCidrRange = pulumi.Input.asInput<String>(ipCidrRange),
      isLiveMigration = pulumi.Input.asOptionalInput<bool>(isLiveMigration),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentPrefix = pulumi.Input.asInput<String>(parentPrefix),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'description': ?description,
      'ipCidrRange': ipCidrRange,
      'isLiveMigration': ?isLiveMigration,
      'mode': ?mode,
      'name': ?name,
      'parentPrefix': parentPrefix,
      'project': ?project,
      'region': region,
    };
  }

  factory PublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixArgs(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null ? null : pulumi.Output.create<int>(map['allocatablePrefixLength'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipCidrRange: pulumi.Output.create<String>(map['ipCidrRange'] as String),
      isLiveMigration: map['isLiveMigration'] == null ? null : pulumi.Output.create<bool>(map['isLiveMigration'] as bool),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentPrefix: pulumi.Output.create<String>(map['parentPrefix'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

