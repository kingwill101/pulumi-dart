// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_public_delegated_prefix_public_delegated_prefix_args_doc}
/// The set of arguments for PublicDelegatedPrefix.
/// {@endtemplate}
/// {@macro pulumi_compute_public_delegated_prefix_public_delegated_prefix_args_doc}
class PublicDelegatedPrefixArgs {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final pulumi.Input<int>? allocatablePrefixLength;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [mode] Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A region where the prefix will reside.
  const PublicDelegatedPrefixArgs({
    this.allocatablePrefixLength,
    this.deletionPolicy,
    this.description,
    required this.ipCidrRange,
    this.isLiveMigration,
    this.mode,
    this.name,
    required this.parentPrefix,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'deletionPolicy': ?deletionPolicy,
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
      allocatablePrefixLength: (() { final guardedValue = map['allocatablePrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      isLiveMigration: (() { final guardedValue = map['isLiveMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPrefix: pulumi.Input.fromValue(map['parentPrefix'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
