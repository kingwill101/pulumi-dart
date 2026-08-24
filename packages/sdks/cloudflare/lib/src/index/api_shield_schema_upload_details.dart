// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_schema_upload_details_warning.dart';

class ApiShieldSchemaUploadDetails {
  /// Diagnostic warning events that occurred during processing. These events are non-critical errors found within the schema.
  final pulumi.Input<List<ApiShieldSchemaUploadDetailsWarning>?>? warnings;

  /// Creates a new [ApiShieldSchemaUploadDetails].
  /// [warnings] Diagnostic warning events that occurred during processing. These events are non-critical errors found within the schema.
  const ApiShieldSchemaUploadDetails({
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<ApiShieldSchemaUploadDetailsWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<ApiShieldSchemaUploadDetailsWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiShieldSchemaUploadDetails.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaUploadDetails(
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiShieldSchemaUploadDetailsWarning>(guardedValue, (value) => ApiShieldSchemaUploadDetailsWarning.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
