// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsCacheKeyFieldsHeader {
  final pulumi.Input<List<String>?>? checkPresences;
  final pulumi.Input<List<String>?>? excludes;
  final pulumi.Input<List<String>?>? includes;

  /// Creates a new [PageRuleActionsCacheKeyFieldsHeader].
  /// [checkPresences] Optional.
  /// [excludes] Optional.
  /// [includes] Optional.
  const PageRuleActionsCacheKeyFieldsHeader({
    this.checkPresences,
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPresences': ?checkPresences,
      'excludes': ?excludes,
      'includes': ?includes,
    };
  }

  factory PageRuleActionsCacheKeyFieldsHeader.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFieldsHeader(
      checkPresences: (() { final guardedValue = map['checkPresences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
