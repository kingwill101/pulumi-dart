// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_predefined_values_additional_extension.dart';
import 'certificate_template_predefined_values_ca_options.dart';
import 'certificate_template_predefined_values_key_usage.dart';
import 'certificate_template_predefined_values_name_constraints.dart';
import 'certificate_template_predefined_values_policy_id.dart';

class CertificateTemplatePredefinedValues {
  /// Optional. Describes custom X.509 extensions.
  /// Structure is documented below.
  final List<CertificateTemplatePredefinedValuesAdditionalExtension>? additionalExtensions;
  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;
  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesCaOptions? caOptions;
  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesKeyUsage? keyUsage;
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final CertificateTemplatePredefinedValuesNameConstraints? nameConstraints;
  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final List<CertificateTemplatePredefinedValuesPolicyId>? policyIds;

  /// Creates a new [CertificateTemplatePredefinedValues].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  CertificateTemplatePredefinedValues({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?additionalExtensions == null ? null : pulumi.Input.encodeList<CertificateTemplatePredefinedValuesAdditionalExtension, Map<String, dynamic>>(additionalExtensions!, (value) => value.toMap()),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?caOptions == null ? null : caOptions!.toMap(),
      'keyUsage': ?keyUsage == null ? null : keyUsage!.toMap(),
      'nameConstraints': ?nameConstraints == null ? null : nameConstraints!.toMap(),
      'policyIds': ?policyIds == null ? null : pulumi.Input.encodeList<CertificateTemplatePredefinedValuesPolicyId, Map<String, dynamic>>(policyIds!, (value) => value.toMap()),
    };
  }

  factory CertificateTemplatePredefinedValues.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValues(
      additionalExtensions: map['additionalExtensions'] == null ? null : pulumi.Input.decodeList<CertificateTemplatePredefinedValuesAdditionalExtension>(map['additionalExtensions'], (value) => CertificateTemplatePredefinedValuesAdditionalExtension.fromMap((value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null ? null : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: map['caOptions'] == null ? null : CertificateTemplatePredefinedValuesCaOptions.fromMap((map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: map['keyUsage'] == null ? null : CertificateTemplatePredefinedValuesKeyUsage.fromMap((map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null ? null : CertificateTemplatePredefinedValuesNameConstraints.fromMap((map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null ? null : pulumi.Input.decodeList<CertificateTemplatePredefinedValuesPolicyId>(map['policyIds'], (value) => CertificateTemplatePredefinedValuesPolicyId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

