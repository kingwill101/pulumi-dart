// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response_migrationcenter_v1alpha1.dart';

/// A resource that reports the import job errors at row level.
class ImportRowErrorResponseMigrationcenterV1alpha1 {
  /// The list of errors detected in the row.
  final pulumi.Input<List<ImportErrorResponseMigrationcenterV1alpha1>> errors;
  /// The row number where the error was detected.
  final pulumi.Input<int> rowNumber;
  /// The name of the VM in the row.
  final pulumi.Input<String> vmName;
  /// The VM UUID.
  final pulumi.Input<String> vmUuid;

  /// Creates a new [ImportRowErrorResponseMigrationcenterV1alpha1].
  /// [errors] The list of errors detected in the row.
  /// [rowNumber] The row number where the error was detected.
  /// [vmName] The name of the VM in the row.
  /// [vmUuid] The VM UUID.
  const ImportRowErrorResponseMigrationcenterV1alpha1({
    required this.errors,
    required this.rowNumber,
    required this.vmName,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.mapInputValue<List<ImportErrorResponseMigrationcenterV1alpha1>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ImportErrorResponseMigrationcenterV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowNumber': rowNumber,
      'vmName': vmName,
      'vmUuid': vmUuid,
    };
  }

  factory ImportRowErrorResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ImportRowErrorResponseMigrationcenterV1alpha1(
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(map['errors']!, (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      rowNumber: pulumi.Input.fromValue(map['rowNumber'] as int),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
      vmUuid: pulumi.Input.fromValue(map['vmUuid'] as String),
    );
  }
}

