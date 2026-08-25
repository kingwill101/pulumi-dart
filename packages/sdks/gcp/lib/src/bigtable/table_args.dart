// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_automated_backup_policy.dart';
import 'table_column_family.dart';

/// {@template pulumi_bigtable_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_bigtable_table_table_args_doc}
class TableArgs {
  /// Defines an automated backup policy for a table, specified by `retentionPeriod` and `frequency`. To create a table with automated backup disabled, either omit the `automatedBackupPolicy` argument or set both `retentionPeriod` and `frequency` to "0". To disable automated backup on an existing table that has automated backup enabled, set both `retentionPeriod` and `frequency` to "0". When updating an existing table, change the `retentionPeriod` or `frequency` by setting the respective property to a non-zero value. The policy also accepts an optional `locations` list to specify backup storage locations; if `locations` is omitted, the policy defaults to all clusters in the instance. If the `automatedBackupPolicy` argument is not provided on update, the resource's automated backup policy will not be modified.
  final pulumi.Input<TableAutomatedBackupPolicy?>? automatedBackupPolicy;
  /// Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  final pulumi.Input<String?>? changeStreamRetention;
  /// A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  final pulumi.Input<List<TableColumnFamily>?>? columnFamilies;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// -----
  final pulumi.Input<String?>? deletionPolicy;
  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  final pulumi.Input<String?>? deletionProtection;
  /// The name of the Bigtable instance.
  final pulumi.Input<String> instanceName;
  /// The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// Note that in-place update is not supported, and any in-place modification to the schema will lead to failure.
  /// To update a schema, please clear it (by omitting the field), and update the resource again with a new schema.\n
  ///
  /// The schema must be a valid JSON encoded string representing a Type's struct protobuf message. Note that for bytes sequence (like delimited_bytes.delimiter)
  /// the delimiter must be base64 encoded. For example, if you want to set a delimiter to a single byte character "#", it should be set to "Iw==", which is the base64 encoding of the byte sequence "#".
  final pulumi.Input<String?>? rowKeySchema;
  /// A list of predefined keys to split the table on.
  /// &gt; **Warning:** Modifying the `splitKeys` of an existing table will cause the provider
  /// to delete/recreate the entire `gcp.bigtable.Table` resource.
  final pulumi.Input<List<String>?>? splitKeys;

  /// Creates a new [TableArgs].
  /// [automatedBackupPolicy] Defines an automated backup policy for a table, specified by `retentionPeriod` and `frequency`. To create a table with automated backup disabled, either omit the `automatedBackupPolicy` argument or set both `retentionPeriod` and `frequency` to "0". To disable automated backup on an existing table that has automated backup enabled, set both `retentionPeriod` and `frequency` to "0". When updating an existing table, change the `retentionPeriod` or `frequency` by setting the respective property to a non-zero value. The policy also accepts an optional `locations` list to specify backup storage locations; if `locations` is omitted, the policy defaults to all clusters in the instance. If the `automatedBackupPolicy` argument is not provided on update, the resource's automated backup policy will not be modified.
  /// [changeStreamRetention] Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  /// [columnFamilies] A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  /// [instanceName] The name of the Bigtable instance.
  /// [name] The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [rowKeySchema] Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// [splitKeys] A list of predefined keys to split the table on.
  const TableArgs({
    this.automatedBackupPolicy,
    this.changeStreamRetention,
    this.columnFamilies,
    this.deletionPolicy,
    this.deletionProtection,
    required this.instanceName,
    this.name,
    this.project,
    this.rowKeySchema,
    this.splitKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedBackupPolicy': ?pulumi.Input.mapOptionalInputValue<TableAutomatedBackupPolicy, Map<String, dynamic>>(automatedBackupPolicy, (value) => value.toMap()),
      'changeStreamRetention': ?changeStreamRetention,
      'columnFamilies': ?pulumi.Input.mapOptionalInputValue<List<TableColumnFamily>, List<Map<String, dynamic>>>(columnFamilies, (value) => pulumi.Input.encodeList<TableColumnFamily, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'instanceName': instanceName,
      'name': ?name,
      'project': ?project,
      'rowKeySchema': ?rowKeySchema,
      'splitKeys': ?splitKeys,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      automatedBackupPolicy: (() { final guardedValue = map['automatedBackupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableAutomatedBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      changeStreamRetention: (() { final guardedValue = map['changeStreamRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnFamilies: (() { final guardedValue = map['columnFamilies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TableColumnFamily>(guardedValue, (value) => TableColumnFamily.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowKeySchema: (() { final guardedValue = map['rowKeySchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      splitKeys: (() { final guardedValue = map['splitKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
