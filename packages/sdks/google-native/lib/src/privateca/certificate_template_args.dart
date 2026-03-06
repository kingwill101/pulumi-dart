// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_extension_constraints.dart';
import 'certificate_identity_constraints.dart';
import 'x509_parameters.dart';

/// {@template pulumi_privateca_v1_certificate_template_args_doc}
/// The set of arguments for CertificateTemplate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_certificate_template_args_doc}
class CertificateTemplateArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> certificateTemplateId;
  /// Optional. A human-readable description of scenarios this template is intended for.
  final pulumi.Input<String>? description;
  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  final pulumi.Input<CertificateIdentityConstraints>? identityConstraints;
  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String>? maximumLifetime;
  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  final pulumi.Input<CertificateExtensionConstraints>? passthroughExtensions;
  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  final pulumi.Input<X509Parameters>? predefinedValues;
  final pulumi.Input<String>? project;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [CertificateTemplateArgs].
  /// [certificateTemplateId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [description] Optional. A human-readable description of scenarios this template is intended for.
  /// [identityConstraints] Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [location] Optional.
  /// [maximumLifetime] Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  /// [passthroughExtensions] Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// [predefinedValues] Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// [project] Optional.
  /// [requestId] Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  const CertificateTemplateArgs({
    required this.certificateTemplateId,
    this.description,
    this.identityConstraints,
    this.labels,
    this.location,
    this.maximumLifetime,
    this.passthroughExtensions,
    this.predefinedValues,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateTemplateId': certificateTemplateId,
      'description': ?description,
      'identityConstraints': ?pulumi.Input.mapOptionalInputValue<CertificateIdentityConstraints, Map<String, dynamic>>(identityConstraints, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maximumLifetime': ?maximumLifetime,
      'passthroughExtensions': ?pulumi.Input.mapOptionalInputValue<CertificateExtensionConstraints, Map<String, dynamic>>(passthroughExtensions, (value) => value.toMap()),
      'predefinedValues': ?pulumi.Input.mapOptionalInputValue<X509Parameters, Map<String, dynamic>>(predefinedValues, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
    };
  }

  factory CertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateArgs(
      certificateTemplateId: pulumi.Input.fromValue(map['certificateTemplateId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityConstraints: (() { final guardedValue = map['identityConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateIdentityConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumLifetime: (() { final guardedValue = map['maximumLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passthroughExtensions: (() { final guardedValue = map['passthroughExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateExtensionConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predefinedValues: (() { final guardedValue = map['predefinedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(X509Parameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

