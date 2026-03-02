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
  KeystoresAliasesKeyCertFileState({
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
      alias: map['alias'] == null ? null : (map['alias']! as String).input(),
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      certsInfos: map['certsInfos'] == null ? null : (pulumi.Input.decodeList<KeystoresAliasesKeyCertFileCertsInfo>(map['certsInfos']!, (value) => KeystoresAliasesKeyCertFileCertsInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environment: map['environment'] == null ? null : (map['environment']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      keystore: map['keystore'] == null ? null : (map['keystore']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      timeouts: map['timeouts'] == null ? null : (KeystoresAliasesKeyCertFileTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

