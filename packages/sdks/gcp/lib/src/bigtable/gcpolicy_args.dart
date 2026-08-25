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
  /// The deletion policy for the GC policy. Setting ABANDON allows the resource
  /// to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted
  /// in a replicated instance.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "DELETE" or "", deleting the resource is allowed.
  ///
  /// Possible values: PREVENT, ABANDON, DELETE.
  final pulumi.Input<String?>? deletionPolicy;
  /// Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `maxAge` and `maxVersion`. Conflicts with `mode`, `maxAge` and `maxVersion`.
  final pulumi.Input<String?>? gcRules;
  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to `true` allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  final pulumi.Input<bool?>? ignoreWarnings;
  /// The name of the Bigtable instance.
  final pulumi.Input<String> instanceName;
  /// GC policy that applies to all cells older than the given age.
  final pulumi.Input<GCPolicyMaxAge?>? maxAge;
  /// GC policy that applies to all versions of a cell except for the most recent.
  final pulumi.Input<List<GCPolicyMaxVersion>?>? maxVersions;
  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  final pulumi.Input<String?>? mode;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the table.
  final pulumi.Input<String> table;

  /// Creates a new [GCPolicyArgs].
  /// [columnFamily] The name of the column family.
  /// [deletionPolicy] The deletion policy for the GC policy. Setting ABANDON allows the resource
  /// [gcRules] Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `maxAge` and `maxVersion`. Conflicts with `mode`, `maxAge` and `maxVersion`.
  /// [ignoreWarnings] Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// [instanceName] The name of the Bigtable instance.
  /// [maxAge] GC policy that applies to all cells older than the given age.
  /// [maxVersions] GC policy that applies to all versions of a cell except for the most recent.
  /// [mode] If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [table] The name of the table.
  const GCPolicyArgs({
    required this.columnFamily,
    this.deletionPolicy,
    this.gcRules,
    this.ignoreWarnings,
    required this.instanceName,
    this.maxAge,
    this.maxVersions,
    this.mode,
    this.project,
    required this.table,
  });

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
      columnFamily: pulumi.Input.fromValue(map['columnFamily'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcRules: (() { final guardedValue = map['gcRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreWarnings: (() { final guardedValue = map['ignoreWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCPolicyMaxAge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxVersions: (() { final guardedValue = map['maxVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GCPolicyMaxVersion>(guardedValue, (value) => GCPolicyMaxVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
