// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigEncryptionDrmSystems {
  /// Clearkey configuration.
  final pulumi.Input<Map<String, dynamic>>? clearkey;
  /// Fairplay configuration.
  final pulumi.Input<Map<String, dynamic>>? fairplay;
  /// Playready configuration.
  final pulumi.Input<Map<String, dynamic>>? playready;
  /// Widevine configuration.
  final pulumi.Input<Map<String, dynamic>>? widevine;

  /// Creates a new [JobTemplateConfigEncryptionDrmSystems].
  /// [clearkey] Clearkey configuration.
  /// [fairplay] Fairplay configuration.
  /// [playready] Playready configuration.
  /// [widevine] Widevine configuration.
  const JobTemplateConfigEncryptionDrmSystems({
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

  factory JobTemplateConfigEncryptionDrmSystems.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigEncryptionDrmSystems(
      clearkey: (() { final guardedValue = map['clearkey']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      fairplay: (() { final guardedValue = map['fairplay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      playready: (() { final guardedValue = map['playready']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      widevine: (() { final guardedValue = map['widevine']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

