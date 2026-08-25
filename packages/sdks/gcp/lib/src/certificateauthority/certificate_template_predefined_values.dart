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
  final pulumi.Input<List<CertificateTemplatePredefinedValuesAdditionalExtension>?>? additionalExtensions;
  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>?>? aiaOcspServers;
  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesCaOptions?>? caOptions;
  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesKeyUsage?>? keyUsage;
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesNameConstraints?>? nameConstraints;
  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateTemplatePredefinedValuesPolicyId>?>? policyIds;

  /// Creates a new [CertificateTemplatePredefinedValues].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  const CertificateTemplatePredefinedValues({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CertificateTemplatePredefinedValuesAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CertificateTemplatePredefinedValuesAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValuesCaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValuesKeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValuesNameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateTemplatePredefinedValuesPolicyId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<CertificateTemplatePredefinedValuesPolicyId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateTemplatePredefinedValues.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValues(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateTemplatePredefinedValuesAdditionalExtension>(guardedValue, (value) => CertificateTemplatePredefinedValuesAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aiaOcspServers: (() { final guardedValue = map['aiaOcspServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caOptions: (() { final guardedValue = map['caOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTemplatePredefinedValuesCaOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyUsage: (() { final guardedValue = map['keyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTemplatePredefinedValuesKeyUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nameConstraints: (() { final guardedValue = map['nameConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateTemplatePredefinedValuesNameConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateTemplatePredefinedValuesPolicyId>(guardedValue, (value) => CertificateTemplatePredefinedValuesPolicyId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
