// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_options.dart';
import 'key_usage.dart';
import 'name_constraints.dart';
import 'object_id.dart';
import 'x509_extension.dart';

/// An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.
class X509Parameters {
  /// Optional. Describes custom X.509 extensions.
  final pulumi.Input<List<X509Extension>>? additionalExtensions;
  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>>? aiaOcspServers;
  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  final pulumi.Input<CaOptions>? caOptions;
  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  final pulumi.Input<KeyUsage>? keyUsage;
  /// Optional. Describes the X.509 name constraints extension.
  final pulumi.Input<NameConstraints>? nameConstraints;
  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final pulumi.Input<List<ObjectId>>? policyIds;

  /// Creates a new [X509Parameters].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Optional. Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  const X509Parameters({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<X509Extension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<X509Extension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': ?aiaOcspServers,
      'caOptions': ?pulumi.Input.mapOptionalInputValue<CaOptions, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': ?pulumi.Input.mapOptionalInputValue<KeyUsage, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': ?pulumi.Input.mapOptionalInputValue<NameConstraints, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': ?pulumi.Input.mapOptionalInputValue<List<ObjectId>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory X509Parameters.fromMap(Map<String, dynamic> map) {
    return X509Parameters(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<X509Extension>(guardedValue, (value) => X509Extension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aiaOcspServers: (() { final guardedValue = map['aiaOcspServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caOptions: (() { final guardedValue = map['caOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CaOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyUsage: (() { final guardedValue = map['keyUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyUsage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nameConstraints: (() { final guardedValue = map['nameConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NameConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyIds: (() { final guardedValue = map['policyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectId>(guardedValue, (value) => ObjectId.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
