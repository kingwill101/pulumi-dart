// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_pkcs12_certs_info.dart';

/// Input properties used for looking up and filtering KeystoresAliasesPkcs12 resources.
class KeystoresAliasesPkcs12State {
  /// Alias Name
  final pulumi.Input<String>? alias;
  /// Chain of certificates under this alias.
  /// Structure is documented below.
  final pulumi.Input<List<KeystoresAliasesPkcs12CertsInfo>>? certsInfos;
  /// Environment associated with the alias
  final pulumi.Input<String>? environment;
  /// PKCS12 file content
  ///
  /// - - -
  final pulumi.Input<String>? file;
  /// Hash of the pkcs file
  final pulumi.Input<String>? filehash;
  /// Keystore Name
  final pulumi.Input<String>? keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String>? orgId;
  /// Password for the PKCS12 file if it's encrypted
  final pulumi.Input<String>? password;
  /// Optional.Type of Alias
  final pulumi.Input<String>? type;

  /// Creates a new [KeystoresAliasesPkcs12State].
  /// [alias] Alias Name
  /// [certsInfos] Chain of certificates under this alias.
  /// [environment] Environment associated with the alias
  /// [file] PKCS12 file content
  /// [filehash] Hash of the pkcs file
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the PKCS12 file if it's encrypted
  /// [type] Optional.Type of Alias
  const KeystoresAliasesPkcs12State({
    this.alias,
    this.certsInfos,
    this.environment,
    this.file,
    this.filehash,
    this.keystore,
    this.orgId,
    this.password,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'certsInfos': ?pulumi.Input.mapOptionalInputValue<List<KeystoresAliasesPkcs12CertsInfo>, List<Map<String, dynamic>>>(certsInfos, (value) => pulumi.Input.encodeList<KeystoresAliasesPkcs12CertsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'file': ?file,
      'filehash': ?filehash,
      'keystore': ?keystore,
      'orgId': ?orgId,
      'password': ?password,
      'type': ?type,
    };
  }

  factory KeystoresAliasesPkcs12State.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12State(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certsInfos: (() { final guardedValue = map['certsInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfo>(guardedValue, (value) => KeystoresAliasesPkcs12CertsInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filehash: (() { final guardedValue = map['filehash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keystore: (() { final guardedValue = map['keystore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

