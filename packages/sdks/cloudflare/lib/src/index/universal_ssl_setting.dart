import 'package:pulumi/pulumi.dart' as pulumi;
import 'universal_ssl_setting_args.dart';
import 'universal_ssl_setting_state.dart';

/// Accepted Permissions
///
/// - `SSL and Certificates Read`
/// - `SSL and Certificates Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleUniversalSslSetting = new cloudflare.UniversalSslSetting("example_universal_ssl_setting", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_universal_ssl_setting = cloudflare.UniversalSslSetting("example_universal_ssl_setting",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUniversalSslSetting = new Cloudflare.UniversalSslSetting("example_universal_ssl_setting", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Enabled = true,
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
/// 		_, err := cloudflare.NewUniversalSslSetting(ctx, "example_universal_ssl_setting", &cloudflare.UniversalSslSettingArgs{
/// 			ZoneId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Enabled: pulumi.Bool(true),
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
/// resource "cloudflare_universalsslsetting" "example_universal_ssl_setting" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.UniversalSslSetting;
/// import com.pulumi.cloudflare.UniversalSslSettingArgs;
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
///         var exampleUniversalSslSetting = new UniversalSslSetting("exampleUniversalSslSetting", UniversalSslSettingArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUniversalSslSetting:
///     type: cloudflare:UniversalSslSetting
///     name: example_universal_ssl_setting
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/universalSslSetting:UniversalSslSetting example '<zone_id>'
/// ```
class UniversalSslSetting extends pulumi.CustomResource {
  /// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
  late final pulumi.Output<bool?> enabled;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [UniversalSslSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UniversalSslSetting]. {@macro pulumi_index_universal_ssl_setting_universal_ssl_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UniversalSslSetting(
    String name, {
    UniversalSslSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/universalSslSetting:UniversalSslSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [UniversalSslSetting] resource's state with the given [name] and [id].
  static UniversalSslSetting get(
    String name,
    pulumi.Input<String> id, {
    UniversalSslSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UniversalSslSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UniversalSslSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/universalSslSetting:UniversalSslSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [UniversalSslSetting] resource.
  UniversalSslSetting.reference(String urn)
    : super(
        'cloudflare:index/universalSslSetting:UniversalSslSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool?>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
