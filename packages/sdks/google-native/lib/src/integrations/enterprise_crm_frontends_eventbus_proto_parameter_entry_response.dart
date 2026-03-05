// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_parameter_value_type_response.dart';

/// Key-value pair of EventBus parameters.
class EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse {
  /// Explicitly getting the type of the parameter.
  final pulumi.Input<String> dataType;
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  final pulumi.Input<String> key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse> value;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse].
  /// [dataType] Explicitly getting the type of the parameter.
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the workflow definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse({
    required this.dataType,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'key': key,
      'value': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParameterEntryResponse(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoParameterValueTypeResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

