// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalRulestackCertificate resources.
class LocalRulestackCertificateState {
  /// The comment for Audit purposes.
  final pulumi.Input<String?>? auditComment;
  /// The description for the Certificate.
  final pulumi.Input<String?>? description;
  /// The `versionlesId` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  final pulumi.Input<String?>? keyVaultCertificateId;
  /// The name which should be used for this Palo Alto Networks Rulestack Certificate.
  final pulumi.Input<String?>? name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  final pulumi.Input<String?>? rulestackId;
  /// Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  ///
  /// &gt; **Note:** One and only one of `selfSigned` or `keyVaultCertificateId` must be specified.
  final pulumi.Input<bool?>? selfSigned;

  /// Creates a new [LocalRulestackCertificateState].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the Certificate.
  /// [keyVaultCertificateId] The `versionlesId` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  /// [name] The name which should be used for this Palo Alto Networks Rulestack Certificate.
  /// [rulestackId] The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  /// [selfSigned] Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  const LocalRulestackCertificateState({
    this.auditComment,
    this.description,
    this.keyVaultCertificateId,
    this.name,
    this.rulestackId,
    this.selfSigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'keyVaultCertificateId': ?keyVaultCertificateId,
      'name': ?name,
      'rulestackId': ?rulestackId,
      'selfSigned': ?selfSigned,
    };
  }

  factory LocalRulestackCertificateState.fromMap(Map<String, dynamic> map) {
    return LocalRulestackCertificateState(
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultCertificateId: (() { final guardedValue = map['keyVaultCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulestackId: (() { final guardedValue = map['rulestackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfSigned: (() { final guardedValue = map['selfSigned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
