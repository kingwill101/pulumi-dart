// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_extension_constraints_known_extensions_item.dart';
import 'object_id.dart';

/// Describes a set of X.509 extensions that may be part of some certificate issuance controls.
class CertificateExtensionConstraints {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  final pulumi.Input<List<ObjectId>>? additionalExtensions;
  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final pulumi.Input<List<CertificateExtensionConstraintsKnownExtensionsItem>>? knownExtensions;

  /// Creates a new [CertificateExtensionConstraints].
  /// [additionalExtensions] Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  /// [knownExtensions] Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  const CertificateExtensionConstraints({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<ObjectId>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'knownExtensions': ?pulumi.Input.mapOptionalInputValue<List<CertificateExtensionConstraintsKnownExtensionsItem>, List<String>>(knownExtensions, (value) => pulumi.Input.encodeList<CertificateExtensionConstraintsKnownExtensionsItem, String>(value, (value) => value.wireValue)),
    };
  }

  factory CertificateExtensionConstraints.fromMap(Map<String, dynamic> map) {
    return CertificateExtensionConstraints(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectId>(guardedValue, (value) => ObjectId.fromMap((value as Map).cast<String, dynamic>()))); })(),
      knownExtensions: (() { final guardedValue = map['knownExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateExtensionConstraintsKnownExtensionsItem>(guardedValue, (value) => CertificateExtensionConstraintsKnownExtensionsItem.fromValue(value as String))); })(),
    );
  }
}
