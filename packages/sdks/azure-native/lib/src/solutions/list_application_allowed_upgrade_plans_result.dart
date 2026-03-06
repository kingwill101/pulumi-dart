// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_response.dart';

/// Result data returned by listApplicationAllowedUpgradePlans.
class ListApplicationAllowedUpgradePlansResult {
  /// The array of plans.
  final List<PlanResponse>? value;

  /// Creates a new [ListApplicationAllowedUpgradePlansResult].
  /// [value] The array of plans.
  const ListApplicationAllowedUpgradePlansResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<PlanResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListApplicationAllowedUpgradePlansResult.fromMap(Map<String, dynamic> map) {
    return ListApplicationAllowedUpgradePlansResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlanResponse>(guardedValue, (value) => PlanResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

