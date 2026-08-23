// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_certificate_description_x509_description_additional_extension_object_id.dart';

class CertificateCertificateDescriptionX509DescriptionAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final pulumi.Input<bool>? critical;
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId>>? objectIds;
  /// The value of this X.509 extension. A base64-encoded string.
  final pulumi.Input<String>? value;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionAdditionalExtension].
  /// [critical] Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// [objectIds] Describes values that are relevant in a CA certificate.
  /// [value] The value of this X.509 extension. A base64-encoded string.
  const CertificateCertificateDescriptionX509DescriptionAdditionalExtension({
    this.critical,
    this.objectIds,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?critical,
      'objectIds': ?pulumi.Input.mapOptionalInputValue<List<CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId>, List<Map<String, dynamic>>>(objectIds, (value) => pulumi.Input.encodeList<CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'value': ?value,
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionAdditionalExtension.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionAdditionalExtension(
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId>(guardedValue, (value) => CertificateCertificateDescriptionX509DescriptionAdditionalExtensionObjectId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
