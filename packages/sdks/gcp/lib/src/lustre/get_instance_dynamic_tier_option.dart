// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceDynamicTierOption {
  /// The dynamic tier mode of the instance.
  /// Possible values:
  /// DISABLED
  /// DEFAULT_CACHE
  final pulumi.Input<String> mode;

  /// Creates a new [GetInstanceDynamicTierOption].
  /// [mode] The dynamic tier mode of the instance.
  const GetInstanceDynamicTierOption({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetInstanceDynamicTierOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceDynamicTierOption(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
