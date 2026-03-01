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
  CertificateTemplateArgs({
    required pulumi.Output<String> certificateTemplateId,
    pulumi.Output<String>? description,
    pulumi.Output<CertificateIdentityConstraints>? identityConstraints,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maximumLifetime,
    pulumi.Output<CertificateExtensionConstraints>? passthroughExtensions,
    pulumi.Output<X509Parameters>? predefinedValues,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
  }) :
      certificateTemplateId = pulumi.Input.asInput<String>(certificateTemplateId),
      description = pulumi.Input.asOptionalInput<String>(description),
      identityConstraints = pulumi.Input.asOptionalInput<CertificateIdentityConstraints>(identityConstraints),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumLifetime = pulumi.Input.asOptionalInput<String>(maximumLifetime),
      passthroughExtensions = pulumi.Input.asOptionalInput<CertificateExtensionConstraints>(passthroughExtensions),
      predefinedValues = pulumi.Input.asOptionalInput<X509Parameters>(predefinedValues),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

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
      certificateTemplateId: pulumi.Output.create<String>(map['certificateTemplateId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identityConstraints: map['identityConstraints'] == null ? null : pulumi.Output.create<CertificateIdentityConstraints>(CertificateIdentityConstraints.fromMap((map['identityConstraints'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumLifetime: map['maximumLifetime'] == null ? null : pulumi.Output.create<String>(map['maximumLifetime'] as String),
      passthroughExtensions: map['passthroughExtensions'] == null ? null : pulumi.Output.create<CertificateExtensionConstraints>(CertificateExtensionConstraints.fromMap((map['passthroughExtensions'] as Map).cast<String, dynamic>())),
      predefinedValues: map['predefinedValues'] == null ? null : pulumi.Output.create<X509Parameters>(X509Parameters.fromMap((map['predefinedValues'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
    );
  }
}

