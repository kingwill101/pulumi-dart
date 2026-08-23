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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [environment] The Apigee environment name
  /// [keySize] Key size. Default and maximum value is 2048 bits.
  /// [keystore] The Apigee keystore name associated in an Apigee environment
  /// [orgId] The Apigee Organization name associated with the Apigee environment
  /// [sigAlg] Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  /// [subject] Subject details.
  /// [subjectAlternativeDnsNames] List of alternative host names. Maximum length is 255 characters for each value.
  /// [type] Optional.Type of Alias
  const KeystoresAliasesSelfSignedCertState({
    this.alias,
    this.certValidityInDays,
    this.certsInfos,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certValidityInDays: (() { final guardedValue = map['certValidityInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      certsInfos: (() { final guardedValue = map['certsInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeystoresAliasesSelfSignedCertCertsInfo>(guardedValue, (value) => KeystoresAliasesSelfSignedCertCertsInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keystore: (() { final guardedValue = map['keystore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sigAlg: (() { final guardedValue = map['sigAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeystoresAliasesSelfSignedCertSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subjectAlternativeDnsNames: (() { final guardedValue = map['subjectAlternativeDnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
