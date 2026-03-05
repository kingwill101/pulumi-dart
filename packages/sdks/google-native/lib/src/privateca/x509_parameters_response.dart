// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_options_response.dart';
import 'key_usage_response.dart';
import 'name_constraints_response.dart';
import 'object_id_response.dart';
import 'x509_extension_response.dart';

/// An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.
class X509ParametersResponse {
  /// Optional. Describes custom X.509 extensions.
  final pulumi.Input<List<X509ExtensionResponse>> additionalExtensions;
  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final pulumi.Input<List<String>> aiaOcspServers;
  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  final pulumi.Input<CaOptionsResponse> caOptions;
  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  final pulumi.Input<KeyUsageResponse> keyUsage;
  /// Optional. Describes the X.509 name constraints extension.
  final pulumi.Input<NameConstraintsResponse> nameConstraints;
  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final pulumi.Input<List<ObjectIdResponse>> policyIds;

  /// Creates a new [X509ParametersResponse].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Optional. Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  X509ParametersResponse({
    required this.additionalExtensions,
    required this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    required this.nameConstraints,
    required this.policyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': pulumi.Input.mapInputValue<List<X509ExtensionResponse>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<X509ExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiaOcspServers': aiaOcspServers,
      'caOptions': pulumi.Input.mapInputValue<CaOptionsResponse, Map<String, dynamic>>(caOptions, (value) => value.toMap()),
      'keyUsage': pulumi.Input.mapInputValue<KeyUsageResponse, Map<String, dynamic>>(keyUsage, (value) => value.toMap()),
      'nameConstraints': pulumi.Input.mapInputValue<NameConstraintsResponse, Map<String, dynamic>>(nameConstraints, (value) => value.toMap()),
      'policyIds': pulumi.Input.mapInputValue<List<ObjectIdResponse>, List<Map<String, dynamic>>>(policyIds, (value) => pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory X509ParametersResponse.fromMap(Map<String, dynamic> map) {
    return X509ParametersResponse(
      additionalExtensions: pulumi.Input.fromValue(pulumi.Input.decodeList<X509ExtensionResponse>(map['additionalExtensions']!, (value) => X509ExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      aiaOcspServers: pulumi.Input.fromValue((map['aiaOcspServers'] as List).cast<String>()),
      caOptions: pulumi.Input.fromValue(CaOptionsResponse.fromMap((map['caOptions']! as Map).cast<String, dynamic>())),
      keyUsage: pulumi.Input.fromValue(KeyUsageResponse.fromMap((map['keyUsage']! as Map).cast<String, dynamic>())),
      nameConstraints: pulumi.Input.fromValue(NameConstraintsResponse.fromMap((map['nameConstraints']! as Map).cast<String, dynamic>())),
      policyIds: pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectIdResponse>(map['policyIds']!, (value) => ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

