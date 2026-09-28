import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_policy_definition.dart';
import 'oidc_issuer_args.dart';

/// Register an OIDC Provider to establish a trust relationship between third-party systems like GitHub Actions and Pulumi Cloud, obviating the need to store a hard-coded Pulumi Cloud token in systems that need to run Pulumi commands or consume Pulumi Cloud APIs. Instead of a hard-coded, static token that must be manually rotated, trusted systems are granted temporary Pulumi Cloud tokens on an as-needed basis, which is more secure than static tokens.
class OidcIssuer extends pulumi.CustomResource {
  /// The maximum duration of the Pulumi access token working after an exchange, specified in seconds.
  late final pulumi.Output<int?> maxExpirationSeconds;
  /// Issuer name.
  late final pulumi.Output<String> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// The auth policies for this Oidc Issuer.
  late final pulumi.Output<List<AuthPolicyDefinition>> policies;
  /// The thumbprints of issuer's TLS certificates. By default, Pulumi will store the thumbprint of the certificate used to serve the OpenID configuration. If the provider uses multiple certificates to serve content, it is required to manually configure these.
  late final pulumi.Output<List<String>> thumbprints;
  /// The OIDC issuer URL.
  late final pulumi.Output<String> url;

  /// Creates a new [OidcIssuer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OidcIssuer]. {@macro pulumi_index_oidc_issuer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OidcIssuer(
    String name, {
    OidcIssuerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OidcIssuer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['organization', 'url']).merge(options),
        ) {
    maxExpirationSeconds = registerOutput<int?>('maxExpirationSeconds');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policies = registerOutput<List<AuthPolicyDefinition>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthPolicyDefinition>(guardedValue, (value) => AuthPolicyDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    thumbprints = registerOutput<List<String>>('thumbprints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    url = registerOutput<String>('url');
  }

  /// Creates a typed reference to an existing [OidcIssuer] resource.
  OidcIssuer.reference(String urn)
    : super(
        'pulumiservice:index:OidcIssuer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    maxExpirationSeconds = registerOutput<int?>('maxExpirationSeconds');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policies = registerOutput<List<AuthPolicyDefinition>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AuthPolicyDefinition>(guardedValue, (value) => AuthPolicyDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    thumbprints = registerOutput<List<String>>('thumbprints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    url = registerOutput<String>('url');
  }
}
