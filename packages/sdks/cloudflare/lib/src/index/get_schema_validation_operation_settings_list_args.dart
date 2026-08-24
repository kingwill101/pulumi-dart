// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_schema_validation_operation_settings_list_get_schema_validation_operation_settings_list_args_doc}
/// Arguments for getSchemaValidationOperationSettingsList.
/// {@endtemplate}
/// {@macro pulumi_index_get_schema_validation_operation_settings_list_get_schema_validation_operation_settings_list_args_doc}
class GetSchemaValidationOperationSettingsListArgs {
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSchemaValidationOperationSettingsListArgs].
  /// [maxItems] Optional.
  /// [zoneId] Optional.
  const GetSchemaValidationOperationSettingsListArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationOperationSettingsListArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationOperationSettingsListArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
