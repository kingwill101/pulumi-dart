// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmEventbusProtoParameterEntryResponse {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String> key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmEventbusProtoParameterValueTypeResponse> value;

  /// Creates a new [EnterpriseCrmEventbusProtoParameterEntryResponse].
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  const EnterpriseCrmEventbusProtoParameterEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoParameterValueTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoParameterEntryResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParameterEntryResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoParameterValueTypeResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}
