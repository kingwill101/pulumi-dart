// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_rule_response.dart';

/// `Backend` defines the backend configuration for a service.
class BackendResponse {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<BackendRuleResponse>> rules;

  /// Creates a new [BackendResponse].
  /// [rules] A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  const BackendResponse({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<BackendRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BackendRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendResponse.fromMap(Map<String, dynamic> map) {
    return BackendResponse(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<BackendRuleResponse>(map['rules']!, (value) => BackendRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
