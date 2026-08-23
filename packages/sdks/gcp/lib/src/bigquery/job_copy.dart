// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_copy_destination_encryption_configuration.dart';
import 'job_copy_destination_table.dart';
import 'job_copy_source_table.dart';

class JobCopy {
  /// Specifies whether the job is allowed to create new tables. The following values are supported:
  /// CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table.
  /// CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result.
  /// Creation, truncation and append actions occur as one atomic update upon job completion
  /// Default value is `CREATE_IF_NEEDED`.
  /// Possible values are: `CREATE_IF_NEEDED`, `CREATE_NEVER`.
  final pulumi.Input<String>? createDisposition;
  /// Custom encryption configuration (e.g., Cloud KMS keys)
  /// Structure is documented below.
  final pulumi.Input<JobCopyDestinationEncryptionConfiguration>? destinationEncryptionConfiguration;
  /// The destination table.
  /// Structure is documented below.
  final pulumi.Input<JobCopyDestinationTable>? destinationTable;
  /// Source tables to copy.
  /// Structure is documented below.
  final pulumi.Input<List<JobCopySourceTable>> sourceTables;
  /// Specifies the action that occurs if the destination table already exists. The following values are supported:
  /// WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result.
  /// WRITE_APPEND: If the table already exists, BigQuery appends the data to the table.
  /// WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result.
  /// Each action is atomic and only occurs if BigQuery is able to complete the job successfully.
  /// Creation, truncation and append actions occur as one atomic update upon job completion.
  /// Default value is `WRITE_EMPTY`.
  /// Possible values are: `WRITE_TRUNCATE`, `WRITE_APPEND`, `WRITE_EMPTY`.
  final pulumi.Input<String>? writeDisposition;

  /// Creates a new [JobCopy].
  /// [createDisposition] Specifies whether the job is allowed to create new tables. The following values are supported:
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys)
  /// [destinationTable] The destination table.
  /// [sourceTables] Source tables to copy.
  /// [writeDisposition] Specifies the action that occurs if the destination table already exists. The following values are supported:
  const JobCopy({
    this.createDisposition,
    this.destinationEncryptionConfiguration,
    this.destinationTable,
    required this.sourceTables,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDisposition': ?createDisposition,
      'destinationEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<JobCopyDestinationEncryptionConfiguration, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationTable': ?pulumi.Input.mapOptionalInputValue<JobCopyDestinationTable, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'sourceTables': pulumi.Input.mapInputValue<List<JobCopySourceTable>, List<Map<String, dynamic>>>(sourceTables, (value) => pulumi.Input.encodeList<JobCopySourceTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeDisposition': ?writeDisposition,
    };
  }

  factory JobCopy.fromMap(Map<String, dynamic> map) {
    return JobCopy(
      createDisposition: (() { final guardedValue = map['createDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEncryptionConfiguration: (() { final guardedValue = map['destinationEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobCopyDestinationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationTable: (() { final guardedValue = map['destinationTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobCopyDestinationTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceTables: pulumi.Input.fromValue(pulumi.Input.decodeList<JobCopySourceTable>(map['sourceTables']!, (value) => JobCopySourceTable.fromMap((value as Map).cast<String, dynamic>()))),
      writeDisposition: (() { final guardedValue = map['writeDisposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
