// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_metadata_response.dart';
import 'system_data_response.dart';
import 'validation_error_response.dart';

/// Result data returned by getFileImport.
class GetFileImportResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The content type of this file.
  final String? contentType;
  /// The time the file was imported.
  final String? createdTimeUTC;
  /// Represents the error file (if the import was ingested with errors or failed the validation).
  final FileMetadataResponse? errorFile;
  /// An ordered list of some of the errors that were encountered during validation.
  final List<ValidationErrorResponse>? errorsPreview;
  /// The time the files associated with this import are deleted from the storage account.
  final String? filesValidUntilTimeUTC;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Represents the imported file.
  final FileMetadataResponse? importFile;
  /// The time the file import record is soft deleted from the database and history.
  final String? importValidUntilTimeUTC;
  /// The number of records that have been successfully ingested.
  final int? ingestedRecordCount;
  /// Describes how to ingest the records in the file.
  final String? ingestionMode;
  /// The name of the resource
  final String? name;
  /// The source for the data in the file.
  final String? source;
  /// The state of the file import.
  final String? state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The number of records in the file.
  final int? totalRecordCount;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The number of records that have passed validation.
  final int? validRecordCount;

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
    this.azureApiVersion,
    this.contentType,
    this.createdTimeUTC,
    this.errorFile,
    this.errorsPreview,
    this.filesValidUntilTimeUTC,
    this.id,
    this.importFile,
    this.importValidUntilTimeUTC,
    this.ingestedRecordCount,
    this.ingestionMode,
    this.name,
    this.source,
    this.state,
    this.systemData,
    this.totalRecordCount,
    this.type,
    this.validRecordCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'contentType': ?contentType,
      'createdTimeUTC': ?createdTimeUTC,
      'errorFile': ?errorFile?.toMap(),
      'errorsPreview': ?(() { final guardedValue = errorsPreview; if (guardedValue == null) return null; return pulumi.Input.encodeList<ValidationErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filesValidUntilTimeUTC': ?filesValidUntilTimeUTC,
      'id': ?id,
      'importFile': ?importFile?.toMap(),
      'importValidUntilTimeUTC': ?importValidUntilTimeUTC,
      'ingestedRecordCount': ?ingestedRecordCount,
      'ingestionMode': ?ingestionMode,
      'name': ?name,
      'source': ?source,
      'state': ?state,
      'systemData': ?systemData?.toMap(),
      'totalRecordCount': ?totalRecordCount,
      'type': ?type,
      'validRecordCount': ?validRecordCount,
    };
  }

  factory GetFileImportResult.fromMap(Map<String, dynamic> map) {
    return GetFileImportResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimeUTC: (() { final guardedValue = map['createdTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorFile: (() { final guardedValue = map['errorFile']; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      errorsPreview: (() { final guardedValue = map['errorsPreview']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ValidationErrorResponse>(guardedValue, (value) => ValidationErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      filesValidUntilTimeUTC: (() { final guardedValue = map['filesValidUntilTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importFile: (() { final guardedValue = map['importFile']; if (guardedValue == null) return null; return FileMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      importValidUntilTimeUTC: (() { final guardedValue = map['importValidUntilTimeUTC']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingestedRecordCount: (() { final guardedValue = map['ingestedRecordCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ingestionMode: (() { final guardedValue = map['ingestionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      totalRecordCount: (() { final guardedValue = map['totalRecordCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validRecordCount: (() { final guardedValue = map['validRecordCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
