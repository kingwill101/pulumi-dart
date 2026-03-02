// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Multichannel setting. Applies to Premium FileStorage only.
class MultichannelResponse {
  /// Indicates whether multichannel is enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [MultichannelResponse].
  /// [enabled] Indicates whether multichannel is enabled
  MultichannelResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory MultichannelResponse.fromMap(Map<String, dynamic> map) {
    return MultichannelResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

