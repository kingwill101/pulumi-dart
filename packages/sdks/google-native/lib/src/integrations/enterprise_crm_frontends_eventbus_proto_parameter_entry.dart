// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_parameter_entry_data_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmFrontendsEventbusProtoParameterEntry {
  /// Explicitly getting the type of the parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterEntryDataType>?
  dataType;

  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final pulumi.Input<String>? key;

  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterValueType>?
  value;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterEntry].
  /// [dataType] Explicitly getting the type of the parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmFrontendsEventbusProtoParameterEntry({
    this.dataType,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoParameterEntryDataType,
            String
          >(dataType, (value) => value.wireValue),
      'key': ?key,
      'value':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoParameterValueType,
            Map<String, dynamic>
          >(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoParameterEntry(
      dataType: (() {
        final guardedValue = map['dataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoParameterEntryDataType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
