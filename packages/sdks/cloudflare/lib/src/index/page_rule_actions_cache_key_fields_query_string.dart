// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PageRuleActionsCacheKeyFieldsQueryString {
  final pulumi.Input<List<String>?>? excludes;
  final pulumi.Input<List<String>?>? includes;

  /// Creates a new [PageRuleActionsCacheKeyFieldsQueryString].
  /// [excludes] Optional.
  /// [includes] Optional.
  const PageRuleActionsCacheKeyFieldsQueryString({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes,
      'includes': ?includes,
    };
  }

  factory PageRuleActionsCacheKeyFieldsQueryString.fromMap(Map<String, dynamic> map) {
    return PageRuleActionsCacheKeyFieldsQueryString(
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
