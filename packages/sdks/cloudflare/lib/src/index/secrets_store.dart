import 'package:pulumi/pulumi.dart' as pulumi;
import 'secrets_store_args.dart';
import 'secrets_store_state.dart';

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
/// const exampleSecretsStore = new cloudflare.SecretsStore("example_secrets_store", {
///     accountId: "985e105f4ecef8ad9ca31a8372d0c353",
///     name: "service_x_keys",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_secrets_store = cloudflare.SecretsStore("example_secrets_store",
///     account_id="985e105f4ecef8ad9ca31a8372d0c353",
///     name="service_x_keys")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSecretsStore = new Cloudflare.SecretsStore("example_secrets_store", new()
///     {
///         AccountId = "985e105f4ecef8ad9ca31a8372d0c353",
///         Name = "service_x_keys",
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
/// 		_, err := cloudflare.NewSecretsStore(ctx, "example_secrets_store", &cloudflare.SecretsStoreArgs{
/// 			AccountId: pulumi.String("985e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("service_x_keys"),
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
/// resource "cloudflare_secretsstore" "example_secrets_store" {
///   account_id = "985e105f4ecef8ad9ca31a8372d0c353"
///   name       = "service_x_keys"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.SecretsStore;
/// import com.pulumi.cloudflare.SecretsStoreArgs;
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
///         var exampleSecretsStore = new SecretsStore("exampleSecretsStore", SecretsStoreArgs.builder()
///             .accountId("985e105f4ecef8ad9ca31a8372d0c353")
///             .name("service_x_keys")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSecretsStore:
///     type: cloudflare:SecretsStore
///     name: example_secrets_store
///     properties:
///       accountId: 985e105f4ecef8ad9ca31a8372d0c353
///       name: service_x_keys
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/secretsStore:SecretsStore example '<account_id>/<store_id>'
/// ```
class SecretsStore extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// When the secret was created.
  late final pulumi.Output<String> created;
  /// When the secret was modified.
  late final pulumi.Output<String> modified;
  /// The name of the store.
  late final pulumi.Output<String> name;

  /// Creates a new [SecretsStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretsStore]. {@macro pulumi_index_secrets_store_secrets_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretsStore(
    String name, {
    SecretsStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/secretsStore:SecretsStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [SecretsStore] resource's state with the given [name] and [id].
  static SecretsStore get(
    String name,
    pulumi.Input<String> id, {
    SecretsStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecretsStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecretsStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/secretsStore:SecretsStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [SecretsStore] resource.
  SecretsStore.reference(String urn)
    : super(
        'cloudflare:index/secretsStore:SecretsStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }
}
