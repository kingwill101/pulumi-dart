// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keystores_aliases_self_signed_cert_certs_info.dart';
import 'keystores_aliases_self_signed_cert_subject.dart';
import 'keystores_aliases_self_signed_cert_subject_alternative_dns_names.dart';

/// Input properties used for looking up and filtering KeystoresAliasesSelfSignedCert resources.
class KeystoresAliasesSelfSignedCertState {
  /// Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
  /// this parameter or the JSON body.
  final pulumi.Input<String>? alias;
  /// Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  final pulumi.Input<int>? certValidityInDays;
  /// Chain of certificates under this alias.
  /// Structure is documented below.
  final pulumi.Input<List<KeystoresAliasesSelfSignedCertCertsInfo>>? certsInfos;
  /// The Apigee environment name
  final pulumi.Input<String>? environment;
  /// Key size. Default and maximum value is 2048 bits.
  final pulumi.Input<String>? keySize;
  /// The Apigee keystore name associated in an Apigee environment
  final pulumi.Input<String>? keystore;
  /// The Apigee Organization name associated with the Apigee environment
  final pulumi.Input<String>? orgId;
  /// Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  final pulumi.Input<String>? sigAlg;
  /// Subject details.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubject>? subject;
  /// List of alternative host names. Maximum length is 255 characters for each value.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>? subjectAlternativeDnsNames;
  /// Optional.Type of Alias
  final pulumi.Input<String>? type;

  /// Creates a new [KeystoresAliasesSelfSignedCertState].
  /// [alias] Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// [certValidityInDays] Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  /// [certsInfos] Chain of certificates under this alias.
  /// [environment] The Apigee environment name
  /// [keySize] Key size. Default and maximum value is 2048 bits.
  /// [keystore] The Apigee keystore name associated in an Apigee environment
  /// [orgId] The Apigee Organization name associated with the Apigee environment
  /// [sigAlg] Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  /// [subject] Subject details.
  /// [subjectAlternativeDnsNames] List of alternative host names. Maximum length is 255 characters for each value.
  /// [type] Optional.Type of Alias
  KeystoresAliasesSelfSignedCertState({
    this.alias,
    this.certValidityInDays,
    this.certsInfos,
    this.environment,
    this.keySize,
    this.keystore,
    this.orgId,
    this.sigAlg,
    this.subject,
    this.subjectAlternativeDnsNames,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'certValidityInDays': ?certValidityInDays,
      'certsInfos': ?pulumi.Input.mapOptionalInputValue<List<KeystoresAliasesSelfSignedCertCertsInfo>, List<Map<String, dynamic>>>(certsInfos, (value) => pulumi.Input.encodeList<KeystoresAliasesSelfSignedCertCertsInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?environment,
      'keySize': ?keySize,
      'keystore': ?keystore,
      'orgId': ?orgId,
      'sigAlg': ?sigAlg,
      'subject': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesSelfSignedCertSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAlternativeDnsNames': ?pulumi.Input.mapOptionalInputValue<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames, Map<String, dynamic>>(subjectAlternativeDnsNames, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory KeystoresAliasesSelfSignedCertState.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertState(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      certValidityInDays: map['certValidityInDays'] == null ? null : (map['certValidityInDays'] as int).input(),
      certsInfos: map['certsInfos'] == null ? null : (pulumi.Input.decodeList<KeystoresAliasesSelfSignedCertCertsInfo>(map['certsInfos'], (value) => KeystoresAliasesSelfSignedCertCertsInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      keySize: map['keySize'] == null ? null : (map['keySize'] as String).input(),
      keystore: map['keystore'] == null ? null : (map['keystore'] as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      sigAlg: map['sigAlg'] == null ? null : (map['sigAlg'] as String).input(),
      subject: map['subject'] == null ? null : (KeystoresAliasesSelfSignedCertSubject.fromMap((map['subject'] as Map).cast<String, dynamic>())).input(),
      subjectAlternativeDnsNames: map['subjectAlternativeDnsNames'] == null ? null : (KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap((map['subjectAlternativeDnsNames'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

