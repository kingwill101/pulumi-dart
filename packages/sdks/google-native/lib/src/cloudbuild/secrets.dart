// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_secret.dart';
import 'secret_manager_secret.dart';

/// Secrets and secret environment variables.
class Secrets {
  /// Secrets encrypted with KMS key and the associated secret environment variable.
  final pulumi.Input<List<InlineSecret>>? inline;
  /// Secrets in Secret Manager and associated secret environment variable.
  final pulumi.Input<List<SecretManagerSecret>>? secretManager;

  /// Creates a new [Secrets].
  /// [inline] Secrets encrypted with KMS key and the associated secret environment variable.
  /// [secretManager] Secrets in Secret Manager and associated secret environment variable.
  const Secrets({
    this.inline,
    this.secretManager,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?pulumi.Input.mapOptionalInputValue<List<InlineSecret>, List<Map<String, dynamic>>>(inline, (value) => pulumi.Input.encodeList<InlineSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretManager': ?pulumi.Input.mapOptionalInputValue<List<SecretManagerSecret>, List<Map<String, dynamic>>>(secretManager, (value) => pulumi.Input.encodeList<SecretManagerSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Secrets.fromMap(Map<String, dynamic> map) {
    return Secrets(
      inline: (() { final guardedValue = map['inline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InlineSecret>(guardedValue, (value) => InlineSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretManager: (() { final guardedValue = map['secretManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretManagerSecret>(guardedValue, (value) => SecretManagerSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
