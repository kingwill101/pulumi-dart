// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_parameter_value_type.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmEventbusProtoParameterEntry {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String>? key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmEventbusProtoParameterValueType>? value;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterEntry].
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmEventbusProtoParameterEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoParameterValueType, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoParameterEntry.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterEntry(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (EnterpriseCrmEventbusProtoParameterValueType.fromMap((map['value']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

