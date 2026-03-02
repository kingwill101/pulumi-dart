// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_parameter_entry.dart';

/// LINT.IfChange This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus. Please see
class EnterpriseCrmFrontendsEventbusProtoEventParameters {
  /// Parameters are a part of Event and can be used to communicate between different tasks that are part of the same workflow execution.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>>? parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoEventParameters].
  /// [parameters] Parameters are a part of Event and can be used to communicate between different tasks that are part of the same workflow execution.
  EnterpriseCrmFrontendsEventbusProtoEventParameters({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoParameterEntry>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoParameterEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoEventParameters.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoEventParameters(
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoParameterEntry>(map['parameters'], (value) => EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

