// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_key_type_response.dart';
import 'certificate_extension_constraints_response.dart';
import 'certificate_identity_constraints_response.dart';
import 'issuance_modes_response.dart';
import 'x509_parameters_response.dart';

/// Defines controls over all certificate issuance within a CaPool.
class IssuancePolicyResponse {
  /// Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  final pulumi.Input<IssuanceModesResponse> allowedIssuanceModes;

  /// Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  final pulumi.Input<List<AllowedKeyTypeResponse>> allowedKeyTypes;

  /// Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  final pulumi.Input<X509ParametersResponse> baselineValues;

  /// Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  final pulumi.Input<CertificateIdentityConstraintsResponse>
  identityConstraints;

  /// Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String> maximumLifetime;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  final pulumi.Input<CertificateExtensionConstraintsResponse>
  passthroughExtensions;

  /// Creates a new [IssuancePolicyResponse].
  /// [allowedIssuanceModes] Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.
  /// [allowedKeyTypes] Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.
  /// [baselineValues] Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.
  /// [identityConstraints] Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.
  /// [maximumLifetime] Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  /// [passthroughExtensions] Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.
  IssuancePolicyResponse({
    required this.allowedIssuanceModes,
    required this.allowedKeyTypes,
    required this.baselineValues,
    required this.identityConstraints,
    required this.maximumLifetime,
    required this.passthroughExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIssuanceModes':
          pulumi.Input.mapInputValue<
            IssuanceModesResponse,
            Map<String, dynamic>
          >(allowedIssuanceModes, (value) => value.toMap()),
      'allowedKeyTypes':
          pulumi.Input.mapInputValue<
            List<AllowedKeyTypeResponse>,
            List<Map<String, dynamic>>
          >(
            allowedKeyTypes,
            (value) =>
                pulumi.Input.encodeList<
                  AllowedKeyTypeResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'baselineValues':
          pulumi.Input.mapInputValue<
            X509ParametersResponse,
            Map<String, dynamic>
          >(baselineValues, (value) => value.toMap()),
      'identityConstraints':
          pulumi.Input.mapInputValue<
            CertificateIdentityConstraintsResponse,
            Map<String, dynamic>
          >(identityConstraints, (value) => value.toMap()),
      'maximumLifetime': maximumLifetime,
      'passthroughExtensions':
          pulumi.Input.mapInputValue<
            CertificateExtensionConstraintsResponse,
            Map<String, dynamic>
          >(passthroughExtensions, (value) => value.toMap()),
    };
  }

  factory IssuancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return IssuancePolicyResponse(
      allowedIssuanceModes: pulumi.Input.fromValue(
        IssuanceModesResponse.fromMap(
          (map['allowedIssuanceModes']! as Map).cast<String, dynamic>(),
        ),
      ),
      allowedKeyTypes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AllowedKeyTypeResponse>(
          map['allowedKeyTypes']!,
          (value) => AllowedKeyTypeResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      baselineValues: pulumi.Input.fromValue(
        X509ParametersResponse.fromMap(
          (map['baselineValues']! as Map).cast<String, dynamic>(),
        ),
      ),
      identityConstraints: pulumi.Input.fromValue(
        CertificateIdentityConstraintsResponse.fromMap(
          (map['identityConstraints']! as Map).cast<String, dynamic>(),
        ),
      ),
      maximumLifetime: pulumi.Input.fromValue(map['maximumLifetime'] as String),
      passthroughExtensions: pulumi.Input.fromValue(
        CertificateExtensionConstraintsResponse.fromMap(
          (map['passthroughExtensions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
