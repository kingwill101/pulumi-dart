// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscaleSettingProfileCapacity {
  /// The number of instances that are available for scaling if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default. Valid values are between `0` and `1000`.
  final pulumi.Input<int> default_;
  /// The maximum number of instances for this resource. Valid values are between `0` and `1000`.
  ///
  /// &gt; **Note:** The maximum number of instances is also limited by the amount of Cores available in the subscription.
  final pulumi.Input<int> maximum;
  /// The minimum number of instances for this resource. Valid values are between `0` and `1000`.
  final pulumi.Input<int> minimum;

  /// Creates a new [AutoscaleSettingProfileCapacity].
  /// [default_] The number of instances that are available for scaling if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default. Valid values are between `0` and `1000`.
  /// [maximum] The maximum number of instances for this resource. Valid values are between `0` and `1000`.
  /// [minimum] The minimum number of instances for this resource. Valid values are between `0` and `1000`.
  AutoscaleSettingProfileCapacity({
    required this.default_,
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory AutoscaleSettingProfileCapacity.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileCapacity(
      default_: pulumi.Input.fromValue(map['default'] as int),
      maximum: pulumi.Input.fromValue(map['maximum'] as int),
      minimum: pulumi.Input.fromValue(map['minimum'] as int),
    );
  }
}

