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
  KeystoresAliasesPkcs12State({
    pulumi.Output<String>? alias,
    pulumi.Output<List<KeystoresAliasesPkcs12CertsInfo>>? certsInfos,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? file,
    pulumi.Output<String>? filehash,
    pulumi.Output<String>? keystore,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? password,
    pulumi.Output<String>? type,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      certsInfos = pulumi.Input.asOptionalInput<List<KeystoresAliasesPkcs12CertsInfo>>(certsInfos),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      file = pulumi.Input.asOptionalInput<String>(file),
      filehash = pulumi.Input.asOptionalInput<String>(filehash),
      keystore = pulumi.Input.asOptionalInput<String>(keystore),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      password = pulumi.Input.asOptionalInput<String>(password),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      certsInfos: map['certsInfos'] == null ? null : pulumi.Output.create<List<KeystoresAliasesPkcs12CertsInfo>>(pulumi.Input.decodeList<KeystoresAliasesPkcs12CertsInfo>(map['certsInfos'], (value) => KeystoresAliasesPkcs12CertsInfo.fromMap((value as Map).cast<String, dynamic>()))),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      file: map['file'] == null ? null : pulumi.Output.create<String>(map['file'] as String),
      filehash: map['filehash'] == null ? null : pulumi.Output.create<String>(map['filehash'] as String),
      keystore: map['keystore'] == null ? null : pulumi.Output.create<String>(map['keystore'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

