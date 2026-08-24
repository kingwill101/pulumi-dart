// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_leaked_credential_check_get_leaked_credential_check_args_doc}
/// Arguments for getLeakedCredentialCheck.
/// {@endtemplate}
/// {@macro pulumi_index_get_leaked_credential_check_get_leaked_credential_check_args_doc}
class GetLeakedCredentialCheckArgs {
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLeakedCredentialCheckArgs].
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
