// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_subject_description_subject_alt_name_custom_san_obect_id.dart';

class CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan {
  /// (Output)
  /// Indicates whether or not the name constraints are marked critical.
  final pulumi.Input<bool>? critical;
  /// (Output)
  /// Describes how some of the technical fields in a certificate should be populated.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId>>? obectIds;
  /// The value of this X.509 extension. A base64-encoded string.
  final pulumi.Input<String>? value;

  /// Creates a new [CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan].
  /// [critical] (Output)
  /// [obectIds] (Output)
  /// [value] The value of this X.509 extension. A base64-encoded string.
  CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan({
    this.critical,
    this.obectIds,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?critical,
      'obectIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId>, List<Map<String, dynamic>>>(obectIds, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSan(
      critical: map['critical'] == null ? null : (map['critical']! as bool).input(),
      obectIds: map['obectIds'] == null ? null : (pulumi.Input.decodeList<CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId>(map['obectIds']!, (value) => CertificateCertificateDescriptionSubjectDescriptionSubjectAltNameCustomSanObectId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

