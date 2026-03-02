// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deblock preprocessing configuration. **Note:** This configuration is not supported.
class Deblock {
  /// Enable deblocker. The default is `false`.
  final pulumi.Input<bool>? enabled;
  /// Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.
  final pulumi.Input<double>? strength;

  /// Creates a new [Deblock].
  /// [enabled] Enable deblocker. The default is `false`.
  /// [strength] Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.
  Deblock({
    this.enabled,
    this.strength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'strength': ?strength,
    };
  }

  factory Deblock.fromMap(Map<String, dynamic> map) {
    return Deblock(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      strength: map['strength'] == null ? null : (map['strength'] as double).input(),
    );
  }
}

