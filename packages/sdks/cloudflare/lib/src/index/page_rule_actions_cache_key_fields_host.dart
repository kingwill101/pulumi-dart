// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsCacheKeyFieldsHost {
  final pulumi.Input<bool?>? resolved;

  /// Creates a new [PageRuleActionsCacheKeyFieldsHost].
  /// [resolved] Optional.
  const PageRuleActionsCacheKeyFieldsHost({
    this.resolved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolved': ?resolved,
    };
  }

  factory PageRuleActionsCacheKeyFieldsHost.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFieldsHost(
      resolved: (() { final guardedValue = map['resolved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
