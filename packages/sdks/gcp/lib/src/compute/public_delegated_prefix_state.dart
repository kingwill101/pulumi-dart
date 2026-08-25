// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix.dart';

/// Input properties used for looking up and filtering PublicDelegatedPrefix resources.
class PublicDelegatedPrefixState {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  final pulumi.Input<int?>? allocatablePrefixLength;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// Whether this PublicDelegatedSubPrefix supports enhanced IPv4 allocations.
  /// Applicable for IPv4 sub-PDPs only.
  final pulumi.Input<bool?>? enableEnhancedIpv4Allocation;
  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String?>? ipCidrRange;
  /// (Output)
  /// The internet access type for IPv6 Public Delegated Prefixes. Inherited
  /// from parent prefix and can be one of following:
  /// * EXTERNAL: The prefix will be announced to the internet. All children
  /// PDPs will have access type as EXTERNAL.
  /// * INTERNAL: The prefix won’t be announced to the internet. Prefix will
  /// be used privately within Google Cloud. All children PDPs will have
  /// access type as INTERNAL.
  final pulumi.Input<String?>? ipv6AccessType;
  /// If true, the prefix will be live migrated.
  final pulumi.Input<bool?>? isLiveMigration;
  /// Specifies the mode of this IPv6 PDP. MODE must be one of:
  /// * DELEGATION
  /// * EXTERNAL_IPV6_FORWARDING_RULE_CREATION
  /// * EXTERNAL_IPV6_SUBNETWORK_CREATION
  /// * INTERNAL_IPV6_SUBNETWORK_CREATION
  /// Possible values are: `DELEGATION`, `EXTERNAL_IPV6_FORWARDING_RULE_CREATION`, `EXTERNAL_IPV6_SUBNETWORK_CREATION`, `INTERNAL_IPV6_SUBNETWORK_CREATION`.
  final pulumi.Input<String?>? mode;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final pulumi.Input<String?>? parentPrefix;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// List of sub public delegated fixes for BYO IP functionality.
  /// Each item in this array represents a sub prefix that can be
  /// used to create addresses or further allocations.
  /// Structure is documented below.
  final pulumi.Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefix>?>? publicDelegatedSubPrefixs;
  /// A region where the prefix will reside.
  final pulumi.Input<String?>? region;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [PublicDelegatedPrefixState].
  /// [allocatablePrefixLength] The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PublicDelegatedPrefixState({
    this.allocatablePrefixLength,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      allocatablePrefixLength: (() { final guardedValue = map['allocatablePrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableEnhancedIpv4Allocation: (() { final guardedValue = map['enableEnhancedIpv4Allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AccessType: (() { final guardedValue = map['ipv6AccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isLiveMigration: (() { final guardedValue = map['isLiveMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPrefix: (() { final guardedValue = map['parentPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDelegatedSubPrefixs: (() { final guardedValue = map['publicDelegatedSubPrefixs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PublicDelegatedPrefixPublicDelegatedSubPrefix>(guardedValue, (value) => PublicDelegatedPrefixPublicDelegatedSubPrefix.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
