// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_value_type_response.dart';

/// Key-value pair of EventBus property.
class EnterpriseCrmEventbusProtoPropertyEntryResponse {
  /// Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  final pulumi.Input<String> key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmEventbusProtoValueTypeResponse> value;

  /// Creates a new [EnterpriseCrmEventbusProtoPropertyEntryResponse].
  /// [key] Key is used to retrieve the corresponding property value. This should be unique for a given fired event. The Tasks should be aware of the keys used while firing the events for them to be able to retrieve the values.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmEventbusProtoPropertyEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoValueTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoPropertyEntryResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoPropertyEntryResponse(
      key: (map['key'] as String).input(),
      value: (EnterpriseCrmEventbusProtoValueTypeResponse.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

