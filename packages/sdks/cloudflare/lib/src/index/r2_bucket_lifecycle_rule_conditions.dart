// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketLifecycleRuleConditions {
  /// Transitions will only apply to objects/uploads in the bucket that start with the given prefix, an empty prefix can be provided to scope rule to all objects/uploads.
  final pulumi.Input<String> prefix;

  /// Creates a new [R2BucketLifecycleRuleConditions].
  /// [prefix] Transitions will only apply to objects/uploads in the bucket that start with the given prefix, an empty prefix can be provided to scope rule to all objects/uploads.
  const R2BucketLifecycleRuleConditions({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory R2BucketLifecycleRuleConditions.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleConditions(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
