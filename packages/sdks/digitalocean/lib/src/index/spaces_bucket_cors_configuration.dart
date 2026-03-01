import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_cors_configuration_args.dart';
import 'spaces_bucket_cors_configuration_cors_rule.dart';
import 'spaces_bucket_cors_configuration_state.dart';

/// Provides a CORS configuration resource for Spaces, DigitalOcean's object storage product.
/// The `digitalocean.SpacesBucketCorsConfiguration` resource allows Terraform to to attach CORS configuration to Spaces.
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
/// ### Create a Key in a Spaces Bucket
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
/// const test = new digitalocean.SpacesBucketCorsConfiguration("test", {
///     bucket: foobar.id,
///     region: "nyc3",
///     corsRules: [{
///         allowedHeaders: ["*"],
///         allowedMethods: [
///             "PUT",
///             "POST",
///         ],
///         allowedOrigins: ["https://s3-website-test.hashicorp.com"],
///         exposeHeaders: ["ETag"],
///         maxAgeSeconds: 3000,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.SpacesBucket("foobar",
///     name="foobar",
///     region=digitalocean.Region.NYC3)
/// test = digitalocean.SpacesBucketCorsConfiguration("test",
///     bucket=foobar.id,
///     region="nyc3",
///     cors_rules=[{
///         "allowed_headers": ["*"],
///         "allowed_methods": [
///             "PUT",
///             "POST",
///         ],
///         "allowed_origins": ["https://s3-website-test.hashicorp.com"],
///         "expose_headers": ["ETag"],
///         "max_age_seconds": 3000,
///     }])
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
///     var test = new DigitalOcean.SpacesBucketCorsConfiguration("test", new()
///     {
///         Bucket = foobar.Id,
///         Region = "nyc3",
///         CorsRules = new[]
///         {
///             new DigitalOcean.Inputs.SpacesBucketCorsConfigurationCorsRuleArgs
///             {
///                 AllowedHeaders = new[]
///                 {
///                     "*",
///                 },
///                 AllowedMethods = new[]
///                 {
///                     "PUT",
///                     "POST",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "https://s3-website-test.hashicorp.com",
///                 },
///                 ExposeHeaders = new[]
///                 {
///                     "ETag",
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
/// 		foobar, err := digitalocean.NewSpacesBucket(ctx, "foobar", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("foobar"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewSpacesBucketCorsConfiguration(ctx, "test", &digitalocean.SpacesBucketCorsConfigurationArgs{
/// 			Bucket: foobar.ID(),
/// 			Region: pulumi.String("nyc3"),
/// 			CorsRules: digitalocean.SpacesBucketCorsConfigurationCorsRuleArray{
/// 				&digitalocean.SpacesBucketCorsConfigurationCorsRuleArgs{
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("PUT"),
/// 						pulumi.String("POST"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("https://s3-website-test.hashicorp.com"),
/// 					},
/// 					ExposeHeaders: pulumi.StringArray{
/// 						pulumi.String("ETag"),
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
/// import com.pulumi.digitalocean.SpacesBucketCorsConfiguration;
/// import com.pulumi.digitalocean.SpacesBucketCorsConfigurationArgs;
/// import com.pulumi.digitalocean.inputs.SpacesBucketCorsConfigurationCorsRuleArgs;
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
///         var test = new SpacesBucketCorsConfiguration("test", SpacesBucketCorsConfigurationArgs.builder()
///             .bucket(foobar.id())
///             .region("nyc3")
///             .corsRules(SpacesBucketCorsConfigurationCorsRuleArgs.builder()
///                 .allowedHeaders("*")
///                 .allowedMethods(
///                     "PUT",
///                     "POST")
///                 .allowedOrigins("https://s3-website-test.hashicorp.com")
///                 .exposeHeaders("ETag")
///                 .maxAgeSeconds(3000)
///                 .build())
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
///   test:
///     type: digitalocean:SpacesBucketCorsConfiguration
///     properties:
///       bucket: ${foobar.id}
///       region: nyc3
///       corsRules:
///         - allowedHeaders:
///             - '*'
///           allowedMethods:
///             - PUT
///             - POST
///           allowedOrigins:
///             - https://s3-website-test.hashicorp.com
///           exposeHeaders:
///             - ETag
///           maxAgeSeconds: 3000
/// ```
///
///
/// ## Import
///
/// Bucket policies can be imported using the `region` and `bucket` attributes (delimited by a comma):
///
/// ```sh
/// $ pulumi import digitalocean:index/spacesBucketCorsConfiguration:SpacesBucketCorsConfiguration foobar `region`,`bucket`
/// ```
class SpacesBucketCorsConfiguration extends pulumi.CustomResource {
  /// The name of the bucket to which to apply the CORS configuration.
  late final pulumi.Output<String> bucket;
  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  late final pulumi.Output<List<SpacesBucketCorsConfigurationCorsRule>> corsRules;
  /// The region where the bucket resides.
  late final pulumi.Output<String> region;

  /// Creates a new [SpacesBucketCorsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesBucketCorsConfiguration]. {@macro pulumi_index_spaces_bucket_cors_configuration_spaces_bucket_cors_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesBucketCorsConfiguration(
    String name, {
    SpacesBucketCorsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketCorsConfiguration:SpacesBucketCorsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.corsRules = registerOutput<List<SpacesBucketCorsConfigurationCorsRule>>('corsRules');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [SpacesBucketCorsConfiguration] resource's state with the given [name] and [id].
  static SpacesBucketCorsConfiguration get(
    String name,
    pulumi.Input<String> id, {
    SpacesBucketCorsConfigurationState? state,
  }) {
    return SpacesBucketCorsConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpacesBucketCorsConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketCorsConfiguration:SpacesBucketCorsConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.corsRules = registerOutput<List<SpacesBucketCorsConfigurationCorsRule>>('corsRules');
    this.region = registerOutput<String>('region');
  }
}
