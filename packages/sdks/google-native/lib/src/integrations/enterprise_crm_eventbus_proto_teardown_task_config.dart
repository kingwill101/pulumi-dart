// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_event_bus_properties.dart';
import 'enterprise_crm_eventbus_proto_event_parameters.dart';
import 'enterprise_crm_eventbus_proto_next_teardown_task.dart';

class EnterpriseCrmEventbusProtoTeardownTaskConfig {
  /// The creator's email address.
  final pulumi.Input<String>? creatorEmail;
  /// Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  final pulumi.Input<String> name;
  final pulumi.Input<EnterpriseCrmEventbusProtoNextTeardownTask>? nextTeardownTask;
  /// The parameters the user can pass to this task.
  final pulumi.Input<EnterpriseCrmEventbusProtoEventParameters>? parameters;
  final pulumi.Input<EnterpriseCrmEventbusProtoEventBusProperties>? properties;
  /// Implementation class name.
  final pulumi.Input<String> teardownTaskImplementationClassName;

  /// Creates a new [EnterpriseCrmEventbusProtoTeardownTaskConfig].
  /// [creatorEmail] The creator's email address.
  /// [name] Unique identifier of the teardown task within this Config. We use this field as the identifier to find next teardown tasks.
  /// [nextTeardownTask] Optional.
  /// [parameters] The parameters the user can pass to this task.
  /// [properties] Optional.
  /// [teardownTaskImplementationClassName] Implementation class name.
  const EnterpriseCrmEventbusProtoTeardownTaskConfig({
    this.creatorEmail,
    required this.name,
    this.nextTeardownTask,
    this.parameters,
    this.properties,
    required this.teardownTaskImplementationClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorEmail': ?creatorEmail,
      'name': name,
      'nextTeardownTask': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoNextTeardownTask, Map<String, dynamic>>(nextTeardownTask, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoEventParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoEventBusProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'teardownTaskImplementationClassName': teardownTaskImplementationClassName,
    };
  }

  factory EnterpriseCrmEventbusProtoTeardownTaskConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardownTaskConfig(
      creatorEmail: (() { final guardedValue = map['creatorEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextTeardownTask: (() { final guardedValue = map['nextTeardownTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoNextTeardownTask.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoEventParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoEventBusProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      teardownTaskImplementationClassName: pulumi.Input.fromValue(map['teardownTaskImplementationClassName'] as String),
    );
  }
}

