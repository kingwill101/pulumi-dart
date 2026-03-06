// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_key_cert_file_certs_info.dart';
import 'keystores_aliases_key_cert_file_timeouts.dart';

/// Input properties used for looking up and filtering KeystoresAliasesKeyCertFile resources.
class KeystoresAliasesKeyCertFileState {
  /// Alias Name
  final pulumi.Input<String>? alias;
  /// Cert content
  ///
  ///
  /// - - -
  final pulumi.Input<String>? cert;
  /// Chain of certificates under this alias.
  /// Structure is documented below.
  final pulumi.Input<List<KeystoresAliasesKeyCertFileCertsInfo>>? certsInfos;
  /// Environment associated with the alias
  final pulumi.Input<String>? environment;
  /// Private Key content, omit if uploading to truststore
  final pulumi.Input<String>? key;
  /// Keystore Name
  final pulumi.Input<String>? keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String>? orgId;
  /// Password for the Private Key if it's encrypted
  final pulumi.Input<String>? password;
  final pulumi.Input<KeystoresAliasesKeyCertFileTimeouts>? timeouts;
  /// Optional.Type of Alias
  final pulumi.Input<String>? type;

  /// Creates a new [KeystoresAliasesKeyCertFileState].
  /// [alias] Alias Name
  /// [cert] Cert content
  /// [certsInfos] Chain of certificates under this alias.
  /// [environment] Environment associated with the alias
  /// [key] Private Key content, omit if uploading to truststore
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the Private Key if it's encrypted
  /// [timeouts] Optional.
  /// [type] Optional.Type of Alias
  const KeystoresAliasesKeyCertFileState({
    this.alias,
    this.cert,
    this.certsInfos,
    this.environment,
    this.key,
    this.keystore,
    this.orgId,
    this.password,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'cert': ?cert,
      'certsInfos': ?pulumi.Input.mapOptionalInputValue<List<KeystoresAliasesKeyCertFileCertsInfo>, List<Map<String, dynamic>>>(certsInfos, (value) => pulumi.Input.encodeList<KeystoresAliasesKeyCertFileCertsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'key': ?key,
      'keystore': ?keystore,
      'orgId': ?orgId,
      'password': ?password,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesKeyCertFileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory KeystoresAliasesKeyCertFileState.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileState(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certsInfos: (() { final guardedValue = map['certsInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeystoresAliasesKeyCertFileCertsInfo>(guardedValue, (value) => KeystoresAliasesKeyCertFileCertsInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keystore: (() { final guardedValue = map['keystore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeystoresAliasesKeyCertFileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

