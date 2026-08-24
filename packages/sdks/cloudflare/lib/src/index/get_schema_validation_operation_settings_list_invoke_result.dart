// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_validation_operation_settings_list_result.dart';

/// Result data returned by getSchemaValidationOperationSettingsList.
class GetSchemaValidationOperationSettingsListInvokeResult {
  final int? maxItems;
  final List<GetSchemaValidationOperationSettingsListResult>? results;
  final String? zoneId;

  /// Creates a new [GetSchemaValidationOperationSettingsListInvokeResult].
  /// [maxItems] Optional.
  /// [results] Optional.
  /// [zoneId] Optional.
  const GetSchemaValidationOperationSettingsListInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSchemaValidationOperationSettingsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationOperationSettingsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationOperationSettingsListInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSchemaValidationOperationSettingsListResult>(guardedValue, (value) => GetSchemaValidationOperationSettingsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
