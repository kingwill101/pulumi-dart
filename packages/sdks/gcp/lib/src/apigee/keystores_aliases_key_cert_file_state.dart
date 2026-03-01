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
    pulumi.Output<String>? alias,
    pulumi.Output<String>? cert,
    pulumi.Output<List<KeystoresAliasesKeyCertFileCertsInfo>>? certsInfos,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? key,
    pulumi.Output<String>? keystore,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? password,
    pulumi.Output<KeystoresAliasesKeyCertFileTimeouts>? timeouts,
    pulumi.Output<String>? type,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      cert = pulumi.Input.asOptionalInput<String>(cert),
      certsInfos = pulumi.Input.asOptionalInput<List<KeystoresAliasesKeyCertFileCertsInfo>>(certsInfos),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      key = pulumi.Input.asOptionalInput<String>(key),
      keystore = pulumi.Input.asOptionalInput<String>(keystore),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      password = pulumi.Input.asOptionalInput<String>(password),
      timeouts = pulumi.Input.asOptionalInput<KeystoresAliasesKeyCertFileTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      cert: map['cert'] == null ? null : pulumi.Output.create<String>(map['cert'] as String),
      certsInfos: map['certsInfos'] == null ? null : pulumi.Output.create<List<KeystoresAliasesKeyCertFileCertsInfo>>(pulumi.Input.decodeList<KeystoresAliasesKeyCertFileCertsInfo>(map['certsInfos'], (value) => KeystoresAliasesKeyCertFileCertsInfo.fromMap((value as Map).cast<String, dynamic>()))),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      keystore: map['keystore'] == null ? null : pulumi.Output.create<String>(map['keystore'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<KeystoresAliasesKeyCertFileTimeouts>(KeystoresAliasesKeyCertFileTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

