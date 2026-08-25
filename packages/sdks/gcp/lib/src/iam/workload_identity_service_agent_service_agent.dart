// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadIdentityServiceAgentServiceAgent {
  /// (Output)
  final pulumi.Input<String?>? container;
  /// (Output)
  final pulumi.Input<String?>? name;
  /// (Output)
  final pulumi.Input<String?>? principal;
  /// (Output)
  final pulumi.Input<String?>? role;
  /// (Output)
  final pulumi.Input<String?>? serviceProducer;
  /// (Output)
  final pulumi.Input<String?>? state;

  /// Creates a new [WorkloadIdentityServiceAgentServiceAgent].
  /// [container] (Output)
  /// [name] (Output)
  /// [principal] (Output)
  /// [role] (Output)
  /// [serviceProducer] (Output)
  /// [state] (Output)
  const WorkloadIdentityServiceAgentServiceAgent({
    this.container,
    this.name,
    this.principal,
    this.role,
    this.serviceProducer,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'name': ?name,
      'principal': ?principal,
      'role': ?role,
      'serviceProducer': ?serviceProducer,
      'state': ?state,
    };
  }

  factory WorkloadIdentityServiceAgentServiceAgent.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityServiceAgentServiceAgent(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceProducer: (() { final guardedValue = map['serviceProducer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
