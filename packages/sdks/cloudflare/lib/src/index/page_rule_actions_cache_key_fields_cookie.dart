// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsCacheKeyFieldsCookie {
  final pulumi.Input<List<String>?>? checkPresences;
  final pulumi.Input<List<String>?>? includes;

  /// Creates a new [PageRuleActionsCacheKeyFieldsCookie].
  /// [checkPresences] Optional.
  /// [includes] Optional.
  const PageRuleActionsCacheKeyFieldsCookie({
    this.checkPresences,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': ?checkPresences,
      'includes': ?includes,
    };
  }

  factory PageRuleActionsCacheKeyFieldsCookie.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFieldsCookie(
      checkPresences: (() { final guardedValue = map['checkPresences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
