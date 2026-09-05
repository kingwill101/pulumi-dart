import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_settings_args.dart';
import 'waiting_room_settings_state.dart';

/// Accepted Permissions
///
/// - `Waiting Rooms Read`
/// - `Waiting Rooms Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWaitingRoomSettings = new cloudflare.WaitingRoomSettings("example_waiting_room_settings", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     searchEngineCrawlerBypass: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_waiting_room_settings = cloudflare.WaitingRoomSettings("example_waiting_room_settings",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     search_engine_crawler_bypass=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWaitingRoomSettings = new Cloudflare.WaitingRoomSettings("example_waiting_room_settings", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         SearchEngineCrawlerBypass = true,
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
/// 		_, err := cloudflare.NewWaitingRoomSettings(ctx, "example_waiting_room_settings", &cloudflare.WaitingRoomSettingsArgs{
/// 			ZoneId:                    pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			SearchEngineCrawlerBypass: pulumi.Bool(true),
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
/// resource "cloudflare_waitingroomsettings" "example_waiting_room_settings" {
///   zone_id                      = "023e105f4ecef8ad9ca31a8372d0c353"
///   search_engine_crawler_bypass = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WaitingRoomSettings;
/// import com.pulumi.cloudflare.WaitingRoomSettingsArgs;
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
///         var exampleWaitingRoomSettings = new WaitingRoomSettings("exampleWaitingRoomSettings", WaitingRoomSettingsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .searchEngineCrawlerBypass(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWaitingRoomSettings:
///     type: cloudflare:WaitingRoomSettings
///     name: example_waiting_room_settings
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       searchEngineCrawlerBypass: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/waitingRoomSettings:WaitingRoomSettings example '<zone_id>'
/// ```
class WaitingRoomSettings extends pulumi.CustomResource {
  /// Whether to allow verified search engine crawlers to bypass all waiting rooms on this zone.
  /// Verified search engine crawlers will not be tracked or counted by the waiting room system,
  /// and will not appear in waiting room analytics.
  late final pulumi.Output<bool> searchEngineCrawlerBypass;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [WaitingRoomSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoomSettings]. {@macro pulumi_index_waiting_room_settings_waiting_room_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoomSettings(
    String name, {
    WaitingRoomSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomSettings:WaitingRoomSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    searchEngineCrawlerBypass = registerOutput<bool>('searchEngineCrawlerBypass');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [WaitingRoomSettings] resource's state with the given [name] and [id].
  static WaitingRoomSettings get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WaitingRoomSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WaitingRoomSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomSettings:WaitingRoomSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    searchEngineCrawlerBypass = registerOutput<bool>('searchEngineCrawlerBypass');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [WaitingRoomSettings] resource.
  WaitingRoomSettings.reference(String urn)
    : super(
        'cloudflare:index/waitingRoomSettings:WaitingRoomSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    searchEngineCrawlerBypass = registerOutput<bool>('searchEngineCrawlerBypass');
    zoneId = registerOutput<String>('zoneId');
  }
}
