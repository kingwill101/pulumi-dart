import 'package:pulumi/pulumi.dart' as pulumi;
import 'spaces_bucket_logging_args.dart';
import 'spaces_bucket_logging_state.dart';

/// Provides a bucket logging resource for Spaces, DigitalOcean's object storage product.
/// The `digitalocean.SpacesBucketLogging` resource allows Terraform to configure access
/// logging for Spaces buckets. For more information, see:
/// [How to Configure Spaces Access Logs](https://docs.digitalocean.com/products/spaces/how-to/access-logs/)
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
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const assets = new digitalocean.SpacesBucket("assets", {
///     name: "assets",
///     region: digitalocean.Region.NYC3,
/// });
/// const logs = new digitalocean.SpacesBucket("logs", {
///     name: "logs",
///     region: digitalocean.Region.NYC3,
/// });
/// const example = new digitalocean.SpacesBucketLogging("example", {
///     region: "%s",
///     bucket: assets.id,
///     targetBucket: logs.id,
///     targetPrefix: "access-logs/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// assets = digitalocean.SpacesBucket("assets",
///     name="assets",
///     region=digitalocean.Region.NYC3)
/// logs = digitalocean.SpacesBucket("logs",
///     name="logs",
///     region=digitalocean.Region.NYC3)
/// example = digitalocean.SpacesBucketLogging("example",
///     region="%s",
///     bucket=assets.id,
///     target_bucket=logs.id,
///     target_prefix="access-logs/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assets = new DigitalOcean.SpacesBucket("assets", new()
///     {
///         Name = "assets",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var logs = new DigitalOcean.SpacesBucket("logs", new()
///     {
///         Name = "logs",
///         Region = DigitalOcean.Region.NYC3,
///     });
///
///     var example = new DigitalOcean.SpacesBucketLogging("example", new()
///     {
///         Region = "%s",
///         Bucket = assets.Id,
///         TargetBucket = logs.Id,
///         TargetPrefix = "access-logs/",
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
/// 		assets, err := digitalocean.NewSpacesBucket(ctx, "assets", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("assets"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logs, err := digitalocean.NewSpacesBucket(ctx, "logs", &digitalocean.SpacesBucketArgs{
/// 			Name:   pulumi.String("logs"),
/// 			Region: pulumi.String(digitalocean.RegionNYC3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewSpacesBucketLogging(ctx, "example", &digitalocean.SpacesBucketLoggingArgs{
/// 			Region:       pulumi.String("%s"),
/// 			Bucket:       assets.ID(),
/// 			TargetBucket: logs.ID(),
/// 			TargetPrefix: pulumi.String("access-logs/"),
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
/// import com.pulumi.digitalocean.SpacesBucketLogging;
/// import com.pulumi.digitalocean.SpacesBucketLoggingArgs;
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
///         var assets = new SpacesBucket("assets", SpacesBucketArgs.builder()
///             .name("assets")
///             .region("nyc3")
///             .build());
///
///         var logs = new SpacesBucket("logs", SpacesBucketArgs.builder()
///             .name("logs")
///             .region("nyc3")
///             .build());
///
///         var example = new SpacesBucketLogging("example", SpacesBucketLoggingArgs.builder()
///             .region("%s")
///             .bucket(assets.id())
///             .targetBucket(logs.id())
///             .targetPrefix("access-logs/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   assets:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: assets
///       region: nyc3
///   logs:
///     type: digitalocean:SpacesBucket
///     properties:
///       name: logs
///       region: nyc3
///   example:
///     type: digitalocean:SpacesBucketLogging
///     properties:
///       region: '%s'
///       bucket: ${assets.id}
///       targetBucket: ${logs.id}
///       targetPrefix: access-logs/
/// ```
///
///
/// ## Import
///
/// Spaces bucket logging can be imported using the `region` and `bucket` attributes (delimited by a comma):
///
/// ```sh
/// $ pulumi import digitalocean:index/spacesBucketLogging:SpacesBucketLogging example `region`,`bucket`
/// ```
class SpacesBucketLogging extends pulumi.CustomResource {
  /// The name of the bucket which will be logged.
  late final pulumi.Output<String> bucket;
  /// The region where the bucket resides.
  late final pulumi.Output<String> region;
  /// The name of the bucket which will store the logs.
  late final pulumi.Output<String> targetBucket;
  /// The prefix for the log files.
  late final pulumi.Output<String> targetPrefix;

  /// Creates a new [SpacesBucketLogging].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpacesBucketLogging]. {@macro pulumi_index_spaces_bucket_logging_spaces_bucket_logging_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpacesBucketLogging(
    String name, {
    SpacesBucketLoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketLogging:SpacesBucketLogging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    targetBucket = registerOutput<String>('targetBucket');
    targetPrefix = registerOutput<String>('targetPrefix');
  }

  /// Gets an existing [SpacesBucketLogging] resource's state with the given [name] and [id].
  static SpacesBucketLogging get(
    String name,
    pulumi.Input<String> id, {
    SpacesBucketLoggingState? state,
  }) {
    return SpacesBucketLogging._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpacesBucketLogging._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/spacesBucketLogging:SpacesBucketLogging',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    targetBucket = registerOutput<String>('targetBucket');
    targetPrefix = registerOutput<String>('targetPrefix');
  }
}
