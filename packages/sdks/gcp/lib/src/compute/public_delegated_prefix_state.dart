// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix.dart';

/// Input properties used for looking up and filtering PublicDelegatedPrefix resources.
class PublicDelegatedPrefixState {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final pulumi.Input<int>? allocatablePrefixLength;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Whether this PublicDelegatedSubPrefix supports enhanced IPv4 allocations.
  /// Applicable for IPv4 sub-PDPs only.
  final pulumi.Input<bool>? enableEnhancedIpv4Allocation;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;
  /// (Output)
  /// The internet access type for IPv6 Public Delegated Prefixes. Inherited
  /// from parent prefix and can be one of following:
  /// * EXTERNAL: The prefix will be announced to the internet. All children
  /// PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  final pulumi.Input<String>? ipv6AccessType;
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
  final pulumi.Input<String>? parentPrefix;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// List of sub public delegated fixes for BYO IP functionality.
  /// Each item in this array represents a sub prefix that can be
  /// used to create addresses or further allocations.
  /// Structure is documented below.
  final pulumi.Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>>? publicDelegatedSubPrefixs;
  /// A region where the prefix will reside.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [PublicDelegatedPrefixState].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [description] An optional description of this resource.
  /// [enableEnhancedIpv4Allocation] (Output)
  /// [ipCidrRange] The IP address range, in CIDR format, represented by this public delegated prefix.
  /// [ipv6AccessType] (Output)
  /// [isLiveMigration] If true, the prefix will be live migrated.
  /// [mode] Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [parentPrefix] The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicDelegatedSubPrefixs] List of sub public delegated fixes for BYO IP functionality.
  /// [region] A region where the prefix will reside.
  /// [selfLink] The URI of the created resource.
  PublicDelegatedPrefixState({
    this.allocatablePrefixLength,
    this.description,
    this.enableEnhancedIpv4Allocation,
    this.ipCidrRange,
    this.ipv6AccessType,
    this.isLiveMigration,
    this.mode,
    this.name,
    this.parentPrefix,
    this.project,
    this.publicDelegatedSubPrefixs,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatablePrefixLength': ?allocatablePrefixLength,
      'description': ?description,
      'enableEnhancedIpv4Allocation': ?enableEnhancedIpv4Allocation,
      'ipCidrRange': ?ipCidrRange,
      'ipv6AccessType': ?ipv6AccessType,
      'isLiveMigration': ?isLiveMigration,
      'mode': ?mode,
      'name': ?name,
      'parentPrefix': ?parentPrefix,
      'project': ?project,
      'publicDelegatedSubPrefixs': ?pulumi.Input.mapOptionalInputValue<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>, List<Map<String, dynamic>>>(publicDelegatedSubPrefixs, (value) => pulumi.Input.encodeList<PublicDelegatedPrefixPublicDelegatedSubPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory PublicDelegatedPrefixState.fromMap(Map<String, dynamic> map) {
    return PublicDelegatedPrefixState(
      allocatablePrefixLength: map['allocatablePrefixLength'] == null ? null : (map['allocatablePrefixLength'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableEnhancedIpv4Allocation: map['enableEnhancedIpv4Allocation'] == null ? null : (map['enableEnhancedIpv4Allocation'] as bool).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange'] as String).input(),
      ipv6AccessType: map['ipv6AccessType'] == null ? null : (map['ipv6AccessType'] as String).input(),
      isLiveMigration: map['isLiveMigration'] == null ? null : (map['isLiveMigration'] as bool).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentPrefix: map['parentPrefix'] == null ? null : (map['parentPrefix'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicDelegatedSubPrefixs: map['publicDelegatedSubPrefixs'] == null ? null : (pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefix>(map['publicDelegatedSubPrefixs'], (value) => PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
    );
  }
}

