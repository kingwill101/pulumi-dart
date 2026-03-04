import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_aware_proxy_client_args.dart';

/// Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP. Requires that the brand for the project exists and that it is set for internal-only use.
/// Auto-naming is currently not supported for this resource.
class IdentityAwareProxyClient extends pulumi.CustomResource {
  late final pulumi.Output<String> brandId;

  /// Human-friendly name given to the OAuth client.
  late final pulumi.Output<String> displayName;

  /// Unique identifier of the OAuth client.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Client secret of the OAuth client.
  late final pulumi.Output<String> secret;

  /// Creates a new [IdentityAwareProxyClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityAwareProxyClient]. {@macro pulumi_iap_v1_identity_aware_proxy_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityAwareProxyClient(
    String name, {
    IdentityAwareProxyClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:iap/v1:IdentityAwareProxyClient',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    brandId = registerOutput<String>('brandId');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret');
  }
}
