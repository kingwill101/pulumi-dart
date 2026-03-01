// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_template_identity_constraints.dart';
import 'certificate_template_passthrough_extensions.dart';
import 'certificate_template_predefined_values.dart';

/// {@template pulumi_certificateauthority_certificate_template_certificate_template_args_doc}
/// The set of arguments for CertificateTemplate.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_certificate_template_certificate_template_args_doc}
class CertificateTemplateArgs {
  /// Optional. A human-readable description of scenarios this template is intended for.
  final pulumi.Input<String>? description;
  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplateIdentityConstraints>? identityConstraints;
  /// Optional. Labels with user-defined metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Optional. The maximum lifetime allowed for all issued certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum lifetime the minimum of the two durations will be the maximum lifetime for issued. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  final pulumi.Input<String>? maximumLifetime;
  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  final pulumi.Input<String>? name;
  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePassthroughExtensions>? passthroughExtensions;
  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// Structure is documented below.
  final pulumi.Input<CertificateTemplatePredefinedValues>? predefinedValues;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateTemplateArgs].
  /// [description] Optional. A human-readable description of scenarios this template is intended for.
  /// [identityConstraints] Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [location] The location for the resource
  /// [maximumLifetime] Optional. The maximum lifetime allowed for all issued certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum lifetime the minimum of the two durations will be the maximum lifetime for issued. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  /// [name] The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  /// [passthroughExtensions] Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// [predefinedValues] Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// [project] The ID of the project in which the resource belongs.
  CertificateTemplateArgs({
    pulumi.Output<String>? description,
    pulumi.Output<CertificateTemplateIdentityConstraints>? identityConstraints,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? maximumLifetime,
    pulumi.Output<String>? name,
    pulumi.Output<CertificateTemplatePassthroughExtensions>? passthroughExtensions,
    pulumi.Output<CertificateTemplatePredefinedValues>? predefinedValues,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      identityConstraints = pulumi.Input.asOptionalInput<CertificateTemplateIdentityConstraints>(identityConstraints),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      maximumLifetime = pulumi.Input.asOptionalInput<String>(maximumLifetime),
      name = pulumi.Input.asOptionalInput<String>(name),
      passthroughExtensions = pulumi.Input.asOptionalInput<CertificateTemplatePassthroughExtensions>(passthroughExtensions),
      predefinedValues = pulumi.Input.asOptionalInput<CertificateTemplatePredefinedValues>(predefinedValues),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'identityConstraints': ?pulumi.Input.mapOptionalInputValue<CertificateTemplateIdentityConstraints, Map<String, dynamic>>(identityConstraints, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'maximumLifetime': ?maximumLifetime,
      'name': ?name,
      'passthroughExtensions': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePassthroughExtensions, Map<String, dynamic>>(passthroughExtensions, (value) => value.toMap()),
      'predefinedValues': ?pulumi.Input.mapOptionalInputValue<CertificateTemplatePredefinedValues, Map<String, dynamic>>(predefinedValues, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory CertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identityConstraints: map['identityConstraints'] == null ? null : pulumi.Output.create<CertificateTemplateIdentityConstraints>(CertificateTemplateIdentityConstraints.fromMap((map['identityConstraints'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      maximumLifetime: map['maximumLifetime'] == null ? null : pulumi.Output.create<String>(map['maximumLifetime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      passthroughExtensions: map['passthroughExtensions'] == null ? null : pulumi.Output.create<CertificateTemplatePassthroughExtensions>(CertificateTemplatePassthroughExtensions.fromMap((map['passthroughExtensions'] as Map).cast<String, dynamic>())),
      predefinedValues: map['predefinedValues'] == null ? null : pulumi.Output.create<CertificateTemplatePredefinedValues>(CertificateTemplatePredefinedValues.fromMap((map['predefinedValues'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

