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
  CipherRuleState({
    pulumi.Output<String>? cipher,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dhGroups,
    pulumi.Output<String>? name,
    pulumi.Output<String>? signatureAlgorithms,
  }) :
      cipher = pulumi.Input.asOptionalInput<String>(cipher),
      description = pulumi.Input.asOptionalInput<String>(description),
      dhGroups = pulumi.Input.asOptionalInput<String>(dhGroups),
      name = pulumi.Input.asOptionalInput<String>(name),
      signatureAlgorithms = pulumi.Input.asOptionalInput<String>(signatureAlgorithms);

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
      cipher: map['cipher'] == null ? null : pulumi.Output.create<String>(map['cipher'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dhGroups: map['dhGroups'] == null ? null : pulumi.Output.create<String>(map['dhGroups'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      signatureAlgorithms: map['signatureAlgorithms'] == null ? null : pulumi.Output.create<String>(map['signatureAlgorithms'] as String),
    );
  }
}

