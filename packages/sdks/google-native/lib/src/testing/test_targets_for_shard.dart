// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Test targets for a shard.
class TestTargetsForShard {
  /// Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  final pulumi.Input<List<String>>? testTargets;

  /// Creates a new [TestTargetsForShard].
  /// [testTargets] Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  const TestTargetsForShard({
    this.testTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testTargets': ?testTargets,
    };
  }

  factory TestTargetsForShard.fromMap(Map<String, dynamic> map) {
    return TestTargetsForShard(
      testTargets: (() { final guardedValue = map['testTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

