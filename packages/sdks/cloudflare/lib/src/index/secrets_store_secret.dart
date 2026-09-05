import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_store_secret_args.dart';
import 'secrets_store_secret_state.dart';

/// Accepted Permissions
///
/// - `Secrets Store Read`
/// - `Secrets Store Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleSecretsStoreSecret = new cloudflare.SecretsStoreSecret("example_secrets_store_secret", {
///     accountId: "985e105f4ecef8ad9ca31a8372d0c353",
///     storeId: "023e105f4ecef8ad9ca31a8372d0c353",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_secrets_store_secret = cloudflare.SecretsStoreSecret("example_secrets_store_secret",
///     account_id="985e105f4ecef8ad9ca31a8372d0c353",
///     store_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSecretsStoreSecret = new Cloudflare.SecretsStoreSecret("example_secrets_store_secret", new()
///     {
///         AccountId = "985e105f4ecef8ad9ca31a8372d0c353",
///         StoreId = "023e105f4ecef8ad9ca31a8372d0c353",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewSecretsStoreSecret(ctx, "example_secrets_store_secret", &cloudflare.SecretsStoreSecretArgs{
/// 			AccountId: pulumi.String("985e105f4ecef8ad9ca31a8372d0c353"),
/// 			StoreId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_secretsstoresecret" "example_secrets_store_secret" {
///   account_id = "985e105f4ecef8ad9ca31a8372d0c353"
///   store_id   = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SecretsStoreSecret;
/// import com.pulumi.cloudflare.SecretsStoreSecretArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleSecretsStoreSecret = new SecretsStoreSecret("exampleSecretsStoreSecret", SecretsStoreSecretArgs.builder()
///             .accountId("985e105f4ecef8ad9ca31a8372d0c353")
///             .storeId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSecretsStoreSecret:
///     type: cloudflare:SecretsStoreSecret
///     name: example_secrets_store_secret
///     properties:
///       accountId: 985e105f4ecef8ad9ca31a8372d0c353
///       storeId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/secretsStoreSecret:SecretsStoreSecret example '<account_id>/<store_id>/<secret_id>'
/// ```
class SecretsStoreSecret extends pulumi.CustomResource {
  /// Account Identifier
  late final pulumi.Output<String> accountId;
  /// Freeform text describing the secret
  late final pulumi.Output<String?> comment;
  /// When the secret was created.
  late final pulumi.Output<String> created;
  /// When the secret was modified.
  late final pulumi.Output<String> modified;
  /// The name of the secret
  late final pulumi.Output<String> name;
  /// The list of services that can use this secret. Valid values are `workers`, `aiGateway`, `dex`, and `access`. Must be listed in alphabetical order.
  late final pulumi.Output<List<String>> scopes;
  /// Available values: "pending", "active", "deleted".
  late final pulumi.Output<String> status;
  /// Store Identifier
  late final pulumi.Output<String> storeId;
  /// The value of the secret. Maximum 64 KiB (65,536 bytes). Note that this is 'write only' - no API response will provide this value, it is only used to create/modify secrets.
  late final pulumi.Output<String> value;

  /// Creates a new [SecretsStoreSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretsStoreSecret]. {@macro pulumi_index_secrets_store_secret_secrets_store_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretsStoreSecret(
    String name, {
    SecretsStoreSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/secretsStoreSecret:SecretsStoreSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    storeId = registerOutput<String>('storeId');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Gets an existing [SecretsStoreSecret] resource's state with the given [name] and [id].
  static SecretsStoreSecret get(
    String name,
    pulumi.Input<String> id, {
    SecretsStoreSecretState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecretsStoreSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecretsStoreSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/secretsStoreSecret:SecretsStoreSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    storeId = registerOutput<String>('storeId');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Creates a typed reference to an existing [SecretsStoreSecret] resource.
  SecretsStoreSecret.reference(String urn)
    : super(
        'cloudflare:index/secretsStoreSecret:SecretsStoreSecret',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    comment = registerOutput<String?>('comment');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    storeId = registerOutput<String>('storeId');
    value = registerOutput<String>('value', isSecret: true);
  }
}
