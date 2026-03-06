// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_parameter_entry.dart';

/// LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see
class EnterpriseCrmEventbusProtoEventParameters {
  /// Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoParameterEntry>>? parameters;

  /// Creates a new [EnterpriseCrmEventbusProtoEventParameters].
  /// [parameters] Parameters are a part of Event and can be used to communicate between different tasks that are part of the same integration execution.
  const EnterpriseCrmEventbusProtoEventParameters({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoParameterEntry>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoParameterEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmEventbusProtoEventParameters.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoEventParameters(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoParameterEntry>(guardedValue, (value) => EnterpriseCrmEventbusProtoParameterEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

