import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_args.dart';
import 'issuance_policy_response.dart';
import 'publishing_options_response.dart';

/// Create a CaPool.
/// Auto-naming is currently not supported for this resource.
class CaPool extends pulumi.CustomResource {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> caPoolId;
  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  late final pulumi.Output<IssuancePolicyResponse> issuancePolicy;
  /// Optional. Labels with user-defined metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  late final pulumi.Output<PublishingOptionsResponse> publishingOptions;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Immutable. The Tier of this CaPool.
  late final pulumi.Output<String> tier;

  /// Creates a new [CaPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaPool]. {@macro pulumi_privateca_v1_ca_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaPool(
    String name, {
    CaPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:privateca/v1:CaPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['caPoolId', 'location', 'project']).merge(options),
        ) {
    caPoolId = registerOutput<String>('caPoolId');
    issuancePolicy = registerOutput<IssuancePolicyResponse>('issuancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IssuancePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishingOptions = registerOutput<PublishingOptionsResponse>('publishingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PublishingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestId = registerOutput<String?>('requestId');
    tier = registerOutput<String>('tier');
  }

  /// Creates a typed reference to an existing [CaPool] resource.
  CaPool.reference(String urn)
    : super(
        'google-native:privateca/v1:CaPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caPoolId = registerOutput<String>('caPoolId');
    issuancePolicy = registerOutput<IssuancePolicyResponse>('issuancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IssuancePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publishingOptions = registerOutput<PublishingOptionsResponse>('publishingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PublishingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    requestId = registerOutput<String?>('requestId');
    tier = registerOutput<String>('tier');
  }
}
