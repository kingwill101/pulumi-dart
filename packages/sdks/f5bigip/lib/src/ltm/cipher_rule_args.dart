// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_cipher_rule_cipher_rule_args_doc}
/// The set of arguments for CipherRule.
/// {@endtemplate}
/// {@macro pulumi_ltm_cipher_rule_cipher_rule_args_doc}
class CipherRuleArgs {
  /// Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  final pulumi.Input<String> cipher;
  /// The Partition in which the Cipher Rule will be created.
  final pulumi.Input<String>? description;
  /// Specifies the DH Groups algorithms, separated by colons (:).
  final pulumi.Input<String>? dhGroups;
  /// Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  final pulumi.Input<String> name;
  /// Specifies the Signature Algorithms, separated by colons (:).
  final pulumi.Input<String>? signatureAlgorithms;

  /// Creates a new [CipherRuleArgs].
  /// [cipher] Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  /// [description] The Partition in which the Cipher Rule will be created.
  /// [dhGroups] Specifies the DH Groups algorithms, separated by colons (:).
  /// [name] Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  /// [signatureAlgorithms] Specifies the Signature Algorithms, separated by colons (:).
  const CipherRuleArgs({
    required this.cipher,
    this.description,
    this.dhGroups,
    required this.name,
    this.signatureAlgorithms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': cipher,
      'description': ?description,
      'dhGroups': ?dhGroups,
      'name': name,
      'signatureAlgorithms': ?signatureAlgorithms,
    };
  }

  factory CipherRuleArgs.fromMap(Map<String, dynamic> map) {
    return CipherRuleArgs(
      cipher: pulumi.Input.fromValue(map['cipher'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhGroups: (() { final guardedValue = map['dhGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      signatureAlgorithms: (() { final guardedValue = map['signatureAlgorithms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

