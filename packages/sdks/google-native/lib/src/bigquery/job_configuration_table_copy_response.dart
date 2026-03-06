// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_configuration_response.dart';
import 'table_reference_response.dart';

class JobConfigurationTableCopyResponse {
  /// [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String> createDisposition;
  /// Custom encryption configuration (e.g., Cloud KMS keys).
  final pulumi.Input<EncryptionConfigurationResponse> destinationEncryptionConfiguration;
  /// [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  final pulumi.Input<dynamic> destinationExpirationTime;
  /// [Required] The destination table
  final pulumi.Input<TableReferenceResponse> destinationTable;
  /// [Optional] Supported operation types in table copy job.
  final pulumi.Input<String> operationType;
  /// [Pick one] Source table to copy.
  final pulumi.Input<TableReferenceResponse> sourceTable;
  /// [Pick one] Source tables to copy.
  final pulumi.Input<List<TableReferenceResponse>> sourceTables;
  /// [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  final pulumi.Input<String> writeDisposition;

  /// Creates a new [JobConfigurationTableCopyResponse].
  /// [createDisposition] [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  /// [destinationEncryptionConfiguration] Custom encryption configuration (e.g., Cloud KMS keys).
  /// [destinationExpirationTime] [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
  /// [destinationTable] [Required] The destination table
  /// [operationType] [Optional] Supported operation types in table copy job.
  /// [sourceTable] [Pick one] Source table to copy.
  /// [sourceTables] [Pick one] Source tables to copy.
  /// [writeDisposition] [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  const JobConfigurationTableCopyResponse({
    required this.createDisposition,
    required this.destinationEncryptionConfiguration,
    required this.destinationExpirationTime,
    required this.destinationTable,
    required this.operationType,
    required this.sourceTable,
    required this.sourceTables,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDisposition': createDisposition,
      'destinationEncryptionConfiguration': pulumi.Input.mapInputValue<EncryptionConfigurationResponse, Map<String, dynamic>>(destinationEncryptionConfiguration, (value) => value.toMap()),
      'destinationExpirationTime': destinationExpirationTime,
      'destinationTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(destinationTable, (value) => value.toMap()),
      'operationType': operationType,
      'sourceTable': pulumi.Input.mapInputValue<TableReferenceResponse, Map<String, dynamic>>(sourceTable, (value) => value.toMap()),
      'sourceTables': pulumi.Input.mapInputValue<List<TableReferenceResponse>, List<Map<String, dynamic>>>(sourceTables, (value) => pulumi.Input.encodeList<TableReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeDisposition': writeDisposition,
    };
  }

  factory JobConfigurationTableCopyResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationTableCopyResponse(
      createDisposition: pulumi.Input.fromValue(map['createDisposition'] as String),
      destinationEncryptionConfiguration: pulumi.Input.fromValue(EncryptionConfigurationResponse.fromMap((map['destinationEncryptionConfiguration']! as Map).cast<String, dynamic>())),
      destinationExpirationTime: pulumi.Input.fromValue(map['destinationExpirationTime']),
      destinationTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['destinationTable']! as Map).cast<String, dynamic>())),
      operationType: pulumi.Input.fromValue(map['operationType'] as String),
      sourceTable: pulumi.Input.fromValue(TableReferenceResponse.fromMap((map['sourceTable']! as Map).cast<String, dynamic>())),
      sourceTables: pulumi.Input.fromValue(pulumi.Input.decodeList<TableReferenceResponse>(map['sourceTables']!, (value) => TableReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      writeDisposition: pulumi.Input.fromValue(map['writeDisposition'] as String),
    );
  }
}

