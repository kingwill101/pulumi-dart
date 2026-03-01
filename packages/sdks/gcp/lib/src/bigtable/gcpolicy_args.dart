// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcpolicy_max_age.dart';
import 'gcpolicy_max_version.dart';

/// {@template pulumi_bigtable_g_cpolicy_gcpolicy_args_doc}
/// The set of arguments for GCPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtable_g_cpolicy_gcpolicy_args_doc}
class GCPolicyArgs {
  /// The name of the column family.
  final pulumi.Input<String> columnFamily;
  /// The deletion policy for the GC policy.
  /// Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted in a replicated instance.
  ///
  /// Possible values are: `ABANDON`.
  final pulumi.Input<String>? deletionPolicy;
  /// Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  final pulumi.Input<String>? gcRules;
  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to `true` allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  final pulumi.Input<bool>? ignoreWarnings;
  /// The name of the Bigtable instance.
  final pulumi.Input<String> instanceName;
  /// GC policy that applies to all cells older than the given age.
  final pulumi.Input<GCPolicyMaxAge>? maxAge;
  /// GC policy that applies to all versions of a cell except for the most recent.
  final pulumi.Input<List<GCPolicyMaxVersion>>? maxVersions;
  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  final pulumi.Input<String>? mode;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the table.
  final pulumi.Input<String> table;

  /// Creates a new [GCPolicyArgs].
  /// [columnFamily] The name of the column family.
  /// [deletionPolicy] The deletion policy for the GC policy.
  /// [gcRules] Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  /// [ignoreWarnings] Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// [instanceName] The name of the Bigtable instance.
  /// [maxAge] GC policy that applies to all cells older than the given age.
  /// [maxVersions] GC policy that applies to all versions of a cell except for the most recent.
  /// [mode] If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [table] The name of the table.
  GCPolicyArgs({
    required pulumi.Output<String> columnFamily,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? gcRules,
    pulumi.Output<bool>? ignoreWarnings,
    required pulumi.Output<String> instanceName,
    pulumi.Output<GCPolicyMaxAge>? maxAge,
    pulumi.Output<List<GCPolicyMaxVersion>>? maxVersions,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? project,
    required pulumi.Output<String> table,
  }) :
      columnFamily = pulumi.Input.asInput<String>(columnFamily),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      gcRules = pulumi.Input.asOptionalInput<String>(gcRules),
      ignoreWarnings = pulumi.Input.asOptionalInput<bool>(ignoreWarnings),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      maxAge = pulumi.Input.asOptionalInput<GCPolicyMaxAge>(maxAge),
      maxVersions = pulumi.Input.asOptionalInput<List<GCPolicyMaxVersion>>(maxVersions),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      project = pulumi.Input.asOptionalInput<String>(project),
      table = pulumi.Input.asInput<String>(table);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnFamily': columnFamily,
      'deletionPolicy': ?deletionPolicy,
      'gcRules': ?gcRules,
      'ignoreWarnings': ?ignoreWarnings,
      'instanceName': instanceName,
      'maxAge': ?pulumi.Input.mapOptionalInputValue<GCPolicyMaxAge, Map<String, dynamic>>(maxAge, (value) => value.toMap()),
      'maxVersions': ?pulumi.Input.mapOptionalInputValue<List<GCPolicyMaxVersion>, List<Map<String, dynamic>>>(maxVersions, (value) => pulumi.Input.encodeList<GCPolicyMaxVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'project': ?project,
      'table': table,
    };
  }

  factory GCPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GCPolicyArgs(
      columnFamily: pulumi.Output.create<String>(map['columnFamily'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      gcRules: map['gcRules'] == null ? null : pulumi.Output.create<String>(map['gcRules'] as String),
      ignoreWarnings: map['ignoreWarnings'] == null ? null : pulumi.Output.create<bool>(map['ignoreWarnings'] as bool),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      maxAge: map['maxAge'] == null ? null : pulumi.Output.create<GCPolicyMaxAge>(GCPolicyMaxAge.fromMap((map['maxAge'] as Map).cast<String, dynamic>())),
      maxVersions: map['maxVersions'] == null ? null : pulumi.Output.create<List<GCPolicyMaxVersion>>(pulumi.Input.decodeList<GCPolicyMaxVersion>(map['maxVersions'], (value) => GCPolicyMaxVersion.fromMap((value as Map).cast<String, dynamic>()))),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      table: pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

