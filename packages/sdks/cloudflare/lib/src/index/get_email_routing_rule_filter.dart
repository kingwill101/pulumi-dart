// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingRuleFilter {
  /// Filter by enabled routing rules.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [GetEmailRoutingRuleFilter].
  /// [enabled] Filter by enabled routing rules.
  const GetEmailRoutingRuleFilter({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GetEmailRoutingRuleFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRuleFilter(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
