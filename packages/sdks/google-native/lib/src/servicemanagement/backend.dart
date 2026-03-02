// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_rule.dart';

/// `Backend` defines the backend configuration for a service.
class Backend {
  /// A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<BackendRule>>? rules;

  /// Creates a new [Backend].
  /// [rules] A list of API backend rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  Backend({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BackendRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BackendRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Backend.fromMap(Map<String, dynamic> map) {
    return Backend(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<BackendRule>(map['rules']!, (value) => BackendRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

