// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_self_signed_cert_subject.dart';
import 'keystores_aliases_self_signed_cert_subject_alternative_dns_names.dart';

/// {@template pulumi_apigee_keystores_aliases_self_signed_cert_keystores_aliases_self_signed_cert_args_doc}
/// The set of arguments for KeystoresAliasesSelfSignedCert.
/// {@endtemplate}
/// {@macro pulumi_apigee_keystores_aliases_self_signed_cert_keystores_aliases_self_signed_cert_args_doc}
class KeystoresAliasesSelfSignedCertArgs {
  /// Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
  /// this parameter or the JSON body.
  final pulumi.Input<String> alias;
  /// Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  final pulumi.Input<int>? certValidityInDays;
  /// The Apigee environment name
  final pulumi.Input<String> environment;
  /// Key size. Default and maximum value is 2048 bits.
  final pulumi.Input<String>? keySize;
  /// The Apigee keystore name associated in an Apigee environment
  final pulumi.Input<String> keystore;
  /// The Apigee Organization name associated with the Apigee environment
  final pulumi.Input<String> orgId;
  /// Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  final pulumi.Input<String> sigAlg;
  /// Subject details.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubject> subject;
  /// List of alternative host names. Maximum length is 255 characters for each value.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>? subjectAlternativeDnsNames;

  /// Creates a new [KeystoresAliasesSelfSignedCertArgs].
  /// [alias] Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// [certValidityInDays] Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  /// [environment] The Apigee environment name
  /// [keySize] Key size. Default and maximum value is 2048 bits.
  /// [keystore] The Apigee keystore name associated in an Apigee environment
  /// [orgId] The Apigee Organization name associated with the Apigee environment
  /// [sigAlg] Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  /// [subject] Subject details.
  /// [subjectAlternativeDnsNames] List of alternative host names. Maximum length is 255 characters for each value.
  KeystoresAliasesSelfSignedCertArgs({
    required pulumi.Output<String> alias,
    pulumi.Output<int>? certValidityInDays,
    required pulumi.Output<String> environment,
    pulumi.Output<String>? keySize,
    required pulumi.Output<String> keystore,
    required pulumi.Output<String> orgId,
    required pulumi.Output<String> sigAlg,
    required pulumi.Output<KeystoresAliasesSelfSignedCertSubject> subject,
    pulumi.Output<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>? subjectAlternativeDnsNames,
  }) :
      alias = pulumi.Input.asInput<String>(alias),
      certValidityInDays = pulumi.Input.asOptionalInput<int>(certValidityInDays),
      environment = pulumi.Input.asInput<String>(environment),
      keySize = pulumi.Input.asOptionalInput<String>(keySize),
      keystore = pulumi.Input.asInput<String>(keystore),
      orgId = pulumi.Input.asInput<String>(orgId),
      sigAlg = pulumi.Input.asInput<String>(sigAlg),
      subject = pulumi.Input.asInput<KeystoresAliasesSelfSignedCertSubject>(subject),
      subjectAlternativeDnsNames = pulumi.Input.asOptionalInput<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>(subjectAlternativeDnsNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'certValidityInDays': ?certValidityInDays,
      'environment': environment,
      'keySize': ?keySize,
      'keystore': keystore,
      'orgId': orgId,
      'sigAlg': sigAlg,
      'subject': pulumi.Input.mapInputValue<KeystoresAliasesSelfSignedCertSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAlternativeDnsNames': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames, Map<String, dynamic>>(subjectAlternativeDnsNames, (value) => value.toMap()),
    };
  }

  factory KeystoresAliasesSelfSignedCertArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertArgs(
      alias: pulumi.Output.create<String>(map['alias'] as String),
      certValidityInDays: map['certValidityInDays'] == null ? null : pulumi.Output.create<int>(map['certValidityInDays'] as int),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      keySize: map['keySize'] == null ? null : pulumi.Output.create<String>(map['keySize'] as String),
      keystore: pulumi.Output.create<String>(map['keystore'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
      sigAlg: pulumi.Output.create<String>(map['sigAlg'] as String),
      subject: pulumi.Output.create<KeystoresAliasesSelfSignedCertSubject>(KeystoresAliasesSelfSignedCertSubject.fromMap((map['subject'] as Map).cast<String, dynamic>())),
      subjectAlternativeDnsNames: map['subjectAlternativeDnsNames'] == null ? null : pulumi.Output.create<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>(KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap((map['subjectAlternativeDnsNames'] as Map).cast<String, dynamic>())),
    );
  }
}

