import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticated_origin_pulls_settings_args.dart';
import 'authenticated_origin_pulls_settings_state.dart';

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
/// const exampleAuthenticatedOriginPullsSettings = new cloudflare.AuthenticatedOriginPullsSettings("example_authenticated_origin_pulls_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_authenticated_origin_pulls_settings = cloudflare.AuthenticatedOriginPullsSettings("example_authenticated_origin_pulls_settings",
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
///     var exampleAuthenticatedOriginPullsSettings = new Cloudflare.AuthenticatedOriginPullsSettings("example_authenticated_origin_pulls_settings", new()
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
/// 		_, err := cloudflare.NewAuthenticatedOriginPullsSettings(ctx, "example_authenticated_origin_pulls_settings", &cloudflare.AuthenticatedOriginPullsSettingsArgs{
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
/// resource "cloudflare_authenticatedoriginpullssettings" "example_authenticated_origin_pulls_settings" {
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
/// import com.pulumi.cloudflare.AuthenticatedOriginPullsSettings;
/// import com.pulumi.cloudflare.AuthenticatedOriginPullsSettingsArgs;
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
///         var exampleAuthenticatedOriginPullsSettings = new AuthenticatedOriginPullsSettings("exampleAuthenticatedOriginPullsSettings", AuthenticatedOriginPullsSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAuthenticatedOriginPullsSettings:
///     type: cloudflare:AuthenticatedOriginPullsSettings
///     name: example_authenticated_origin_pulls_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       enabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/authenticatedOriginPullsSettings:AuthenticatedOriginPullsSettings example '<zone_id>'
/// ```
class AuthenticatedOriginPullsSettings extends pulumi.CustomResource {
  /// Indicates whether zone-level authenticated origin pulls is enabled.
  late final pulumi.Output<bool> enabled;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [AuthenticatedOriginPullsSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticatedOriginPullsSettings]. {@macro pulumi_index_authenticated_origin_pulls_settings_authenticated_origin_pulls_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticatedOriginPullsSettings(
    String name, {
    AuthenticatedOriginPullsSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPullsSettings:AuthenticatedOriginPullsSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [AuthenticatedOriginPullsSettings] resource's state with the given [name] and [id].
  static AuthenticatedOriginPullsSettings get(
    String name,
    pulumi.Input<String> id, {
    AuthenticatedOriginPullsSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthenticatedOriginPullsSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthenticatedOriginPullsSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/authenticatedOriginPullsSettings:AuthenticatedOriginPullsSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [AuthenticatedOriginPullsSettings] resource.
  AuthenticatedOriginPullsSettings.reference(String urn)
    : super(
        'cloudflare:index/authenticatedOriginPullsSettings:AuthenticatedOriginPullsSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    enabled = registerOutput<bool>('enabled');
    zoneId = registerOutput<String>('zoneId');
  }
}
