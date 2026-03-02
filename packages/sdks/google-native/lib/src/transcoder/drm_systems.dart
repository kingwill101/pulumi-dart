// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines configuration for DRM systems in use.
class DrmSystems {
  /// Clearkey configuration.
  final pulumi.Input<Map<String, dynamic>>? clearkey;
  /// Fairplay configuration.
  final pulumi.Input<Map<String, dynamic>>? fairplay;
  /// Playready configuration.
  final pulumi.Input<Map<String, dynamic>>? playready;
  /// Widevine configuration.
  final pulumi.Input<Map<String, dynamic>>? widevine;

  /// Creates a new [DrmSystems].
  /// [clearkey] Clearkey configuration.
  /// [fairplay] Fairplay configuration.
  /// [playready] Playready configuration.
  /// [widevine] Widevine configuration.
  DrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clearkey': ?clearkey,
      'fairplay': ?fairplay,
      'playready': ?playready,
      'widevine': ?widevine,
    };
  }

  factory DrmSystems.fromMap(Map<String, dynamic> map) {
    return DrmSystems(
      clearkey: map['clearkey'] == null ? null : ((map['clearkey']! as Map).cast<String, dynamic>()).input(),
      fairplay: map['fairplay'] == null ? null : ((map['fairplay']! as Map).cast<String, dynamic>()).input(),
      playready: map['playready'] == null ? null : ((map['playready']! as Map).cast<String, dynamic>()).input(),
      widevine: map['widevine'] == null ? null : ((map['widevine']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

