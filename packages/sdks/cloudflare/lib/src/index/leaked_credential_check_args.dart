// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_leaked_credential_check_leaked_credential_check_args_doc}
/// The set of arguments for LeakedCredentialCheck.
/// {@endtemplate}
/// {@macro pulumi_index_leaked_credential_check_leaked_credential_check_args_doc}
class LeakedCredentialCheckArgs {
  /// Determines whether or not Leaked Credential Checks are enabled.
  final pulumi.Input<bool?>? enabled;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [LeakedCredentialCheckArgs].
  /// [enabled] Determines whether or not Leaked Credential Checks are enabled.
  /// [zoneId] Defines an identifier.
  const LeakedCredentialCheckArgs({
    this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'zoneId': zoneId,
    };
  }

  factory LeakedCredentialCheckArgs.fromMap(Map<String, dynamic> map) {
    return LeakedCredentialCheckArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
