// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_predefined_values_additional_extension_object_id.dart';

class CertificateTemplatePredefinedValuesAdditionalExtension {
  /// Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  final pulumi.Input<bool>? critical;
  /// Required. The OID for this X.509 extension.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValuesAdditionalExtensionObjectId> objectId;
  /// Required. The value of this X.509 extension.
  final pulumi.Input<String> value;

  /// Creates a new [CertificateTemplatePredefinedValuesAdditionalExtension].
  /// [critical] Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).
  /// [objectId] Required. The OID for this X.509 extension.
  /// [value] Required. The value of this X.509 extension.
  const CertificateTemplatePredefinedValuesAdditionalExtension({
    this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': ?critical,
      'objectId': pulumi.Input.mapInputValue<CertificateTemplatePredefinedValuesAdditionalExtensionObjectId, Map<String, dynamic>>(objectId, (value) => value.toMap()),
      'value': value,
    };
  }

  factory CertificateTemplatePredefinedValuesAdditionalExtension.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePredefinedValuesAdditionalExtension(
      critical: (() { final guardedValue = map['critical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectId: pulumi.Input.fromValue(CertificateTemplatePredefinedValuesAdditionalExtensionObjectId.fromMap((map['objectId']! as Map).cast<String, dynamic>())),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
