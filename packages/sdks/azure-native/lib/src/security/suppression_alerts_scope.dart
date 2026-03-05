// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_element.dart';

class SuppressionAlertsScope {
  /// All the conditions inside need to be true in order to suppress the alert
  final pulumi.Input<List<ScopeElement>> allOf;

  /// Creates a new [SuppressionAlertsScope].
  /// [allOf] All the conditions inside need to be true in order to suppress the alert
  SuppressionAlertsScope({
    required this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': pulumi.Input.mapInputValue<List<ScopeElement>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<ScopeElement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SuppressionAlertsScope.fromMap(Map<String, dynamic> map) {
    return SuppressionAlertsScope(
      allOf: pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeElement>(map['allOf']!, (value) => ScopeElement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

