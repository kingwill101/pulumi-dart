import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_normalization_settings_args.dart';
import 'url_normalization_settings_state.dart';

/// Accepted Permissions
///
/// - `Account Rulesets Read`
/// - `Account Rulesets Write`
/// - `Account WAF Read`
/// - `Account WAF Write`
/// - `Bot Management Read`
/// - `Bot Management Write`
/// - `Cache Settings Read`
/// - `Cache Settings Write`
/// - `Config Settings Read`
/// - `Config Settings Write`
/// - `Custom Errors Read`
/// - `Custom Errors Write`
/// - `Dynamic URL Redirects Read`
/// - `Dynamic URL Redirects Write`
/// - `HTTP DDoS Managed Ruleset Read`
/// - `HTTP DDoS Managed Ruleset Write`
/// - `L4 DDoS Managed Ruleset Read`
/// - `L4 DDoS Managed Ruleset Write`
/// - `Logs Read`
/// - `Logs Write`
/// - `Magic Firewall Read`
/// - `Magic Firewall Write`
/// - `Managed headers Read`
/// - `Managed headers Write`
/// - `Mass URL Redirects Read`
/// - `Mass URL Redirects Write`
/// - `Origin Read`
/// - `Origin Write`
/// - `Response Compression Read`
/// - `Response Compression Write`
/// - `Sanitize Read`
/// - `Sanitize Write`
/// - `Select Configuration Read`
/// - `Select Configuration Write`
/// - `Transform Rules Read`
/// - `Transform Rules Write`
/// - `Zone Transform Rules Read`
/// - `Zone Transform Rules Write`
/// - `Zone WAF Read`
/// - `Zone WAF Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleUrlNormalizationSettings = new cloudflare.UrlNormalizationSettings("example_url_normalization_settings", {
///     zoneId: "9f1839b6152d298aca64c4e906b6d074",
///     scope: "incoming",
///     type: "cloudflare",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_url_normalization_settings = cloudflare.UrlNormalizationSettings("example_url_normalization_settings",
///     zone_id="9f1839b6152d298aca64c4e906b6d074",
///     scope="incoming",
///     type="cloudflare")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUrlNormalizationSettings = new Cloudflare.UrlNormalizationSettings("example_url_normalization_settings", new()
///     {
///         ZoneId = "9f1839b6152d298aca64c4e906b6d074",
///         Scope = "incoming",
///         Type = "cloudflare",
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
/// 		_, err := cloudflare.NewUrlNormalizationSettings(ctx, "example_url_normalization_settings", &cloudflare.UrlNormalizationSettingsArgs{
/// 			ZoneId: pulumi.String("9f1839b6152d298aca64c4e906b6d074"),
/// 			Scope:  pulumi.String("incoming"),
/// 			Type:   pulumi.String("cloudflare"),
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
/// resource "cloudflare_urlnormalizationsettings" "example_url_normalization_settings" {
///   zone_id = "9f1839b6152d298aca64c4e906b6d074"
///   scope   = "incoming"
///   type    = "cloudflare"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.UrlNormalizationSettings;
/// import com.pulumi.cloudflare.UrlNormalizationSettingsArgs;
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
///         var exampleUrlNormalizationSettings = new UrlNormalizationSettings("exampleUrlNormalizationSettings", UrlNormalizationSettingsArgs.builder()
///             .zoneId("9f1839b6152d298aca64c4e906b6d074")
///             .scope("incoming")
///             .type("cloudflare")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUrlNormalizationSettings:
///     type: cloudflare:UrlNormalizationSettings
///     name: example_url_normalization_settings
///     properties:
///       zoneId: 9f1839b6152d298aca64c4e906b6d074
///       scope: incoming
///       type: cloudflare
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/urlNormalizationSettings:UrlNormalizationSettings example '<zone_id>'
/// ```
class UrlNormalizationSettings extends pulumi.CustomResource {
  /// The scope of the URL normalization.
  /// Available values: "incoming", "both", "none".
  late final pulumi.Output<String> scope;
  /// The type of URL normalization performed by Cloudflare.
  /// Available values: "cloudflare", "rfc3986".
  late final pulumi.Output<String> type;
  /// The unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [UrlNormalizationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UrlNormalizationSettings]. {@macro pulumi_index_url_normalization_settings_url_normalization_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UrlNormalizationSettings(
    String name, {
    UrlNormalizationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/urlNormalizationSettings:UrlNormalizationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    scope = registerOutput<String>('scope');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [UrlNormalizationSettings] resource's state with the given [name] and [id].
  static UrlNormalizationSettings get(
    String name,
    pulumi.Input<String> id, {
    UrlNormalizationSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UrlNormalizationSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UrlNormalizationSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/urlNormalizationSettings:UrlNormalizationSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    scope = registerOutput<String>('scope');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [UrlNormalizationSettings] resource.
  UrlNormalizationSettings.reference(String urn)
    : super(
        'cloudflare:index/urlNormalizationSettings:UrlNormalizationSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    scope = registerOutput<String>('scope');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }
}
