// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_metadata_response.dart';
import 'system_data_response.dart';
import 'validation_error_response.dart';

/// Result data returned by getFileImport.
class GetFileImportResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The content type of this file.
  final String contentType;
  /// The time the file was imported.
  final String createdTimeUTC;
  /// Represents the error file (if the import was ingested with errors or failed the validation).
  final FileMetadataResponse errorFile;
  /// An ordered list of some of the errors that were encountered during validation.
  final List<ValidationErrorResponse> errorsPreview;
  /// The time the files associated with this import are deleted from the storage account.
  final String filesValidUntilTimeUTC;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Represents the imported file.
  final FileMetadataResponse importFile;
  /// The time the file import record is soft deleted from the database and history.
  final String importValidUntilTimeUTC;
  /// The number of records that have been successfully ingested.
  final int ingestedRecordCount;
  /// Describes how to ingest the records in the file.
  final String ingestionMode;
  /// The name of the resource
  final String name;
  /// The source for the data in the file.
  final String source;
  /// The state of the file import.
  final String state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The number of records in the file.
  final int totalRecordCount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The number of records that have passed validation.
  final int validRecordCount;

  /// Creates a new [GetFileImportResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentType] The content type of this file.
  /// [createdTimeUTC] The time the file was imported.
  /// [errorFile] Represents the error file (if the import was ingested with errors or failed the validation).
  /// [errorsPreview] An ordered list of some of the errors that were encountered during validation.
  /// [filesValidUntilTimeUTC] The time the files associated with this import are deleted from the storage account.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [importFile] Represents the imported file.
  /// [importValidUntilTimeUTC] The time the file import record is soft deleted from the database and history.
  /// [ingestedRecordCount] The number of records that have been successfully ingested.
  /// [ingestionMode] Describes how to ingest the records in the file.
  /// [name] The name of the resource
  /// [source] The source for the data in the file.
  /// [state] The state of the file import.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [totalRecordCount] The number of records in the file.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validRecordCount] The number of records that have passed validation.
  const GetFileImportResult({
    required this.azureApiVersion,
    required this.contentType,
    required this.createdTimeUTC,
    required this.errorFile,
    required this.errorsPreview,
    required this.filesValidUntilTimeUTC,
    required this.id,
    required this.importFile,
    required this.importValidUntilTimeUTC,
    required this.ingestedRecordCount,
    required this.ingestionMode,
    required this.name,
    required this.source,
    required this.state,
    required this.systemData,
    required this.totalRecordCount,
    required this.type,
    required this.validRecordCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentType': contentType,
      'createdTimeUTC': createdTimeUTC,
      'errorFile': errorFile.toMap(),
      'errorsPreview': pulumi.Input.encodeList<ValidationErrorResponse, Map<String, dynamic>>(errorsPreview, (value) => value.toMap()),
      'filesValidUntilTimeUTC': filesValidUntilTimeUTC,
      'id': id,
      'importFile': importFile.toMap(),
      'importValidUntilTimeUTC': importValidUntilTimeUTC,
      'ingestedRecordCount': ingestedRecordCount,
      'ingestionMode': ingestionMode,
      'name': name,
      'source': source,
      'state': state,
      'systemData': systemData.toMap(),
      'totalRecordCount': totalRecordCount,
      'type': type,
      'validRecordCount': validRecordCount,
    };
  }

  factory GetFileImportResult.fromMap(Map<String, dynamic> map) {
    return GetFileImportResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentType: map['contentType'] as String,
      createdTimeUTC: map['createdTimeUTC'] as String,
      errorFile: FileMetadataResponse.fromMap((map['errorFile']! as Map).cast<String, dynamic>()),
      errorsPreview: pulumi.Input.decodeList<ValidationErrorResponse>(map['errorsPreview']!, (value) => ValidationErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      filesValidUntilTimeUTC: map['filesValidUntilTimeUTC'] as String,
      id: map['id'] as String,
      importFile: FileMetadataResponse.fromMap((map['importFile']! as Map).cast<String, dynamic>()),
      importValidUntilTimeUTC: map['importValidUntilTimeUTC'] as String,
      ingestedRecordCount: map['ingestedRecordCount'] as int,
      ingestionMode: map['ingestionMode'] as String,
      name: map['name'] as String,
      source: map['source'] as String,
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      totalRecordCount: map['totalRecordCount'] as int,
      type: map['type'] as String,
      validRecordCount: map['validRecordCount'] as int,
    );
  }
}
