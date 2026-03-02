// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcpolicy_max_age.dart';
import 'gcpolicy_max_version.dart';

/// Input properties used for looking up and filtering GCPolicy resources.
class GCPolicyState {
  /// The name of the column family.
  final pulumi.Input<String>? columnFamily;
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
  final pulumi.Input<String>? instanceName;
  /// GC policy that applies to all cells older than the given age.
  final pulumi.Input<GCPolicyMaxAge>? maxAge;
  /// GC policy that applies to all versions of a cell except for the most recent.
  final pulumi.Input<List<GCPolicyMaxVersion>>? maxVersions;
  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  final pulumi.Input<String>? mode;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the table.
  final pulumi.Input<String>? table;

  /// Creates a new [GCPolicyState].
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
  GCPolicyState({
    this.columnFamily,
    this.deletionPolicy,
    this.gcRules,
    this.ignoreWarnings,
    this.instanceName,
    this.maxAge,
    this.maxVersions,
    this.mode,
    this.project,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnFamily': ?columnFamily,
      'deletionPolicy': ?deletionPolicy,
      'gcRules': ?gcRules,
      'ignoreWarnings': ?ignoreWarnings,
      'instanceName': ?instanceName,
      'maxAge': ?pulumi.Input.mapOptionalInputValue<GCPolicyMaxAge, Map<String, dynamic>>(maxAge, (value) => value.toMap()),
      'maxVersions': ?pulumi.Input.mapOptionalInputValue<List<GCPolicyMaxVersion>, List<Map<String, dynamic>>>(maxVersions, (value) => pulumi.Input.encodeList<GCPolicyMaxVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'project': ?project,
      'table': ?table,
    };
  }

  factory GCPolicyState.fromMap(Map<String, dynamic> map) {
    return GCPolicyState(
      columnFamily: map['columnFamily'] == null ? null : (map['columnFamily']! as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      gcRules: map['gcRules'] == null ? null : (map['gcRules']! as String).input(),
      ignoreWarnings: map['ignoreWarnings'] == null ? null : (map['ignoreWarnings']! as bool).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      maxAge: map['maxAge'] == null ? null : (GCPolicyMaxAge.fromMap((map['maxAge']! as Map).cast<String, dynamic>())).input(),
      maxVersions: map['maxVersions'] == null ? null : (pulumi.Input.decodeList<GCPolicyMaxVersion>(map['maxVersions']!, (value) => GCPolicyMaxVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
    );
  }
}

