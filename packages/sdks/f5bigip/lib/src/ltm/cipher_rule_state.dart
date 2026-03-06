// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CipherRule resources.
class CipherRuleState {
  /// Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  final pulumi.Input<String>? cipher;
  /// The Partition in which the Cipher Rule will be created.
  final pulumi.Input<String>? description;
  /// Specifies the DH Groups algorithms, separated by colons (:).
  final pulumi.Input<String>? dhGroups;
  /// Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  final pulumi.Input<String>? name;
  /// Specifies the Signature Algorithms, separated by colons (:).
  final pulumi.Input<String>? signatureAlgorithms;

  /// Creates a new [CipherRuleState].
  /// [cipher] Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  /// [description] The Partition in which the Cipher Rule will be created.
  /// [dhGroups] Specifies the DH Groups algorithms, separated by colons (:).
  /// [name] Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  /// [signatureAlgorithms] Specifies the Signature Algorithms, separated by colons (:).
  const CipherRuleState({
    this.cipher,
    this.description,
    this.dhGroups,
    this.name,
    this.signatureAlgorithms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?cipher,
      'description': ?description,
      'dhGroups': ?dhGroups,
      'name': ?name,
      'signatureAlgorithms': ?signatureAlgorithms,
    };
  }

  factory CipherRuleState.fromMap(Map<String, dynamic> map) {
    return CipherRuleState(
      cipher: (() { final guardedValue = map['cipher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhGroups: (() { final guardedValue = map['dhGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureAlgorithms: (() { final guardedValue = map['signatureAlgorithms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

