// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_paloalto_local_rulestack_certificate_local_rulestack_certificate_args_doc}
/// The set of arguments for LocalRulestackCertificate.
/// {@endtemplate}
/// {@macro pulumi_paloalto_local_rulestack_certificate_local_rulestack_certificate_args_doc}
class LocalRulestackCertificateArgs {
  /// The comment for Audit purposes.
  final pulumi.Input<String>? auditComment;
  /// The description for the Certificate.
  final pulumi.Input<String>? description;
  /// The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  final pulumi.Input<String>? keyVaultCertificateId;
  /// The name which should be used for this Palo Alto Networks Rulestack Certificate.
  final pulumi.Input<String>? name;
  /// The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  final pulumi.Input<String> rulestackId;
  /// Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  ///
  /// > **Note:** One and only one of `self_signed` or `key_vault_certificate_id` must be specified.
  final pulumi.Input<bool>? selfSigned;

  /// Creates a new [LocalRulestackCertificateArgs].
  /// [auditComment] The comment for Audit purposes.
  /// [description] The description for the Certificate.
  /// [keyVaultCertificateId] The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  /// [name] The name which should be used for this Palo Alto Networks Rulestack Certificate.
  /// [rulestackId] The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  /// [selfSigned] Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created.
  LocalRulestackCertificateArgs({
    pulumi.Output<String>? auditComment,
    pulumi.Output<String>? description,
    pulumi.Output<String>? keyVaultCertificateId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> rulestackId,
    pulumi.Output<bool>? selfSigned,
  }) :
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      description = pulumi.Input.asOptionalInput<String>(description),
      keyVaultCertificateId = pulumi.Input.asOptionalInput<String>(keyVaultCertificateId),
      name = pulumi.Input.asOptionalInput<String>(name),
      rulestackId = pulumi.Input.asInput<String>(rulestackId),
      selfSigned = pulumi.Input.asOptionalInput<bool>(selfSigned);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditComment': ?auditComment,
      'description': ?description,
      'keyVaultCertificateId': ?keyVaultCertificateId,
      'name': ?name,
      'rulestackId': rulestackId,
      'selfSigned': ?selfSigned,
    };
  }

  factory LocalRulestackCertificateArgs.fromMap(Map<String, dynamic> map) {
    return LocalRulestackCertificateArgs(
      auditComment: map['auditComment'] == null ? null : pulumi.Output.create<String>(map['auditComment'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      keyVaultCertificateId: map['keyVaultCertificateId'] == null ? null : pulumi.Output.create<String>(map['keyVaultCertificateId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rulestackId: pulumi.Output.create<String>(map['rulestackId'] as String),
      selfSigned: map['selfSigned'] == null ? null : pulumi.Output.create<bool>(map['selfSigned'] as bool),
    );
  }
}

