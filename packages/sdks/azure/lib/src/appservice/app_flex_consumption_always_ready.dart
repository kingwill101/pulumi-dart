// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppFlexConsumptionAlwaysReady {
  /// The instance count of the `alwaysReady` of the Function App. The minimum number is `0`. The total number of `instanceCount` should not exceed the `maximumInstanceCount`.
  final pulumi.Input<int>? instanceCount;
  /// The name of the `alwaysReady` of the Function App.
  final pulumi.Input<String> name;

  /// Creates a new [AppFlexConsumptionAlwaysReady].
  /// [instanceCount] The instance count of the `alwaysReady` of the Function App. The minimum number is `0`. The total number of `instanceCount` should not exceed the `maximumInstanceCount`.
  /// [name] The name of the `alwaysReady` of the Function App.
  const AppFlexConsumptionAlwaysReady({
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
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
