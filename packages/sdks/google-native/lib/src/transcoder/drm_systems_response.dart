// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines configuration for DRM systems in use.
class DrmSystemsResponse {
  /// Clearkey configuration.
  final pulumi.Input<Map<String, dynamic>> clearkey;
  /// Fairplay configuration.
  final pulumi.Input<Map<String, dynamic>> fairplay;
  /// Playready configuration.
  final pulumi.Input<Map<String, dynamic>> playready;
  /// Widevine configuration.
  final pulumi.Input<Map<String, dynamic>> widevine;

  /// Creates a new [DrmSystemsResponse].
  /// [clearkey] Clearkey configuration.
  /// [fairplay] Fairplay configuration.
  /// [playready] Playready configuration.
  /// [widevine] Widevine configuration.
  DrmSystemsResponse({
    required this.clearkey,
    required this.fairplay,
    required this.playready,
    required this.widevine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clearkey': clearkey,
      'fairplay': fairplay,
      'playready': playready,
      'widevine': widevine,
    };
  }

  factory DrmSystemsResponse.fromMap(Map<String, dynamic> map) {
    return DrmSystemsResponse(
      clearkey: pulumi.Input.fromValue((map['clearkey']! as Map).cast<String, dynamic>()),
      fairplay: pulumi.Input.fromValue((map['fairplay']! as Map).cast<String, dynamic>()),
      playready: pulumi.Input.fromValue((map['playready']! as Map).cast<String, dynamic>()),
      widevine: pulumi.Input.fromValue((map['widevine']! as Map).cast<String, dynamic>()),
    );
  }
}

