// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDynamicTierOptions {
  /// The dynamic tier mode of the instance.
  /// Possible values:
  /// DISABLED
  /// DEFAULT_CACHE
  final pulumi.Input<String> mode;

  /// Creates a new [InstanceDynamicTierOptions].
  /// [mode] The dynamic tier mode of the instance.
  const InstanceDynamicTierOptions({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory InstanceDynamicTierOptions.fromMap(Map<String, dynamic> map) {
    return InstanceDynamicTierOptions(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
