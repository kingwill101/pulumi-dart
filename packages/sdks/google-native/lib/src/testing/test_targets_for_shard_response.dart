// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Test targets for a shard.
class TestTargetsForShardResponse {
  /// Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  final pulumi.Input<List<String>> testTargets;

  /// Creates a new [TestTargetsForShardResponse].
  /// [testTargets] Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  TestTargetsForShardResponse({
    required this.testTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testTargets': testTargets,
    };
  }

  factory TestTargetsForShardResponse.fromMap(Map<String, dynamic> map) {
    return TestTargetsForShardResponse(
      testTargets: pulumi.Input.fromValue((map['testTargets'] as List).cast<String>()),
    );
  }
}

