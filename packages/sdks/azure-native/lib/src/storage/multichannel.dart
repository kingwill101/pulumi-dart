// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Multichannel setting. Applies to Premium FileStorage only.
class Multichannel {
  /// Indicates whether multichannel is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [Multichannel].
  /// [enabled] Indicates whether multichannel is enabled
  Multichannel({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory Multichannel.fromMap(Map<String, dynamic> map) {
    return Multichannel(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

