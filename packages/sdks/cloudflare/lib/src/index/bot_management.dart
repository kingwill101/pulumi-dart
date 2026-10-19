import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_management_args.dart';
import 'bot_management_stale_zone_configuration.dart';
import 'bot_management_state.dart';

/// Accepted Permissions
///
/// - `Bot Management Read`
/// - `Bot Management Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleBotManagement = new cloudflare.BotManagement("example_bot_management", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     aiBotsMigrationOptOut: false,
///     aiBotsProtection: "block",
///     aisearch: "block",
///     aiTraining: "disallow",
///     aiUser: "only_on_ad_pages",
///     botPreferenceSyncEnabled: true,
///     cfRobotsVariant: "policy_only",
///     contentBotsProtection: "disabled",
///     crawlerProtection: "enabled",
///     enableJs: true,
///     fightMode: true,
///     isRobotsTxtManaged: false,
///     jsdApiResultsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_bot_management = cloudflare.BotManagement("example_bot_management",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     ai_bots_migration_opt_out=False,
///     ai_bots_protection="block",
///     aisearch="block",
///     ai_training="disallow",
///     ai_user="only_on_ad_pages",
///     bot_preference_sync_enabled=True,
///     cf_robots_variant="policy_only",
///     content_bots_protection="disabled",
///     crawler_protection="enabled",
///     enable_js=True,
///     fight_mode=True,
///     is_robots_txt_managed=False,
///     jsd_api_results_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBotManagement = new Cloudflare.BotManagement("example_bot_management", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AiBotsMigrationOptOut = false,
///         AiBotsProtection = "block",
///         Aisearch = "block",
///         AiTraining = "disallow",
///         AiUser = "only_on_ad_pages",
///         BotPreferenceSyncEnabled = true,
///         CfRobotsVariant = "policy_only",
///         ContentBotsProtection = "disabled",
///         CrawlerProtection = "enabled",
///         EnableJs = true,
///         FightMode = true,
///         IsRobotsTxtManaged = false,
///         JsdApiResultsEnabled = true,
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
/// 		_, err := cloudflare.NewBotManagement(ctx, "example_bot_management", &cloudflare.BotManagementArgs{
/// 			ZoneId:                   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AiBotsMigrationOptOut:    pulumi.Bool(false),
/// 			AiBotsProtection:         pulumi.String("block"),
/// 			Aisearch:                 pulumi.String("block"),
/// 			AiTraining:               pulumi.String("disallow"),
/// 			AiUser:                   pulumi.String("only_on_ad_pages"),
/// 			BotPreferenceSyncEnabled: pulumi.Bool(true),
/// 			CfRobotsVariant:          pulumi.String("policy_only"),
/// 			ContentBotsProtection:    pulumi.String("disabled"),
/// 			CrawlerProtection:        pulumi.String("enabled"),
/// 			EnableJs:                 pulumi.Bool(true),
/// 			FightMode:                pulumi.Bool(true),
/// 			IsRobotsTxtManaged:       pulumi.Bool(false),
/// 			JsdApiResultsEnabled:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_bot_management" "example_bot_management" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   zone_id                     = "023e105f4ecef8ad9ca31a8372d0c353"
///   ai_bots_migration_opt_out   = false
///   ai_bots_protection          = "block"
///   aisearch                    = "block"
///   ai_training                 = "disallow"
///   ai_user                     = "only_on_ad_pages"
///   bot_preference_sync_enabled = true
///   cf_robots_variant           = "policy_only"
///   content_bots_protection     = "disabled"
///   crawler_protection          = "enabled"
///   enable_js                   = true
///   fight_mode                  = true
///   is_robots_txt_managed       = false
///   jsd_api_results_enabled     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.BotManagement;
/// import com.pulumi.cloudflare.BotManagementArgs;
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
///         var exampleBotManagement = new BotManagement("exampleBotManagement", BotManagementArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .aiBotsMigrationOptOut(false)
///             .aiBotsProtection("block")
///             .aisearch("block")
///             .aiTraining("disallow")
///             .aiUser("only_on_ad_pages")
///             .botPreferenceSyncEnabled(true)
///             .cfRobotsVariant("policy_only")
///             .contentBotsProtection("disabled")
///             .crawlerProtection("enabled")
///             .enableJs(true)
///             .fightMode(true)
///             .isRobotsTxtManaged(false)
///             .jsdApiResultsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBotManagement:
///     type: cloudflare:BotManagement
///     name: example_bot_management
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       aiBotsMigrationOptOut: false
///       aiBotsProtection: block
///       aisearch: block
///       aiTraining: disallow
///       aiUser: only_on_ad_pages
///       botPreferenceSyncEnabled: true
///       cfRobotsVariant: policy_only
///       contentBotsProtection: disabled
///       crawlerProtection: enabled
///       enableJs: true
///       fightMode: true
///       isRobotsTxtManaged: false
///       jsdApiResultsEnabled: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/botManagement:BotManagement example '<zone_id>'
/// ```
class BotManagement extends pulumi.CustomResource {
  /// Temporary migration flag tracking zones opted out of AI bots managed-rule updates.
  late final pulumi.Output<bool> aiBotsMigrationOptOut;
  /// Enable rule to block AI Scrapers and Crawlers.
  /// Available values: "block", "disabled", "only*on*ad_pages".
  late final pulumi.Output<String> aiBotsProtection;
  /// Configure robots.txt policy for AI model training bots.
  /// Available values: "disabled", "disallow", "block", "only*on*ad_pages".
  late final pulumi.Output<String> aiTraining;
  /// Configure robots.txt policy for AI assistant and agent bots.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  late final pulumi.Output<String> aiUser;
  /// Configure robots.txt policy for AI search bots.
  /// Available values: "disabled", "block", "only*on*ad_pages".
  late final pulumi.Output<String> aisearch;
  /// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
  late final pulumi.Output<bool> autoUpdateModel;
  /// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
  late final pulumi.Output<bool> bmCookieEnabled;
  /// Enable Bot Preference Sync for this zone. When enabled, Cloudflare can serve robots.txt content derived from the zone's AI Search, AI User, and AI Training preferences.
  late final pulumi.Output<bool?> botPreferenceSyncEnabled;
  /// Specifies the Robots Access Control License variant to use.
  /// Available values: "off", "policyOnly".
  late final pulumi.Output<String> cfRobotsVariant;
  /// Enable rule to block content bots. When enabled, blocks automated traffic with low bot scores, excluding safe verified bot categories. Exceptions should be managed via skip rules.
  /// Available values: "block", "disabled".
  late final pulumi.Output<String> contentBotsProtection;
  /// Enable rule to punish AI Scrapers and Crawlers via a link maze.
  /// Available values: "enabled", "disabled".
  late final pulumi.Output<String> crawlerProtection;
  /// Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/).
  late final pulumi.Output<bool> enableJs;
  /// Whether to enable Bot Fight Mode.
  late final pulumi.Output<bool> fightMode;
  /// Enable cloudflare managed robots.txt. If an existing robots.txt is detected, then managed robots.txt will be prepended to the existing robots.txt.
  late final pulumi.Output<bool> isRobotsTxtManaged;
  /// Whether to use JavaScript Detection results submitted through the API for this zone.
  late final pulumi.Output<bool> jsdApiResultsEnabled;
  /// Whether to optimize Super Bot Fight Mode protections for Wordpress.
  late final pulumi.Output<bool> optimizeWordpress;
  /// Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
  /// Available values: "allow", "block", "managedChallenge".
  late final pulumi.Output<String> sbfmDefinitelyAutomated;
  /// Super Bot Fight Mode (SBFM) action to take on likely automated requests.
  /// Available values: "allow", "block", "managedChallenge".
  late final pulumi.Output<String> sbfmLikelyAutomated;
  /// Super Bot Fight Mode (SBFM) to enable static resource protection.
  /// Enable if static resources on your application need bot protection.
  /// Note: Static resource protection can also result in legitimate traffic being blocked.
  late final pulumi.Output<bool> sbfmStaticResourceProtection;
  /// Super Bot Fight Mode (SBFM) action to take on verified bots requests.
  /// Available values: "allow", "block".
  late final pulumi.Output<String> sbfmVerifiedBots;
  /// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
  late final pulumi.Output<BotManagementStaleZoneConfiguration> staleZoneConfiguration;
  /// Whether to disable tracking the highest bot score for a session in the Bot Management cookie.
  late final pulumi.Output<bool> suppressSessionScore;
  /// A read-only field that indicates whether the zone currently is running the latest ML model.
  late final pulumi.Output<bool> usingLatestModel;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [BotManagement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BotManagement]. {@macro pulumi_index_bot_management_bot_management_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BotManagement(
    String name, {
    BotManagementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/botManagement:BotManagement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
        ) {
    aiBotsMigrationOptOut = registerOutput<bool>('aiBotsMigrationOptOut');
    aiBotsProtection = registerOutput<String>('aiBotsProtection');
    aiTraining = registerOutput<String>('aiTraining');
    aiUser = registerOutput<String>('aiUser');
    aisearch = registerOutput<String>('aisearch');
    autoUpdateModel = registerOutput<bool>('autoUpdateModel');
    bmCookieEnabled = registerOutput<bool>('bmCookieEnabled');
    botPreferenceSyncEnabled = registerOutput<bool?>('botPreferenceSyncEnabled');
    cfRobotsVariant = registerOutput<String>('cfRobotsVariant');
    contentBotsProtection = registerOutput<String>('contentBotsProtection');
    crawlerProtection = registerOutput<String>('crawlerProtection');
    enableJs = registerOutput<bool>('enableJs');
    fightMode = registerOutput<bool>('fightMode');
    isRobotsTxtManaged = registerOutput<bool>('isRobotsTxtManaged');
    jsdApiResultsEnabled = registerOutput<bool>('jsdApiResultsEnabled');
    optimizeWordpress = registerOutput<bool>('optimizeWordpress');
    sbfmDefinitelyAutomated = registerOutput<String>('sbfmDefinitelyAutomated');
    sbfmLikelyAutomated = registerOutput<String>('sbfmLikelyAutomated');
    sbfmStaticResourceProtection = registerOutput<bool>('sbfmStaticResourceProtection');
    sbfmVerifiedBots = registerOutput<String>('sbfmVerifiedBots');
    staleZoneConfiguration = registerOutput<BotManagementStaleZoneConfiguration>('staleZoneConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotManagementStaleZoneConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suppressSessionScore = registerOutput<bool>('suppressSessionScore');
    usingLatestModel = registerOutput<bool>('usingLatestModel');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [BotManagement] resource's state with the given [name] and [id].
  static BotManagement get(
    String name,
    pulumi.Input<String> id, {
    BotManagementState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BotManagement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BotManagement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/botManagement:BotManagement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aiBotsMigrationOptOut = registerOutput<bool>('aiBotsMigrationOptOut');
    aiBotsProtection = registerOutput<String>('aiBotsProtection');
    aiTraining = registerOutput<String>('aiTraining');
    aiUser = registerOutput<String>('aiUser');
    aisearch = registerOutput<String>('aisearch');
    autoUpdateModel = registerOutput<bool>('autoUpdateModel');
    bmCookieEnabled = registerOutput<bool>('bmCookieEnabled');
    botPreferenceSyncEnabled = registerOutput<bool?>('botPreferenceSyncEnabled');
    cfRobotsVariant = registerOutput<String>('cfRobotsVariant');
    contentBotsProtection = registerOutput<String>('contentBotsProtection');
    crawlerProtection = registerOutput<String>('crawlerProtection');
    enableJs = registerOutput<bool>('enableJs');
    fightMode = registerOutput<bool>('fightMode');
    isRobotsTxtManaged = registerOutput<bool>('isRobotsTxtManaged');
    jsdApiResultsEnabled = registerOutput<bool>('jsdApiResultsEnabled');
    optimizeWordpress = registerOutput<bool>('optimizeWordpress');
    sbfmDefinitelyAutomated = registerOutput<String>('sbfmDefinitelyAutomated');
    sbfmLikelyAutomated = registerOutput<String>('sbfmLikelyAutomated');
    sbfmStaticResourceProtection = registerOutput<bool>('sbfmStaticResourceProtection');
    sbfmVerifiedBots = registerOutput<String>('sbfmVerifiedBots');
    staleZoneConfiguration = registerOutput<BotManagementStaleZoneConfiguration>('staleZoneConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotManagementStaleZoneConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suppressSessionScore = registerOutput<bool>('suppressSessionScore');
    usingLatestModel = registerOutput<bool>('usingLatestModel');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [BotManagement] resource.
  BotManagement.reference(String urn)
    : super(
        'cloudflare:index/botManagement:BotManagement',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aiBotsMigrationOptOut = registerOutput<bool>('aiBotsMigrationOptOut');
    aiBotsProtection = registerOutput<String>('aiBotsProtection');
    aiTraining = registerOutput<String>('aiTraining');
    aiUser = registerOutput<String>('aiUser');
    aisearch = registerOutput<String>('aisearch');
    autoUpdateModel = registerOutput<bool>('autoUpdateModel');
    bmCookieEnabled = registerOutput<bool>('bmCookieEnabled');
    botPreferenceSyncEnabled = registerOutput<bool?>('botPreferenceSyncEnabled');
    cfRobotsVariant = registerOutput<String>('cfRobotsVariant');
    contentBotsProtection = registerOutput<String>('contentBotsProtection');
    crawlerProtection = registerOutput<String>('crawlerProtection');
    enableJs = registerOutput<bool>('enableJs');
    fightMode = registerOutput<bool>('fightMode');
    isRobotsTxtManaged = registerOutput<bool>('isRobotsTxtManaged');
    jsdApiResultsEnabled = registerOutput<bool>('jsdApiResultsEnabled');
    optimizeWordpress = registerOutput<bool>('optimizeWordpress');
    sbfmDefinitelyAutomated = registerOutput<String>('sbfmDefinitelyAutomated');
    sbfmLikelyAutomated = registerOutput<String>('sbfmLikelyAutomated');
    sbfmStaticResourceProtection = registerOutput<bool>('sbfmStaticResourceProtection');
    sbfmVerifiedBots = registerOutput<String>('sbfmVerifiedBots');
    staleZoneConfiguration = registerOutput<BotManagementStaleZoneConfiguration>('staleZoneConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BotManagementStaleZoneConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suppressSessionScore = registerOutput<bool>('suppressSessionScore');
    usingLatestModel = registerOutput<bool>('usingLatestModel');
    zoneId = registerOutput<String>('zoneId');
  }
}
