// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_automated_backup_policy.dart';
import 'table_column_family.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// Defines an automated backup policy for a table, specified by Retention Period and Frequency. To _create_ a table with automated backup disabled, either omit the automated_backup_policy argument, or set both Retention Period and Frequency properties to "0". To disable automated backup on an _existing_ table that has automated backup enabled, set _both_ Retention Period and Frequency properties to "0". When updating an existing table, to modify the Retention Period or Frequency properties of the resource's automated backup policy, set the respective property to a non-zero value. If the automated_backup_policy argument is not provided in the configuration on update, the resource's automated backup policy will _not_ be modified.
  ///
  /// -----
  final pulumi.Input<TableAutomatedBackupPolicy>? automatedBackupPolicy;
  /// Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  final pulumi.Input<String>? changeStreamRetention;
  /// A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  final pulumi.Input<List<TableColumnFamily>>? columnFamilies;
  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  final pulumi.Input<String>? deletionProtection;
  /// The name of the Bigtable instance.
  final pulumi.Input<String>? instanceName;
  /// The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// Note that in-place update is not supported, and any in-place modification to the schema will lead to failure.
  /// To update a schema, please clear it (by omitting the field), and update the resource again with a new schema.\n
  ///
  /// The schema must be a valid JSON encoded string representing a Type's struct protobuf message. Note that for bytes sequence (like delimited_bytes.delimiter)
  /// the delimiter must be base64 encoded. For example, if you want to set a delimiter to a single byte character "#", it should be set to "Iw==", which is the base64 encoding of the byte sequence "#".
  final pulumi.Input<String>? rowKeySchema;
  /// A list of predefined keys to split the table on.
  /// !> **Warning:** Modifying the `split_keys` of an existing table will cause the provider
  /// to delete/recreate the entire `gcp.bigtable.Table` resource.
  final pulumi.Input<List<String>>? splitKeys;

  /// Creates a new [TableState].
  /// [automatedBackupPolicy] Defines an automated backup policy for a table, specified by Retention Period and Frequency. To _create_ a table with automated backup disabled, either omit the automated_backup_policy argument, or set both Retention Period and Frequency properties to "0". To disable automated backup on an _existing_ table that has automated backup enabled, set _both_ Retention Period and Frequency properties to "0". When updating an existing table, to modify the Retention Period or Frequency properties of the resource's automated backup policy, set the respective property to a non-zero value. If the automated_backup_policy argument is not provided in the configuration on update, the resource's automated backup policy will _not_ be modified.
  /// [changeStreamRetention] Duration to retain change stream data for the table. Set to 0 to disable. Must be between 1 and 7 days.
  /// [columnFamilies] A group of columns within a table which share a common configuration. This can be specified multiple times. Structure is documented below.
  /// [deletionProtection] A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, deletion protection will be set to UNPROTECTED.
  /// [instanceName] The name of the Bigtable instance.
  /// [name] The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [rowKeySchema] Defines the row key schema of a table. To create or update a table with a row key schema, specify this argument.
  /// [splitKeys] A list of predefined keys to split the table on.
  TableState({
    this.automatedBackupPolicy,
    this.changeStreamRetention,
    this.columnFamilies,
    this.deletionProtection,
    this.instanceName,
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
      'deletionProtection': ?deletionProtection,
      'instanceName': ?instanceName,
      'name': ?name,
      'project': ?project,
      'rowKeySchema': ?rowKeySchema,
      'splitKeys': ?splitKeys,
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      automatedBackupPolicy: map['automatedBackupPolicy'] == null ? null : (TableAutomatedBackupPolicy.fromMap((map['automatedBackupPolicy']! as Map).cast<String, dynamic>())).input(),
      changeStreamRetention: map['changeStreamRetention'] == null ? null : (map['changeStreamRetention']! as String).input(),
      columnFamilies: map['columnFamilies'] == null ? null : (pulumi.Input.decodeList<TableColumnFamily>(map['columnFamilies']!, (value) => TableColumnFamily.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rowKeySchema: map['rowKeySchema'] == null ? null : (map['rowKeySchema']! as String).input(),
      splitKeys: map['splitKeys'] == null ? null : ((map['splitKeys']! as List).cast<String>()).input(),
    );
  }
}

