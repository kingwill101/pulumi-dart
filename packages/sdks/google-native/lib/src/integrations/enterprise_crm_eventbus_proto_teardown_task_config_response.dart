// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_event_bus_properties_response.dart';
import 'enterprise_crm_eventbus_proto_event_parameters_response.dart';
import 'enterprise_crm_eventbus_proto_next_teardown_task_response.dart';

class EnterpriseCrmEventbusProtoTeardownTaskConfigResponse {
  /// The creator's email address.
  final pulumi.Input<String> creatorEmail;

  /// Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  final pulumi.Input<String> name;
  final pulumi.Input<EnterpriseCrmEventbusProtoNextTeardownTaskResponse>
  nextTeardownTask;

  /// The parameters the user can pass to this task.
  final pulumi.Input<EnterpriseCrmEventbusProtoEventParametersResponse>
  parameters;
  final pulumi.Input<EnterpriseCrmEventbusProtoEventBusPropertiesResponse>
  properties;

  /// Implementation class name.
  final pulumi.Input<String> teardownTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTeardownTaskConfigResponse].
  /// [creatorEmail] The creator's email address.
  /// [name] Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  /// [nextTeardownTask] Required.
  /// [parameters] The parameters the user can pass to this task.
  /// [properties] Required.
  /// [teardownTaskImplementationClassName] Implementation class name.
  EnterpriseCrmEventbusProtoTeardownTaskConfigResponse({
    required this.creatorEmail,
    required this.name,
    required this.nextTeardownTask,
    required this.parameters,
    required this.properties,
    required this.teardownTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorEmail': creatorEmail,
      'name': name,
      'nextTeardownTask':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoNextTeardownTaskResponse,
            Map<String, dynamic>
          >(nextTeardownTask, (value) => value.toMap()),
      'parameters':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoEventParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'properties':
          pulumi.Input.mapInputValue<
            EnterpriseCrmEventbusProtoEventBusPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'teardownTaskImplementationClassName':
          teardownTaskImplementationClassName,
    };
  }

  factory EnterpriseCrmEventbusProtoTeardownTaskConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTeardownTaskConfigResponse(
      creatorEmail: pulumi.Input.fromValue(map['creatorEmail'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextTeardownTask: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoNextTeardownTaskResponse.fromMap(
          (map['nextTeardownTask']! as Map).cast<String, dynamic>(),
        ),
      ),
      parameters: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoEventParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      properties: pulumi.Input.fromValue(
        EnterpriseCrmEventbusProtoEventBusPropertiesResponse.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      teardownTaskImplementationClassName: pulumi.Input.fromValue(
        map['teardownTaskImplementationClassName'] as String,
      ),
    );
  }
}
