import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_routing_settings_args.dart';
import 'email_routing_settings_state.dart';

/// Accepted Permissions
///
/// - `Zone Settings Read`
/// - `Zone Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleEmailRoutingSettings = new cloudflare.EmailRoutingSettings("example_email_routing_settings", {zoneId: "023e105f4ecef8ad9ca31a8372d0c353"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_email_routing_settings = cloudflare.EmailRoutingSettings("example_email_routing_settings", zone_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEmailRoutingSettings = new Cloudflare.EmailRoutingSettings("example_email_routing_settings", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewEmailRoutingSettings(ctx, "example_email_routing_settings", &cloudflare.EmailRoutingSettingsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_emailroutingsettings" "example_email_routing_settings" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.EmailRoutingSettings;
/// import com.pulumi.cloudflare.EmailRoutingSettingsArgs;
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
///         var exampleEmailRoutingSettings = new EmailRoutingSettings("exampleEmailRoutingSettings", EmailRoutingSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEmailRoutingSettings:
///     type: cloudflare:EmailRoutingSettings
///     name: example_email_routing_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/emailRoutingSettings:EmailRoutingSettings example '<zone_id>'
/// ```
class EmailRoutingSettings extends pulumi.CustomResource {
  /// The date and time the settings have been created.
  late final pulumi.Output<String> created;
  /// State of the zone settings for Email Routing.
  late final pulumi.Output<bool> enabled;
  /// The date and time the settings have been modified.
  late final pulumi.Output<String> modified;
  /// Domain of your zone.
  late final pulumi.Output<String> name;
  /// Flag to check if the user skipped the configuration wizard.
  late final pulumi.Output<bool> skipWizard;
  /// Show the state of your account, and the type or configuration error.
  /// Available values: "ready", "unconfigured", "misconfigured", "misconfigured/locked", "unlocked".
  late final pulumi.Output<String> status;
  /// Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  late final pulumi.Output<String> tag;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EmailRoutingSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailRoutingSettings]. {@macro pulumi_index_email_routing_settings_email_routing_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailRoutingSettings(
    String name, {
    EmailRoutingSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingSettings:EmailRoutingSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [EmailRoutingSettings] resource's state with the given [name] and [id].
  static EmailRoutingSettings get(
    String name,
    pulumi.Input<String> id, {
    EmailRoutingSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailRoutingSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailRoutingSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/emailRoutingSettings:EmailRoutingSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [EmailRoutingSettings] resource.
  EmailRoutingSettings.reference(String urn)
    : super(
        'cloudflare:index/emailRoutingSettings:EmailRoutingSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    created = registerOutput<String>('created');
    enabled = registerOutput<bool>('enabled');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    skipWizard = registerOutput<bool>('skipWizard');
    status = registerOutput<String>('status');
    tag = registerOutput<String>('tag');
    zoneId = registerOutput<String>('zoneId');
  }
}
