// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppFlexConsumptionAlwaysReady {
  /// The instance count of the `always_ready` of the Function App. The minimum number is `0`. The total number of `instance_count` should not exceed the `maximum_instance_count`.
  final pulumi.Input<int>? instanceCount;
  /// The name of the `always_ready` of the Function App.
  final pulumi.Input<String> name;

  /// Creates a new [AppFlexConsumptionAlwaysReady].
  /// [instanceCount] The instance count of the `always_ready` of the Function App. The minimum number is `0`. The total number of `instance_count` should not exceed the `maximum_instance_count`.
  /// [name] The name of the `always_ready` of the Function App.
  AppFlexConsumptionAlwaysReady({
    this.instanceCount,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'name': name,
    };
  }

  factory AppFlexConsumptionAlwaysReady.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionAlwaysReady(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

