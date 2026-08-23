// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_passthrough_extensions_additional_extension.dart';

class CertificateTemplatePassthroughExtensions {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with knownExtensions to determine the full set of X.509 extensions.
  /// Structure is documented below.
  final pulumi.Input<List<CertificateTemplatePassthroughExtensionsAdditionalExtension>>? additionalExtensions;
  /// Optional. A set of named X.509 extensions. Will be combined with additionalExtensions to determine the full set of X.509 extensions.
  final pulumi.Input<List<String>>? knownExtensions;

  /// Creates a new [CertificateTemplatePassthroughExtensions].
  /// [additionalExtensions] Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with knownExtensions to determine the full set of X.509 extensions.
  /// [knownExtensions] Optional. A set of named X.509 extensions. Will be combined with additionalExtensions to determine the full set of X.509 extensions.
  const CertificateTemplatePassthroughExtensions({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CertificateTemplatePassthroughExtensionsAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CertificateTemplatePassthroughExtensionsAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'knownExtensions': ?knownExtensions,
    };
  }

  factory CertificateTemplatePassthroughExtensions.fromMap(Map<String, dynamic> map) {
    return CertificateTemplatePassthroughExtensions(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateTemplatePassthroughExtensionsAdditionalExtension>(guardedValue, (value) => CertificateTemplatePassthroughExtensionsAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      knownExtensions: (() { final guardedValue = map['knownExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
