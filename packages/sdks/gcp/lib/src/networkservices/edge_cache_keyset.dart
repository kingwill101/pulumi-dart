import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_keyset_args.dart';
import 'edge_cache_keyset_state.dart';

/// EdgeCacheKeyset represents a collection of public keys used for validating signed requests.
///
///
/// To get more information about EdgeCacheKeyset, see:
///
/// * [API documentation](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheKeysets)
/// * How-to Guides
/// * [Create keysets](https://cloud.google.com/media-cdn/docs/create-keyset)
///
///
///
/// ## Example Usage
///
/// ### Network Services Edge Cache Keyset Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.EdgeCacheKeyset("default", {
///     name: "my-keyset",
///     description: "The default keyset",
///     publicKeys: [
///         {
///             id: "my-public-key",
///             value: "FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY",
///         },
///         {
///             id: "my-public-key-2",
///             value: "hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.EdgeCacheKeyset("default",
///     name="my-keyset",
///     description="The default keyset",
///     public_keys=[
///         {
///             "id": "my-public-key",
///             "value": "FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY",
///         },
///         {
///             "id": "my-public-key-2",
///             "value": "hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.EdgeCacheKeyset("default", new()
///     {
///         Name = "my-keyset",
///         Description = "The default keyset",
///         PublicKeys = new[]
///         {
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetPublicKeyArgs
///             {
///                 Id = "my-public-key",
///                 Value = "FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY",
///             },
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetPublicKeyArgs
///             {
///                 Id = "my-public-key-2",
///                 Value = "hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewEdgeCacheKeyset(ctx, "default", &networkservices.EdgeCacheKeysetArgs{
/// 			Name:        pulumi.String("my-keyset"),
/// 			Description: pulumi.String("The default keyset"),
/// 			PublicKeys: networkservices.EdgeCacheKeysetPublicKeyArray{
/// 				&networkservices.EdgeCacheKeysetPublicKeyArgs{
/// 					Id:    pulumi.String("my-public-key"),
/// 					Value: pulumi.String("FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY"),
/// 				},
/// 				&networkservices.EdgeCacheKeysetPublicKeyArgs{
/// 					Id:    pulumi.String("my-public-key-2"),
/// 					Value: pulumi.String("hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeyset;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeysetArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheKeysetPublicKeyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var default_ = new EdgeCacheKeyset("default", EdgeCacheKeysetArgs.builder()
///             .name("my-keyset")
///             .description("The default keyset")
///             .publicKeys(
///                 EdgeCacheKeysetPublicKeyArgs.builder()
///                     .id("my-public-key")
///                     .value("FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY")
///                     .build(),
///                 EdgeCacheKeysetPublicKeyArgs.builder()
///                     .id("my-public-key-2")
///                     .value("hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:EdgeCacheKeyset
///     properties:
///       name: my-keyset
///       description: The default keyset
///       publicKeys:
///         - id: my-public-key
///           value: FHsTyFHNmvNpw4o7-rp-M1yqMyBF8vXSBRkZtkQ0RKY
///         - id: my-public-key-2
///           value: hzd03llxB1u5FOLKFkZ6_wCJqC7jtN0bg7xlBqS6WVM
/// ```
///
/// ### Network Services Edge Cache Keyset Dual Token
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-name",
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_basic = new gcp.secretmanager.SecretVersion("secret-version-basic", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
/// });
/// const _default = new gcp.networkservices.EdgeCacheKeyset("default", {
///     name: "my-keyset",
///     description: "The default keyset",
///     publicKeys: [{
///         id: "my-public-key",
///         managed: true,
///     }],
///     validationSharedKeys: [{
///         secretVersion: secret_version_basic.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-name",
///     replication={
///         "auto": {},
///     })
/// secret_version_basic = gcp.secretmanager.SecretVersion("secret-version-basic",
///     secret=secret_basic.id,
///     secret_data="secret-data")
/// default = gcp.networkservices.EdgeCacheKeyset("default",
///     name="my-keyset",
///     description="The default keyset",
///     public_keys=[{
///         "id": "my-public-key",
///         "managed": True,
///     }],
///     validation_shared_keys=[{
///         "secret_version": secret_version_basic.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-name",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_basic = new Gcp.SecretManager.SecretVersion("secret-version-basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///     });
///
///     var @default = new Gcp.NetworkServices.EdgeCacheKeyset("default", new()
///     {
///         Name = "my-keyset",
///         Description = "The default keyset",
///         PublicKeys = new[]
///         {
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetPublicKeyArgs
///             {
///                 Id = "my-public-key",
///                 Managed = true,
///             },
///         },
///         ValidationSharedKeys = new[]
///         {
///             new Gcp.NetworkServices.Inputs.EdgeCacheKeysetValidationSharedKeyArgs
///             {
///                 SecretVersion = secret_version_basic.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-name"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secret_version_basic, err := secretmanager.NewSecretVersion(ctx, "secret-version-basic", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret_basic.ID(),
/// 			SecretData: pulumi.String("secret-data"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewEdgeCacheKeyset(ctx, "default", &networkservices.EdgeCacheKeysetArgs{
/// 			Name:        pulumi.String("my-keyset"),
/// 			Description: pulumi.String("The default keyset"),
/// 			PublicKeys: networkservices.EdgeCacheKeysetPublicKeyArray{
/// 				&networkservices.EdgeCacheKeysetPublicKeyArgs{
/// 					Id:      pulumi.String("my-public-key"),
/// 					Managed: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ValidationSharedKeys: networkservices.EdgeCacheKeysetValidationSharedKeyArray{
/// 				&networkservices.EdgeCacheKeysetValidationSharedKeyArgs{
/// 					SecretVersion: secret_version_basic.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeyset;
/// import com.pulumi.gcp.networkservices.EdgeCacheKeysetArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheKeysetPublicKeyArgs;
/// import com.pulumi.gcp.networkservices.inputs.EdgeCacheKeysetValidationSharedKeyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-name")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic = new SecretVersion("secret-version-basic", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .build());
///
///         var default_ = new EdgeCacheKeyset("default", EdgeCacheKeysetArgs.builder()
///             .name("my-keyset")
///             .description("The default keyset")
///             .publicKeys(EdgeCacheKeysetPublicKeyArgs.builder()
///                 .id("my-public-key")
///                 .managed(true)
///                 .build())
///             .validationSharedKeys(EdgeCacheKeysetValidationSharedKeyArgs.builder()
///                 .secretVersion(secret_version_basic.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-name
///       replication:
///         auto: {}
///   secret-version-basic:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///   default:
///     type: gcp:networkservices:EdgeCacheKeyset
///     properties:
///       name: my-keyset
///       description: The default keyset
///       publicKeys:
///         - id: my-public-key
///           managed: true
///       validationSharedKeys:
///         - secretVersion: ${["secret-version-basic"].id}
/// ```
///
///
/// ## Import
///
/// EdgeCacheKeyset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/edgeCacheKeysets/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EdgeCacheKeyset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheKeyset:EdgeCacheKeyset default projects/{{project}}/locations/global/edgeCacheKeysets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheKeyset:EdgeCacheKeyset default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheKeyset:EdgeCacheKeyset default {{name}}
/// ```
class EdgeCacheKeyset extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// An ordered list of Ed25519 public keys to use for validating signed requests.
  /// You must specify `public_keys` or `validation_shared_keys` (or both). The keys in `public_keys` are checked first.
  /// You may specify no more than one Google-managed public key.
  /// If you specify `public_keys`, you must specify at least one (1) key and may specify up to three (3) keys.
  /// Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
  /// Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> publicKeys;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// An ordered list of shared keys to use for validating signed requests.
  /// Shared keys are secret.  Ensure that only authorized users can add `validation_shared_keys` to a keyset.
  /// You can rotate keys by appending (pushing) a new key to the list of `validation_shared_keys` and removing any superseded keys.
  /// You must specify `public_keys` or `validation_shared_keys` (or both). The keys in `public_keys` are checked first.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> validationSharedKeys;

  /// Creates a new [EdgeCacheKeyset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeCacheKeyset]. {@macro pulumi_networkservices_edge_cache_keyset_edge_cache_keyset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeCacheKeyset(
    String name, {
    EdgeCacheKeysetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/edgeCacheKeyset:EdgeCacheKeyset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publicKeys = registerOutput<List<Map<String, dynamic>>?>('publicKeys');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    validationSharedKeys = registerOutput<List<Map<String, dynamic>>?>(
      'validationSharedKeys',
    );
  }

  /// Gets an existing [EdgeCacheKeyset] resource's state with the given [name] and [id].
  static EdgeCacheKeyset get(
    String name,
    pulumi.Input<String> id, {
    EdgeCacheKeysetState? state,
  }) {
    return EdgeCacheKeyset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EdgeCacheKeyset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/edgeCacheKeyset:EdgeCacheKeyset',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    publicKeys = registerOutput<List<Map<String, dynamic>>?>('publicKeys');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    validationSharedKeys = registerOutput<List<Map<String, dynamic>>?>(
      'validationSharedKeys',
    );
  }
}
