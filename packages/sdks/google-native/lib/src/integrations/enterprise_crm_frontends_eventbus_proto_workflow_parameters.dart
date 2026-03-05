// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameter_entry.dart';

/// LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly like the backend version except that instead of flattening protobuf parameters and treating every field and subfield of a protobuf parameter as a separate parameter, the fields/subfields of a protobuf parameter will be nested as "children" (see 'children' field below) parameters of the parent parameter. Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for more information about WorkflowParameters.
class EnterpriseCrmFrontendsEventbusProtoWorkflowParameters {
  /// Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>>? parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoWorkflowParameters].
  /// [parameters] Parameters are a part of Event and can be used to communiticate between different tasks that are part of the same workflow execution.
  EnterpriseCrmFrontendsEventbusProtoWorkflowParameters({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoWorkflowParameters(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>(guardedValue, (value) => EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

