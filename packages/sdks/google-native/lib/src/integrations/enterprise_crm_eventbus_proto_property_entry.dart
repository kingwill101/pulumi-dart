// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_value_type.dart';

/// Key-value pair of EventBus property.
class EnterpriseCrmEventbusProtoPropertyEntry {
  /// Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  final pulumi.Input<String>? key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueType>? value;

  /// Creates a new [EnterpriseCrmEventbusProtoPropertyEntry].
  /// [key] Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  const EnterpriseCrmEventbusProtoPropertyEntry({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoValueType, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoPropertyEntry.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoPropertyEntry(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
