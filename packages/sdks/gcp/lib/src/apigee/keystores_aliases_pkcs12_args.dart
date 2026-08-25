// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_keystores_aliases_pkcs12_keystores_aliases_pkcs12_args_doc}
/// The set of arguments for KeystoresAliasesPkcs12.
/// {@endtemplate}
/// {@macro pulumi_apigee_keystores_aliases_pkcs12_keystores_aliases_pkcs12_args_doc}
class KeystoresAliasesPkcs12Args {
  /// Alias Name
  final pulumi.Input<String> alias;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// Environment associated with the alias
  final pulumi.Input<String> environment;
  /// PKCS12 file content
  final pulumi.Input<String> file;
  /// Hash of the pkcs file
  final pulumi.Input<String> filehash;
  /// Keystore Name
  final pulumi.Input<String> keystore;
  /// Organization ID associated with the alias, without organization/ prefix
  final pulumi.Input<String> orgId;
  /// Password for the PKCS12 file if it's encrypted
  final pulumi.Input<String?>? password;

  /// Creates a new [KeystoresAliasesPkcs12Args].
  /// [alias] Alias Name
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [environment] Environment associated with the alias
  /// [file] PKCS12 file content
  /// [filehash] Hash of the pkcs file
  /// [keystore] Keystore Name
  /// [orgId] Organization ID associated with the alias, without organization/ prefix
  /// [password] Password for the PKCS12 file if it's encrypted
  const KeystoresAliasesPkcs12Args({
    required this.alias,
    this.deletionPolicy,
    required this.environment,
    required this.file,
    required this.filehash,
    required this.keystore,
    required this.orgId,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'deletionPolicy': ?deletionPolicy,
      'environment': environment,
      'file': file,
      'filehash': filehash,
      'keystore': keystore,
      'orgId': orgId,
      'password': ?password,
    };
  }

  factory KeystoresAliasesPkcs12Args.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12Args(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      file: pulumi.Input.fromValue(map['file'] as String),
      filehash: pulumi.Input.fromValue(map['filehash'] as String),
      keystore: pulumi.Input.fromValue(map['keystore'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
