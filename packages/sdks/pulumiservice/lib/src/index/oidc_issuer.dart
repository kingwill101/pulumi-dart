import 'package:pulumi/pulumi.dart' as pulumi;
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
  late final pulumi.Output<List<Map<String, dynamic>>> policies;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    maxExpirationSeconds = registerOutput<int?>('maxExpirationSeconds');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
    thumbprints = registerOutput<List<String>>('thumbprints');
    url = registerOutput<String>('url');
  }
}
