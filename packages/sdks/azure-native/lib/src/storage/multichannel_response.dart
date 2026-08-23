// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Multichannel setting. Applies to Premium FileStorage only.
class MultichannelResponse {
  /// Indicates whether multichannel is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MultichannelResponse].
  /// [enabled] Indicates whether multichannel is enabled
  const MultichannelResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MultichannelResponse.fromMap(Map<String, dynamic> map) {
    return MultichannelResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
