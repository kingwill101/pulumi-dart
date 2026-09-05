import 'package:pulumi/pulumi.dart' as pulumi;
import 'turnstile_widget_args.dart';
import 'turnstile_widget_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `Turnstile Sites Read`
/// - `Turnstile Sites Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleTurnstileWidget = new cloudflare.TurnstileWidget("example_turnstile_widget", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     domains: [
///         "203.0.113.1",
///         "cloudflare.com",
///         "blog.example.com",
///     ],
///     mode: "invisible",
///     name: "blog.cloudflare.com login form",
///     botFightMode: false,
///     clearanceLevel: "interactive",
///     ephemeralId: false,
///     offlabel: false,
///     region: "world",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_turnstile_widget = cloudflare.TurnstileWidget("example_turnstile_widget",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     domains=[
///         "203.0.113.1",
///         "cloudflare.com",
///         "blog.example.com",
///     ],
///     mode="invisible",
///     name="blog.cloudflare.com login form",
///     bot_fight_mode=False,
///     clearance_level="interactive",
///     ephemeral_id=False,
///     offlabel=False,
///     region="world")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTurnstileWidget = new Cloudflare.TurnstileWidget("example_turnstile_widget", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Domains = new[]
///         {
///             "203.0.113.1",
///             "cloudflare.com",
///             "blog.example.com",
///         },
///         Mode = "invisible",
///         Name = "blog.cloudflare.com login form",
///         BotFightMode = false,
///         ClearanceLevel = "interactive",
///         EphemeralId = false,
///         Offlabel = false,
///         Region = "world",
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
/// 		_, err := cloudflare.NewTurnstileWidget(ctx, "example_turnstile_widget", &cloudflare.TurnstileWidgetArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Domains: pulumi.StringArray{
/// 				pulumi.String("203.0.113.1"),
/// 				pulumi.String("cloudflare.com"),
/// 				pulumi.String("blog.example.com"),
/// 			},
/// 			Mode:           pulumi.String("invisible"),
/// 			Name:           pulumi.String("blog.cloudflare.com login form"),
/// 			BotFightMode:   pulumi.Bool(false),
/// 			ClearanceLevel: pulumi.String("interactive"),
/// 			EphemeralId:    pulumi.Bool(false),
/// 			Offlabel:       pulumi.Bool(false),
/// 			Region:         pulumi.String("world"),
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
/// resource "cloudflare_turnstilewidget" "example_turnstile_widget" {
///   account_id      = "023e105f4ecef8ad9ca31a8372d0c353"
///   domains         = ["203.0.113.1", "cloudflare.com", "blog.example.com"]
///   mode            = "invisible"
///   name            = "blog.cloudflare.com login form"
///   bot_fight_mode  = false
///   clearance_level = "interactive"
///   ephemeral_id    = false
///   offlabel        = false
///   region          = "world"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.TurnstileWidget;
/// import com.pulumi.cloudflare.TurnstileWidgetArgs;
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
///         var exampleTurnstileWidget = new TurnstileWidget("exampleTurnstileWidget", TurnstileWidgetArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .domains(
///                 "203.0.113.1",
///                 "cloudflare.com",
///                 "blog.example.com")
///             .mode("invisible")
///             .name("blog.cloudflare.com login form")
///             .botFightMode(false)
///             .clearanceLevel("interactive")
///             .ephemeralId(false)
///             .offlabel(false)
///             .region("world")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTurnstileWidget:
///     type: cloudflare:TurnstileWidget
///     name: example_turnstile_widget
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       domains:
///         - 203.0.113.1
///         - cloudflare.com
///         - blog.example.com
///       mode: invisible
///       name: blog.cloudflare.com login form
///       botFightMode: false
///       clearanceLevel: interactive
///       ephemeralId: false
///       offlabel: false
///       region: world
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/turnstileWidget:TurnstileWidget example '<account_id>/<sitekey>'
/// ```
class TurnstileWidget extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// expensive challenges in response to malicious bots (ENT only).
  late final pulumi.Output<bool> botFightMode;
  /// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// this setting can determine the clearance level to be set
  /// Available values: "noClearance", "jschallenge", "managed", "interactive".
  late final pulumi.Output<String> clearanceLevel;
  /// When the widget was created.
  late final pulumi.Output<String> createdOn;
  /// Origin that created this widget, recorded at creation time and
  /// immutable afterward. Server-derived from the create request; not
  /// client-settable. Omitted from the response for widgets created
  /// before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  late final pulumi.Output<String> deployedVia;
  late final pulumi.Output<List<String>> domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  late final pulumi.Output<bool> ephemeralId;
  /// Origin of the most recent mutation (create, update, delete, or
  /// secret rotation). Server-derived; not client-settable. Omitted for
  /// widgets last mutated before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  late final pulumi.Output<String> lastModifiedVia;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  late final pulumi.Output<String> mode;
  /// When the widget was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  late final pulumi.Output<String> name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  late final pulumi.Output<bool> offlabel;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  late final pulumi.Output<String> region;
  /// Secret key for this widget.
  late final pulumi.Output<String> secret;
  /// Widget item identifier tag.
  late final pulumi.Output<String> sitekey;

  /// Creates a new [TurnstileWidget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TurnstileWidget]. {@macro pulumi_index_turnstile_widget_turnstile_widget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TurnstileWidget(
    String name, {
    TurnstileWidgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/turnstileWidget:TurnstileWidget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accountId = registerOutput<String>('accountId');
    botFightMode = registerOutput<bool>('botFightMode');
    clearanceLevel = registerOutput<String>('clearanceLevel');
    createdOn = registerOutput<String>('createdOn');
    deployedVia = registerOutput<String>('deployedVia');
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ephemeralId = registerOutput<bool>('ephemeralId');
    lastModifiedVia = registerOutput<String>('lastModifiedVia');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    offlabel = registerOutput<bool>('offlabel');
    region = registerOutput<String>('region');
    secret = registerOutput<String>('secret', isSecret: true);
    sitekey = registerOutput<String>('sitekey');
  }

  /// Gets an existing [TurnstileWidget] resource's state with the given [name] and [id].
  static TurnstileWidget get(
    String name,
    pulumi.Input<String> id, {
    TurnstileWidgetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TurnstileWidget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TurnstileWidget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/turnstileWidget:TurnstileWidget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    botFightMode = registerOutput<bool>('botFightMode');
    clearanceLevel = registerOutput<String>('clearanceLevel');
    createdOn = registerOutput<String>('createdOn');
    deployedVia = registerOutput<String>('deployedVia');
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ephemeralId = registerOutput<bool>('ephemeralId');
    lastModifiedVia = registerOutput<String>('lastModifiedVia');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    offlabel = registerOutput<bool>('offlabel');
    region = registerOutput<String>('region');
    secret = registerOutput<String>('secret', isSecret: true);
    sitekey = registerOutput<String>('sitekey');
  }

  /// Creates a typed reference to an existing [TurnstileWidget] resource.
  TurnstileWidget.reference(String urn)
    : super(
        'cloudflare:index/turnstileWidget:TurnstileWidget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    botFightMode = registerOutput<bool>('botFightMode');
    clearanceLevel = registerOutput<String>('clearanceLevel');
    createdOn = registerOutput<String>('createdOn');
    deployedVia = registerOutput<String>('deployedVia');
    domains = registerOutput<List<String>>('domains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ephemeralId = registerOutput<bool>('ephemeralId');
    lastModifiedVia = registerOutput<String>('lastModifiedVia');
    mode = registerOutput<String>('mode');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    offlabel = registerOutput<bool>('offlabel');
    region = registerOutput<String>('region');
    secret = registerOutput<String>('secret', isSecret: true);
    sitekey = registerOutput<String>('sitekey');
  }
}
