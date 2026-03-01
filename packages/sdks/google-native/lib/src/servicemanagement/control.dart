// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_policy.dart';

/// Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com
class Control {
  /// The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
  final String? environment;
  /// Defines policies applying to the API methods of the service.
  final List<MethodPolicy>? methodPolicies;

  /// Creates a new [Control].
  /// [environment] The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
  /// [methodPolicies] Defines policies applying to the API methods of the service.
  Control({
    this.environment,
    this.methodPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'methodPolicies': ?methodPolicies == null ? null : pulumi.Input.encodeList<MethodPolicy, Map<String, dynamic>>(methodPolicies!, (value) => value.toMap()),
    };
  }

  factory Control.fromMap(Map<String, dynamic> map) {
    return Control(
      environment: map['environment'] == null ? null : map['environment'] as String,
      methodPolicies: map['methodPolicies'] == null ? null : pulumi.Input.decodeList<MethodPolicy>(map['methodPolicies'], (value) => MethodPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

