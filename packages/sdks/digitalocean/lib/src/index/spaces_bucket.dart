import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_args.dart';
import 'spaces_bucket_state.dart';
import 'spaces_bucket_versioning.dart';

/// Provides a bucket resource for Spaces, DigitalOcean's object storage product.
///
/// The [Spaces API](https://docs.digitalocean.com/reference/api/spaces-api/) was
/// designed to be interoperable with Amazon's AWS S3 API. This allows users to
/// interact with the service while using the tools they already know. Spaces
/// mirrors S3's authentication framework and requests to Spaces require a key pair
/// similar to Amazon's Access ID and Secret Key.
///
/// The authentication requirement can be met by either setting the
/// `SPACES_ACCESS_KEY_ID` and `SPACES_SECRET_ACCESS_KEY` environment variables or
/// the provider's `spaces_access_id` and `spaces_secret_key` arguments to the
/// access ID and secret you generate via the DigitalOcean control panel. For
/// example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const static_assets = new digitalocean.SpacesBucket("static-assets", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// static_assets = digitalocean.SpacesBucket("static-assets")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var static_assets = new DigitalOcean.SpacesBucket("static-assets");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesBucket(ctx, "static-assets", nil)
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
/// import com.pulumi.digitalocean.SpacesBucket;
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
///         var static_assets = new SpacesBucket("static-assets");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   static-assets:
///     type: digitalocean:SpacesBucket
/// ```
///
///
/// For more information, See [An Introduction to DigitalOcean Spaces](https://www.digitalocean.com/community/tutorials/an-introduction-to-digitalocean-spaces)
///
/// ## Example Usage
///
/// ### Create a New Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesBucket("foobar", {
///     name: "foobar",
///     region: digitalocean.Region.NYC3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesBucket("foobar",
///     name="foobar",
///     region=digitalocean.Region.NYC3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesBucket("foobar", new()
///     {
///         Name = "foobar",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesBucket(ctx, "foobar", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("foobar"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
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
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
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
///         var foobar = new SpacesBucket("foobar", SpacesBucketArgs.builder()
///             .name("foobar")
///             .region("nyc3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: foobar
///       region: nyc3
/// ```
///
///
/// ### Create a New Bucket With CORS Rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.SpacesBucket("foobar", {
///     name: "foobar",
///     region: digitalocean.Region.NYC3,
///     corsRules: [
///         {
///             allowedHeaders: ["*"],
///             allowedMethods: ["GET"],
///             allowedOrigins: ["*"],
///             maxAgeSeconds: 3000,
///         },
///         {
///             allowedHeaders: ["*"],
///             allowedMethods: [
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             allowedOrigins: ["https://www.example.com"],
///             maxAgeSeconds: 3000,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesBucket("foobar",
///     name="foobar",
///     region=digitalocean.Region.NYC3,
///     cors_rules=[
///         {
///             "allowed_headers": ["*"],
///             "allowed_methods": ["GET"],
///             "allowed_origins": ["*"],
///             "max_age_seconds": 3000,
///         },
///         {
///             "allowed_headers": ["*"],
///             "allowed_methods": [
///                 "PUT",
///                 "POST",
///                 "DELETE",
///             ],
///             "allowed_origins": ["https://www.example.com"],
///             "max_age_seconds": 3000,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.SpacesBucket("foobar", new()
///     {
///         Name = "foobar",
///         Region = DigitalOcean.Region.NYC3,
///         CorsRules = new[]
///         {
///             new DigitalOcean.Inputs.SpacesBucketCorsRuleArgs
///             {
///                 AllowedHeaders = new[]
///                 {
///                     "*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "*",
///                 },
///                 MaxAgeSeconds = 3000,
///             },
///             new DigitalOcean.Inputs.SpacesBucketCorsRuleArgs
///             {
///                 AllowedHeaders = new[]
///                 {
///                     "*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "PUT",
///                     "POST",
///                     "DELETE",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "https://www.example.com",
///                 },
///                 MaxAgeSeconds = 3000,
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewSpacesBucket(ctx, "foobar", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("foobar"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 			CorsRules: digitalocean.SpacesBucketCorsRuleArray{
/// 				&digitalocean.SpacesBucketCorsRuleArgs{
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(3000),
/// 				},
/// 				&digitalocean.SpacesBucketCorsRuleArgs{
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("PUT"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("DELETE"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("https://www.example.com"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(3000),
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
/// import com.pulumi.digitalocean.SpacesBucket;
/// import com.pulumi.digitalocean.SpacesBucketArgs;
/// import com.pulumi.digitalocean.inputs.SpacesBucketCorsRuleArgs;
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
///         var foobar = new SpacesBucket("foobar", SpacesBucketArgs.builder()
///             .name("foobar")
///             .region("nyc3")
///             .corsRules(
///                 SpacesBucketCorsRuleArgs.builder()
///                     .allowedHeaders("*")
///                     .allowedMethods("GET")
///                     .allowedOrigins("*")
///                     .maxAgeSeconds(3000)
///                     .build(),
///                 SpacesBucketCorsRuleArgs.builder()
///                     .allowedHeaders("*")
///                     .allowedMethods(
///                         "PUT",
///                         "POST",
///                         "DELETE")
///                     .allowedOrigins("https://www.example.com")
///                     .maxAgeSeconds(3000)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: foobar
///       region: nyc3
///       corsRules:
///         - allowedHeaders:
///             - '*'
///           allowedMethods:
///             - GET
///           allowedOrigins:
///             - '*'
///           maxAgeSeconds: 3000
///         - allowedHeaders:
///             - '*'
///           allowedMethods:
///             - PUT
///             - POST
///             - DELETE
///           allowedOrigins:
///             - https://www.example.com
///           maxAgeSeconds: 3000
/// ```
///
///
/// ## Import
///
/// Buckets can be imported using the `region` and `name` attributes (delimited by a comma):
///
/// ```sh
/// $ pulumi import digitalocean:index/spacesBucket:SpacesBucket foobar `region`,`name`
/// ```
class SpacesBucket extends pulumi.CustomResource {
  /// Canned ACL applied on bucket creation: `private` or `public-read` (Defaults to `private`)
  late final pulumi.Output<String?> acl;
  /// The FQDN of the bucket (e.g. bucket-name.nyc3.digitaloceanspaces.com)
  late final pulumi.Output<String> bucketDomainName;
  /// The uniform resource name for the bucket
  late final pulumi.Output<String> bucketUrn;
  /// A rule of Cross-Origin Resource Sharing (documented below).
  late final pulumi.Output<List<Map<String, dynamic>>?> corsRules;
  /// The FQDN of the bucket without the bucket name (e.g. nyc3.digitaloceanspaces.com)
  late final pulumi.Output<String> endpoint;
  /// Unless `true`, the bucket will only be destroyed if empty (Defaults to `false`)
  late final pulumi.Output<bool?> forceDestroy;
  /// A configuration of object lifecycle management (documented below).
  late final pulumi.Output<List<Map<String, dynamic>>?> lifecycleRules;
  /// The name of the bucket
  late final pulumi.Output<String> name;
  /// The region where the bucket resides (Defaults to `nyc3`)
  late final pulumi.Output<String?> region;
  /// A state of versioning (documented below)
  late final pulumi.Output<SpacesBucketVersioning?> versioning;

  /// Creates a new [SpacesBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesBucket]. {@macro pulumi_index_spaces_bucket_spaces_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesBucket(
    String name, {
    SpacesBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucket:SpacesBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String?>('acl');
    bucketDomainName = registerOutput<String>('bucketDomainName');
    bucketUrn = registerOutput<String>('bucketUrn');
    corsRules = registerOutput<List<Map<String, dynamic>>?>('corsRules');
    endpoint = registerOutput<String>('endpoint');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>?>('lifecycleRules');
    this.name = registerOutput<String>('name');
    region = registerOutput<String?>('region');
    versioning = registerOutput<SpacesBucketVersioning?>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpacesBucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SpacesBucket] resource's state with the given [name] and [id].
  static SpacesBucket get(
    String name,
    pulumi.Input<String> id, {
    SpacesBucketState? state,
  }) {
    return SpacesBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpacesBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucket:SpacesBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acl = registerOutput<String?>('acl');
    bucketDomainName = registerOutput<String>('bucketDomainName');
    bucketUrn = registerOutput<String>('bucketUrn');
    corsRules = registerOutput<List<Map<String, dynamic>>?>('corsRules');
    endpoint = registerOutput<String>('endpoint');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    lifecycleRules = registerOutput<List<Map<String, dynamic>>?>('lifecycleRules');
    this.name = registerOutput<String>('name');
    region = registerOutput<String?>('region');
    versioning = registerOutput<SpacesBucketVersioning?>('versioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SpacesBucketVersioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
