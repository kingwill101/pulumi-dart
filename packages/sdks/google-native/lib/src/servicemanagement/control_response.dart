// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_policy_response.dart';

/// Selects and configures the service controller used by the service. Example: control: environment: servicecontrol.googleapis.com
class ControlResponse {
  /// The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
  final pulumi.Input<String> environment;
  /// Defines policies applying to the API methods of the service.
  final pulumi.Input<List<MethodPolicyResponse>> methodPolicies;

  /// Creates a new [ControlResponse].
  /// [environment] The service controller environment to use. If empty, no control plane feature (like quota and billing) will be enabled. The recommended value for most services is servicecontrol.googleapis.com
  /// [methodPolicies] Defines policies applying to the API methods of the service.
  ControlResponse({
    required this.environment,
    required this.methodPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'methodPolicies': pulumi.Input.mapInputValue<List<MethodPolicyResponse>, List<Map<String, dynamic>>>(methodPolicies, (value) => pulumi.Input.encodeList<MethodPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ControlResponse.fromMap(Map<String, dynamic> map) {
    return ControlResponse(
      environment: pulumi.Input.fromValue(map['environment'] as String),
      methodPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<MethodPolicyResponse>(map['methodPolicies']!, (value) => MethodPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

