// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_attributes_data_type.dart';
import 'enterprise_crm_eventbus_proto_attributes_searchable.dart';
import 'enterprise_crm_eventbus_proto_log_settings.dart';
import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Attributes are additional options that can be associated with each event property. For more information, see
class EnterpriseCrmEventbusProtoAttributes {
  /// Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  final pulumi.Input<EnterpriseCrmEventbusProtoAttributesDataType>? dataType;
  /// Used to define defaults.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueType>? defaultValue;
  /// Required for event execution. The validation will be done by the event bus when the event is triggered.
  final pulumi.Input<bool>? isRequired;
  /// Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  final pulumi.Input<bool>? isSearchable;
  /// See
  final pulumi.Input<EnterpriseCrmEventbusProtoLogSettings>? logSettings;
  /// Used to indicate if the ParameterEntry is a read only field or not.
  final pulumi.Input<bool>? readOnly;
  final pulumi.Input<EnterpriseCrmEventbusProtoAttributesSearchable>? searchable;
  /// List of tasks that can view this property, if empty then all.
  final pulumi.Input<List<String>>? taskVisibility;

  /// Creates a new [EnterpriseCrmEventbusProtoAttributes].
  /// [dataType] Things like URL, Email, Currency, Timestamp (rather than string, int64...)
  /// [defaultValue] Used to define defaults.
  /// [isRequired] Required for event execution. The validation will be done by the event bus when the event is triggered.
  /// [isSearchable] Used to indicate if a ParameterEntry should be converted to ParamIndexes for ST-Spanner full-text search. DEPRECATED: use searchable.
  /// [logSettings] See
  /// [readOnly] Used to indicate if the ParameterEntry is a read only field or not.
  /// [searchable] Optional.
  /// [taskVisibility] List of tasks that can view this property, if empty then all.
  EnterpriseCrmEventbusProtoAttributes({
    this.dataType,
    this.defaultValue,
    this.isRequired,
    this.isSearchable,
    this.logSettings,
    this.readOnly,
    this.searchable,
    this.taskVisibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoAttributesDataType, String>(dataType, (value) => value.value),
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoValueType, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'logSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoLogSettings, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'searchable': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoAttributesSearchable, String>(searchable, (value) => value.value),
      'taskVisibility': ?taskVisibility,
    };
  }

  factory EnterpriseCrmEventbusProtoAttributes.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoAttributes(
      dataType: map['dataType'] == null ? null : (EnterpriseCrmEventbusProtoAttributesDataType.fromValue(map['dataType'] as String)).input(),
      defaultValue: map['defaultValue'] == null ? null : (EnterpriseCrmEventbusProtoValueType.fromMap((map['defaultValue'] as Map).cast<String, dynamic>())).input(),
      isRequired: map['isRequired'] == null ? null : (map['isRequired'] as bool).input(),
      isSearchable: map['isSearchable'] == null ? null : (map['isSearchable'] as bool).input(),
      logSettings: map['logSettings'] == null ? null : (EnterpriseCrmEventbusProtoLogSettings.fromMap((map['logSettings'] as Map).cast<String, dynamic>())).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      searchable: map['searchable'] == null ? null : (EnterpriseCrmEventbusProtoAttributesSearchable.fromValue(map['searchable'] as String)).input(),
      taskVisibility: map['taskVisibility'] == null ? null : ((map['taskVisibility'] as List).cast<String>()).input(),
    );
  }
}

