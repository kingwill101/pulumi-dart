import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_extension_constraints_response.dart';
import 'certificate_identity_constraints_response.dart';
import 'certificate_template_args.dart';
import 'x509_parameters_response.dart';

/// Create a new CertificateTemplate in a given Project and Location.
/// Auto-naming is currently not supported for this resource.
class CertificateTemplate extends pulumi.CustomResource {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> certificateTemplateId;

  /// The time at which this CertificateTemplate was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A human-readable description of scenarios this template is intended for.
  late final pulumi.Output<String> description;

  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  late final pulumi.Output<CertificateIdentityConstraintsResponse>
  identityConstraints;

  /// Optional. Labels with user-defined metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. The maximum lifetime allowed for issued Certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum_lifetime the minimum of the two durations will be the maximum lifetime for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  late final pulumi.Output<String> maximumLifetime;

  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  late final pulumi.Output<String> name;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  late final pulumi.Output<CertificateExtensionConstraintsResponse>
  passthroughExtensions;

  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  late final pulumi.Output<X509ParametersResponse> predefinedValues;
  late final pulumi.Output<String> project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The time at which this CertificateTemplate was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateTemplate]. {@macro pulumi_privateca_v1_certificate_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateTemplate(
    String name, {
    CertificateTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:privateca/v1:CertificateTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateTemplateId = registerOutput<String>('certificateTemplateId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    identityConstraints =
        registerOutput<CertificateIdentityConstraintsResponse>(
          'identityConstraints',
        );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    maximumLifetime = registerOutput<String>('maximumLifetime');
    this.name = registerOutput<String>('name');
    passthroughExtensions =
        registerOutput<CertificateExtensionConstraintsResponse>(
          'passthroughExtensions',
        );
    predefinedValues = registerOutput<X509ParametersResponse>(
      'predefinedValues',
    );
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    updateTime = registerOutput<String>('updateTime');
  }
}
