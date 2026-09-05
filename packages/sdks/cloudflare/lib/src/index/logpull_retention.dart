import 'package:pulumi/pulumi.dart' as pulumi;
import 'logpull_retention_args.dart';
import 'logpull_retention_state.dart';

/// Accepted Permissions
///
/// - `Logs Read`
/// - `Logs Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLogpullRetention = new cloudflare.LogpullRetention("example_logpull_retention", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     flag: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_logpull_retention = cloudflare.LogpullRetention("example_logpull_retention",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     flag=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLogpullRetention = new Cloudflare.LogpullRetention("example_logpull_retention", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Flag = true,
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
/// 		_, err := cloudflare.NewLogpullRetention(ctx, "example_logpull_retention", &cloudflare.LogpullRetentionArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Flag:   pulumi.Bool(true),
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
/// resource "cloudflare_logpullretention" "example_logpull_retention" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   flag    = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LogpullRetention;
/// import com.pulumi.cloudflare.LogpullRetentionArgs;
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
///         var exampleLogpullRetention = new LogpullRetention("exampleLogpullRetention", LogpullRetentionArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .flag(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogpullRetention:
///     type: cloudflare:LogpullRetention
///     name: example_logpull_retention
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       flag: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/logpullRetention:LogpullRetention example '<zone_id>'
/// ```
class LogpullRetention extends pulumi.CustomResource {
  /// The log retention flag for Logpull API.
  late final pulumi.Output<bool?> flag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LogpullRetention].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogpullRetention]. {@macro pulumi_index_logpull_retention_logpull_retention_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogpullRetention(
    String name, {
    LogpullRetentionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpullRetention:LogpullRetention',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    flag = registerOutput<bool?>('flag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LogpullRetention] resource's state with the given [name] and [id].
  static LogpullRetention get(
    String name,
    pulumi.Input<String> id, {
    LogpullRetentionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogpullRetention._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogpullRetention._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/logpullRetention:LogpullRetention',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    flag = registerOutput<bool?>('flag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [LogpullRetention] resource.
  LogpullRetention.reference(String urn)
    : super(
        'cloudflare:index/logpullRetention:LogpullRetention',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    flag = registerOutput<bool?>('flag');
    zoneId = registerOutput<String>('zoneId');
  }
}
