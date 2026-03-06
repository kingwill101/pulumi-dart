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
  const EnterpriseCrmEventbusProtoAttributes({
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
      'dataType': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoAttributesDataType, String>(dataType, (value) => value.wireValue),
      'defaultValue': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoValueType, Map<String, dynamic>>(defaultValue, (value) => value.toMap()),
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'logSettings': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoLogSettings, Map<String, dynamic>>(logSettings, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'searchable': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoAttributesSearchable, String>(searchable, (value) => value.wireValue),
      'taskVisibility': ?taskVisibility,
    };
  }

  factory EnterpriseCrmEventbusProtoAttributes.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoAttributes(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoAttributesDataType.fromValue(guardedValue as String)); })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isRequired: (() { final guardedValue = map['isRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSearchable: (() { final guardedValue = map['isSearchable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logSettings: (() { final guardedValue = map['logSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      searchable: (() { final guardedValue = map['searchable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoAttributesSearchable.fromValue(guardedValue as String)); })(),
      taskVisibility: (() { final guardedValue = map['taskVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

