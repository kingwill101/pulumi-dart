import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidc_issuer_args.dart';

/// Registers a new OIDC issuer for an organization, establishing a trust relationship with an external identity provider. Once registered, the identity provider can issue signed, short-lived tokens that are exchanged for temporary Pulumi Cloud credentials during deployments. This eliminates the need to store long-lived access tokens. Supported providers include AWS, Azure, Google Cloud, GitHub Actions, and any OIDC-compliant identity provider. The request must include the issuer URL, and the service will fetch the provider's public signing keys to verify token authenticity.
class OidcIssuer extends pulumi.CustomResource {
  /// The ISO 8601 timestamp when the OIDC issuer was created.
  late final pulumi.Output<String?> created;
  /// The OIDC issuer identifier, typically a URL that uniquely identifies the identity provider.
  late final pulumi.Output<String> issuer;
  /// The unique identifier of the registered OIDC issuer.
  late final pulumi.Output<String> issuerId;
  /// The JSON Web Key Set for the OIDC issuer.
  late final pulumi.Output<dynamic> jwks;
  /// The ISO 8601 timestamp when the OIDC issuer was last used for token exchange.
  late final pulumi.Output<String?> lastUsed;
  /// The maximum token expiration time in seconds.
  late final pulumi.Output<int?> maxExpiration;
  /// The ISO 8601 timestamp when the OIDC issuer was last modified.
  late final pulumi.Output<String?> modified;
  /// The display name of the OIDC issuer.
  late final pulumi.Output<String> name;
  /// SHA-1 certificate thumbprints used to verify the OIDC issuer's TLS certificate.
  late final pulumi.Output<List<String>?> thumbprints;
  /// The URL of the OIDC issuer.
  late final pulumi.Output<String> url;

  /// Creates a new [OidcIssuer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OidcIssuer]. {@macro pulumi_api_auth_oidc_issuer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OidcIssuer(
    String name, {
    OidcIssuerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/auth:OidcIssuer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String?>('created');
    issuer = registerOutput<String>('issuer');
    issuerId = registerOutput<String>('issuerId');
    jwks = registerOutput<dynamic>('jwks');
    lastUsed = registerOutput<String?>('lastUsed');
    maxExpiration = registerOutput<int?>('maxExpiration');
    modified = registerOutput<String?>('modified');
    this.name = registerOutput<String>('name');
    thumbprints = registerOutput<List<String>?>('thumbprints');
    url = registerOutput<String>('url');
  }
}
