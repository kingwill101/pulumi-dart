// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_log_settings_response.dart';
import 'enterprise_crm_eventbus_proto_value_type_response.dart';

/// Attributes are additional options that can be associated with each event property. For more information, see
class EnterpriseCrmEventbusProtoAttributesResponse {
  /// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  final pulumi.Input<String> dataType;
  /// Used to define defaults.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueTypeResponse> defaultValue;
  /// Required for event execution. The validation will be done by the event bus when the event is triggered.
  final pulumi.Input<bool> isRequired;
  /// Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  final pulumi.Input<bool> isSearchable;
  /// See
  final pulumi.Input<EnterpriseCrmEventbusProtoLogSettingsResponse> logSettings;
  /// Used to indicate if the ParameterEntry is a read only field or not.
  final pulumi.Input<bool> readOnly;
  final pulumi.Input<String> searchable;
  /// List of tasks that can view this property, if empty then all.
  final pulumi.Input<List<String>> taskVisibility;

  /// Creates a new [EnterpriseCrmEventbusProtoAttributesResponse].
  /// [dataType] Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  /// [defaultValue] Used to define defaults.
  /// [isRequired] Required for event execution. The validation will be done by the event bus when the event is triggered.
  /// [isSearchable] Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  /// [logSettings] See
  /// [readOnly] Used to indicate if the ParameterEntry is a read only field or not.
  /// [searchable] Required.
  /// [taskVisibility] List of tasks that can view this property, if empty then all.
  EnterpriseCrmEventbusProtoAttributesResponse({
    required this.dataType,
    required this.defaultValue,
    required this.isRequired,
    required this.isSearchable,
    required this.logSettings,
    required this.readOnly,
    required this.searchable,
    required this.taskVisibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'defaultValue': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoValueTypeResponse, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'isRequired': isRequired,
      'isSearchable': isSearchable,
      'logSettings': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoLogSettingsResponse, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'readOnly': readOnly,
      'searchable': searchable,
      'taskVisibility': taskVisibility,
    };
  }

  factory EnterpriseCrmEventbusProtoAttributesResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoAttributesResponse(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      defaultValue: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoValueTypeResponse.fromMap((map['defaultValue']! as Map).cast<String, dynamic>())),
      isRequired: pulumi.Input.fromValue(map['isRequired'] as bool),
      isSearchable: pulumi.Input.fromValue(map['isSearchable'] as bool),
      logSettings: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoLogSettingsResponse.fromMap((map['logSettings']! as Map).cast<String, dynamic>())),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      searchable: pulumi.Input.fromValue(map['searchable'] as String),
      taskVisibility: pulumi.Input.fromValue((map['taskVisibility'] as List).cast<String>()),
    );
  }
}

