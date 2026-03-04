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
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>?
  subjectAlternativeDnsNames;

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
    required this.alias,
    this.certValidityInDays,
    required this.environment,
    this.keySize,
    required this.keystore,
    required this.orgId,
    required this.sigAlg,
    required this.subject,
    this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'certValidityInDays': ?certValidityInDays,
      'environment': environment,
      'keySize': ?keySize,
      'keystore': keystore,
      'orgId': orgId,
      'sigAlg': sigAlg,
      'subject':
          pulumi.Input.mapInputValue<
            KeystoresAliasesSelfSignedCertSubject,
            Map<String, dynamic>
          >(subject, (value) => value.toMap()),
      'subjectAlternativeDnsNames':
          ?pulumi.Input.mapOptionalInputValue<
            KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames,
            Map<String, dynamic>
          >(subjectAlternativeDnsNames, (value) => value.toMap()),
    };
  }

  factory KeystoresAliasesSelfSignedCertArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertArgs(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      certValidityInDays: (() {
        final guardedValue = map['certValidityInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      keySize: (() {
        final guardedValue = map['keySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keystore: pulumi.Input.fromValue(map['keystore'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      sigAlg: pulumi.Input.fromValue(map['sigAlg'] as String),
      subject: pulumi.Input.fromValue(
        KeystoresAliasesSelfSignedCertSubject.fromMap(
          (map['subject']! as Map).cast<String, dynamic>(),
        ),
      ),
      subjectAlternativeDnsNames: (() {
        final guardedValue = map['subjectAlternativeDnsNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
