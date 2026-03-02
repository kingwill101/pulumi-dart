// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_range_allocation_options.dart';
import 'internal_range_migration.dart';

/// {@template pulumi_networkconnectivity_internal_range_internal_range_args_doc}
/// The set of arguments for InternalRange.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_internal_range_internal_range_args_doc}
class InternalRangeArgs {
  /// Options for automatically allocating a free range with a size given by prefixLength.
  /// Structure is documented below.
  final pulumi.Input<InternalRangeAllocationOptions>? allocationOptions;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Optional. List of IP CIDR ranges to be excluded. Resulting reserved Internal Range will not overlap with any CIDR blocks mentioned in this list.
  /// Only IPv4 CIDR ranges are supported.
  final pulumi.Input<List<String>>? excludeCidrRanges;
  /// Immutable ranges cannot have their fields modified, except for labels and description.
  final pulumi.Input<bool>? immutable;
  /// The IP range that this internal range defines.
  /// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and peering=FOR_SELF
  /// NOTE: For IPv6 Ranges this field is compulsory, i.e. the address range must be specified explicitly.
  final pulumi.Input<String>? ipCidrRange;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specification for migration with source and target resource names.
  /// Structure is documented below.
  final pulumi.Input<InternalRangeMigration>? migration;
  /// The name of the policy based route.
  final pulumi.Input<String>? name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String> network;
  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  /// Each value may be one of: `OVERLAP_ROUTE_RANGE`, `OVERLAP_EXISTING_SUBNET_RANGE`.
  final pulumi.Input<List<String>>? overlaps;
  /// The type of peering set for this internal range.
  /// Possible values are: `FOR_SELF`, `FOR_PEER`, `NOT_SHARED`.
  final pulumi.Input<String> peering;
  /// An alternate to ipCidrRange. Can be set when trying to create a reservation that automatically finds a free range of the given size.
  /// If both ipCidrRange and prefixLength are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// NOTE: For IPv6 this field only works if ip_cidr_range is set as well, and both fields must match. In other words, with IPv6 this field only works as
  /// a redundant parameter.
  final pulumi.Input<int>? prefixLength;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range.
  /// If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final pulumi.Input<List<String>>? targetCidrRanges;
  /// The type of usage set for this InternalRange.
  /// Possible values are: `FOR_VPC`, `EXTERNAL_TO_VPC`, `FOR_MIGRATION`.
  final pulumi.Input<String> usage;

  /// Creates a new [InternalRangeArgs].
  /// [allocationOptions] Options for automatically allocating a free range with a size given by prefixLength.
  /// [description] An optional description of this resource.
  /// [excludeCidrRanges] Optional. List of IP CIDR ranges to be excluded. Resulting reserved Internal Range will not overlap with any CIDR blocks mentioned in this list.
  /// [immutable] Immutable ranges cannot have their fields modified, except for labels and description.
  /// [ipCidrRange] The IP range that this internal range defines.
  /// [labels] User-defined labels.
  /// [migration] Specification for migration with source and target resource names.
  /// [name] The name of the policy based route.
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [overlaps] Optional. Types of resources that are allowed to overlap with the current internal range.
  /// [peering] The type of peering set for this internal range.
  /// [prefixLength] An alternate to ipCidrRange. Can be set when trying to create a reservation that automatically finds a free range of the given size.
  /// [project] The ID of the project in which the resource belongs.
  /// [targetCidrRanges] Optional. Can be set to narrow down or pick a different address space while searching for a free range.
  /// [usage] The type of usage set for this InternalRange.
  InternalRangeArgs({
    this.allocationOptions,
    this.description,
    this.excludeCidrRanges,
    this.immutable,
    this.ipCidrRange,
    this.labels,
    this.migration,
    this.name,
    required this.network,
    this.overlaps,
    required this.peering,
    this.prefixLength,
    this.project,
    this.targetCidrRanges,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationOptions': ?pulumi.Input.mapOptionalInputValue<InternalRangeAllocationOptions, Map<String, dynamic>>(allocationOptions, (value) => value.toMap()),
      'description': ?description,
      'excludeCidrRanges': ?excludeCidrRanges,
      'immutable': ?immutable,
      'ipCidrRange': ?ipCidrRange,
      'labels': ?labels,
      'migration': ?pulumi.Input.mapOptionalInputValue<InternalRangeMigration, Map<String, dynamic>>(migration, (value) => value.toMap()),
      'name': ?name,
      'network': network,
      'overlaps': ?overlaps,
      'peering': peering,
      'prefixLength': ?prefixLength,
      'project': ?project,
      'targetCidrRanges': ?targetCidrRanges,
      'usage': usage,
    };
  }

  factory InternalRangeArgs.fromMap(Map<String, dynamic> map) {
    return InternalRangeArgs(
      allocationOptions: map['allocationOptions'] == null ? null : (InternalRangeAllocationOptions.fromMap((map['allocationOptions'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      excludeCidrRanges: map['excludeCidrRanges'] == null ? null : ((map['excludeCidrRanges'] as List).cast<String>()).input(),
      immutable: map['immutable'] == null ? null : (map['immutable'] as bool).input(),
      ipCidrRange: map['ipCidrRange'] == null ? null : (map['ipCidrRange'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      migration: map['migration'] == null ? null : (InternalRangeMigration.fromMap((map['migration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      overlaps: map['overlaps'] == null ? null : ((map['overlaps'] as List).cast<String>()).input(),
      peering: (map['peering'] as String).input(),
      prefixLength: map['prefixLength'] == null ? null : (map['prefixLength'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      targetCidrRanges: map['targetCidrRanges'] == null ? null : ((map['targetCidrRanges'] as List).cast<String>()).input(),
      usage: (map['usage'] as String).input(),
    );
  }
}

