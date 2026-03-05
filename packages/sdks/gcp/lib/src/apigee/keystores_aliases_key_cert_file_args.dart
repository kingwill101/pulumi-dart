// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_key_cert_file_timeouts.dart';

/// {@template pulumi_apigee_keystores_aliases_key_cert_file_keystores_aliases_key_cert_file_args_doc}
/// The set of arguments for KeystoresAliasesKeyCertFile.
/// {@endtemplate}
/// {@macro pulumi_apigee_keystores_aliases_key_cert_file_keystores_aliases_key_cert_file_args_doc}
class KeystoresAliasesKeyCertFileArgs {
  /// Alias Name
  final pulumi.Input<String> alias;
  /// Cert content
  ///
  ///
  /// - - -
  final pulumi.Input<String> cert;
  /// Environment associated with the alias
  final pulumi.Input<String> environment;
  /// Private Key content, omit if uploading to truststore
  final pulumi.Input<String>? key;
  /// Keystore Name
  final pulumi.Input<String> keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String> orgId;
  /// Password for the Private Key if it's encrypted
  final pulumi.Input<String>? password;
  final pulumi.Input<KeystoresAliasesKeyCertFileTimeouts>? timeouts;

  /// Creates a new [KeystoresAliasesKeyCertFileArgs].
  /// [alias] Alias Name
  /// [cert] Cert content
  /// [environment] Environment associated with the alias
  /// [key] Private Key content, omit if uploading to truststore
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the Private Key if it's encrypted
  /// [timeouts] Optional.
  KeystoresAliasesKeyCertFileArgs({
    required this.alias,
    required this.cert,
    required this.environment,
    this.key,
    required this.keystore,
    required this.orgId,
    this.password,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'cert': cert,
      'environment': environment,
      'key': ?key,
      'keystore': keystore,
      'orgId': orgId,
      'password': ?password,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesKeyCertFileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeystoresAliasesKeyCertFileArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileArgs(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      cert: pulumi.Input.fromValue(map['cert'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keystore: pulumi.Input.fromValue(map['keystore'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeystoresAliasesKeyCertFileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

