// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration.dart';
import 'table_reference.dart';

class JobConfigurationTableCopy {
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? createDisposition;

  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfiguration>?
  destinationEncryptionConfiguration;

  /// [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  final pulumi.Input<dynamic>? destinationExpirationTime;

  /// [Required] The destination table
  final pulumi.Input<TableReference>? destinationTable;

  /// [Optional] Supported operation types in table copy job.
  final pulumi.Input<String>? operationType;

  /// [Pick one] Source table to copy.
  final pulumi.Input<TableReference>? sourceTable;

  /// [Pick one] Source tables to copy.
  final pulumi.Input<List<TableReference>>? sourceTables;

  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String>? writeDisposition;

  /// Creates a new [JobConfigurationTableCopy].
  /// [createDisposition] [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [destinationExpirationTime] [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  /// [destinationTable] [Required] The destination table
  /// [operationType] [Optional] Supported operation types in table copy job.
  /// [sourceTable] [Pick one] Source table to copy.
  /// [sourceTables] [Pick one] Source tables to copy.
  /// [writeDisposition] [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  JobConfigurationTableCopy({
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationExpirationTime,
    this.destinationTable,
    this.operationType,
    this.sourceTable,
    this.sourceTables,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDisposition': ?createDisposition,
      'destinationEncryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfiguration,
            Map<String, dynamic>
          >(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationExpirationTime': ?destinationExpirationTime,
      'destinationTable':
          ?pulumi.Input.mapOptionalInputValue<
            TableReference,
            Map<String, dynamic>
          >(destinationTable, (value) => value.toMap()),
      'operationType': ?operationType,
      'sourceTable':
          ?pulumi.Input.mapOptionalInputValue<
            TableReference,
            Map<String, dynamic>
          >(sourceTable, (value) => value.toMap()),
      'sourceTables':
          ?pulumi.Input.mapOptionalInputValue<
            List<TableReference>,
            List<Map<String, dynamic>>
          >(
            sourceTables,
            (value) =>
                pulumi.Input.encodeList<TableReference, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobConfigurationTableCopy.fromMap(Map<String, dynamic> map) {
    return JobConfigurationTableCopy(
      createDisposition: (() {
        final guardedValue = map['createDisposition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationEncryptionConfiguration: (() {
        final guardedValue = map['destinationEncryptionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      destinationExpirationTime: (() {
        final guardedValue = map['destinationExpirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      destinationTable: (() {
        final guardedValue = map['destinationTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TableReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      operationType: (() {
        final guardedValue = map['operationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceTable: (() {
        final guardedValue = map['sourceTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TableReference.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sourceTables: (() {
        final guardedValue = map['sourceTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TableReference>(
            guardedValue,
            (value) =>
                TableReference.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      writeDisposition: (() {
        final guardedValue = map['writeDisposition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
