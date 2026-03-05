// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used to specify integer faceting options.
class IntegerFacetingOptions {
  /// Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {&lt;1, [1,5), [5-10), [10-100), &gt;=100}.
  final pulumi.Input<List<String>>? integerBuckets;

  /// Creates a new [IntegerFacetingOptions].
  /// [integerBuckets] Buckets for given integer values should be in strictly ascending order. For example, if values supplied are (1,5,10,100), the following facet buckets will be formed {&lt;1, [1,5), [5-10), [10-100), &gt;=100}.
  IntegerFacetingOptions({
    this.integerBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integerBuckets': ?integerBuckets,
    };
  }

  factory IntegerFacetingOptions.fromMap(Map<String, dynamic> map) {
    return IntegerFacetingOptions(
      integerBuckets: (() { final guardedValue = map['integerBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

