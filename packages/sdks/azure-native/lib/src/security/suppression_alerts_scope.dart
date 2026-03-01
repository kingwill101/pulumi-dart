// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_element.dart';

class SuppressionAlertsScope {
  /// All the conditions inside need to be true in order to suppress the alert
  final List<ScopeElement> allOf;

  /// Creates a new [SuppressionAlertsScope].
  /// [allOf] All the conditions inside need to be true in order to suppress the alert
  SuppressionAlertsScope({
    required this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': pulumi.Input.encodeList<ScopeElement, Map<String, dynamic>>(allOf, (value) => value.toMap()),
    };
  }

  factory SuppressionAlertsScope.fromMap(Map<String, dynamic> map) {
    return SuppressionAlertsScope(
      allOf: pulumi.Input.decodeList<ScopeElement>(map['allOf'], (value) => ScopeElement.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

