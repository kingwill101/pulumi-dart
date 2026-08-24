// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_management_stale_zone_configuration.dart';

/// Input properties used for looking up and filtering BotManagement resources.
class BotManagementState {
  /// Enable rule to block AI Scrapers and Crawlers.
  /// Available values: "block", "disabled", "only*on*ad_pages".
  final pulumi.Input<String?>? aiBotsProtection;
  /// Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
  final pulumi.Input<bool?>? autoUpdateModel;
  /// Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
  final pulumi.Input<bool?>? bmCookieEnabled;
  /// Specifies the Robots Access Control License variant to use.
  /// Available values: "off", "policyOnly".
  final pulumi.Input<String?>? cfRobotsVariant;
  /// Enable rule to block content bots. When enabled, blocks automated traffic with low bot scores, excluding safe verified bot categories. Exceptions should be managed via skip rules.
  /// Available values: "block", "disabled".
  final pulumi.Input<String?>? contentBotsProtection;
  /// Enable rule to punish AI Scrapers and Crawlers via a link maze.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? crawlerProtection;
  /// Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/).
  final pulumi.Input<bool?>? enableJs;
  /// Whether to enable Bot Fight Mode.
  final pulumi.Input<bool?>? fightMode;
  /// Enable cloudflare managed robots.txt. If an existing robots.txt is detected, then managed robots.txt will be prepended to the existing robots.txt.
  final pulumi.Input<bool?>? isRobotsTxtManaged;
  /// Whether to optimize Super Bot Fight Mode protections for Wordpress.
  final pulumi.Input<bool?>? optimizeWordpress;
  /// Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
  /// Available values: "allow", "block", "managedChallenge".
  final pulumi.Input<String?>? sbfmDefinitelyAutomated;
  /// Super Bot Fight Mode (SBFM) action to take on likely automated requests.
  /// Available values: "allow", "block", "managedChallenge".
  final pulumi.Input<String?>? sbfmLikelyAutomated;
  /// Super Bot Fight Mode (SBFM) to enable static resource protection.
  /// Enable if static resources on your application need bot protection.
  /// Note: Static resource protection can also result in legitimate traffic being blocked.
  final pulumi.Input<bool?>? sbfmStaticResourceProtection;
  /// Super Bot Fight Mode (SBFM) action to take on verified bots requests.
  /// Available values: "allow", "block".
  final pulumi.Input<String?>? sbfmVerifiedBots;
  /// A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
  final pulumi.Input<BotManagementStaleZoneConfiguration?>? staleZoneConfiguration;
  /// Whether to disable tracking the highest bot score for a session in the Bot Management cookie.
  final pulumi.Input<bool?>? suppressSessionScore;
  /// A read-only field that indicates whether the zone currently is running the latest ML model.
  final pulumi.Input<bool?>? usingLatestModel;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [BotManagementState].
  /// [aiBotsProtection] Enable rule to block AI Scrapers and Crawlers.
  /// [autoUpdateModel] Automatically update to the newest bot detection models created by Cloudflare as they are released. [Learn more.](https://developers.cloudflare.com/bots/reference/machine-learning-models#model-versions-and-release-notes)
  /// [bmCookieEnabled] Indicates that the bot management cookie can be placed on end user devices accessing the site. Defaults to true
  /// [cfRobotsVariant] Specifies the Robots Access Control License variant to use.
  /// [contentBotsProtection] Enable rule to block content bots. When enabled, blocks automated traffic with low bot scores, excluding safe verified bot categories. Exceptions should be managed via skip rules.
  /// [crawlerProtection] Enable rule to punish AI Scrapers and Crawlers via a link maze.
  /// [enableJs] Use lightweight, invisible JavaScript detections to improve Bot Management. [Learn more about JavaScript Detections](https://developers.cloudflare.com/bots/reference/javascript-detections/).
  /// [fightMode] Whether to enable Bot Fight Mode.
  /// [isRobotsTxtManaged] Enable cloudflare managed robots.txt. If an existing robots.txt is detected, then managed robots.txt will be prepended to the existing robots.txt.
  /// [optimizeWordpress] Whether to optimize Super Bot Fight Mode protections for Wordpress.
  /// [sbfmDefinitelyAutomated] Super Bot Fight Mode (SBFM) action to take on definitely automated requests.
  /// [sbfmLikelyAutomated] Super Bot Fight Mode (SBFM) action to take on likely automated requests.
  /// [sbfmStaticResourceProtection] Super Bot Fight Mode (SBFM) to enable static resource protection.
  /// [sbfmVerifiedBots] Super Bot Fight Mode (SBFM) action to take on verified bots requests.
  /// [staleZoneConfiguration] A read-only field that shows which unauthorized settings are currently active on the zone. These settings typically result from upgrades or downgrades.
  /// [suppressSessionScore] Whether to disable tracking the highest bot score for a session in the Bot Management cookie.
  /// [usingLatestModel] A read-only field that indicates whether the zone currently is running the latest ML model.
  /// [zoneId] Identifier.
  const BotManagementState({
    this.aiBotsProtection,
    this.autoUpdateModel,
    this.bmCookieEnabled,
    this.cfRobotsVariant,
    this.contentBotsProtection,
    this.crawlerProtection,
    this.enableJs,
    this.fightMode,
    this.isRobotsTxtManaged,
    this.optimizeWordpress,
    this.sbfmDefinitelyAutomated,
    this.sbfmLikelyAutomated,
    this.sbfmStaticResourceProtection,
    this.sbfmVerifiedBots,
    this.staleZoneConfiguration,
    this.suppressSessionScore,
    this.usingLatestModel,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiBotsProtection': ?aiBotsProtection,
      'autoUpdateModel': ?autoUpdateModel,
      'bmCookieEnabled': ?bmCookieEnabled,
      'cfRobotsVariant': ?cfRobotsVariant,
      'contentBotsProtection': ?contentBotsProtection,
      'crawlerProtection': ?crawlerProtection,
      'enableJs': ?enableJs,
      'fightMode': ?fightMode,
      'isRobotsTxtManaged': ?isRobotsTxtManaged,
      'optimizeWordpress': ?optimizeWordpress,
      'sbfmDefinitelyAutomated': ?sbfmDefinitelyAutomated,
      'sbfmLikelyAutomated': ?sbfmLikelyAutomated,
      'sbfmStaticResourceProtection': ?sbfmStaticResourceProtection,
      'sbfmVerifiedBots': ?sbfmVerifiedBots,
      'staleZoneConfiguration': ?pulumi.Input.mapOptionalInputValue<BotManagementStaleZoneConfiguration, Map<String, dynamic>>(staleZoneConfiguration, (value) => value.toMap()),
      'suppressSessionScore': ?suppressSessionScore,
      'usingLatestModel': ?usingLatestModel,
      'zoneId': ?zoneId,
    };
  }

  factory BotManagementState.fromMap(Map<String, dynamic> map) {
    return BotManagementState(
      aiBotsProtection: (() { final guardedValue = map['aiBotsProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpdateModel: (() { final guardedValue = map['autoUpdateModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bmCookieEnabled: (() { final guardedValue = map['bmCookieEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cfRobotsVariant: (() { final guardedValue = map['cfRobotsVariant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentBotsProtection: (() { final guardedValue = map['contentBotsProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crawlerProtection: (() { final guardedValue = map['crawlerProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableJs: (() { final guardedValue = map['enableJs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fightMode: (() { final guardedValue = map['fightMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRobotsTxtManaged: (() { final guardedValue = map['isRobotsTxtManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      optimizeWordpress: (() { final guardedValue = map['optimizeWordpress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sbfmDefinitelyAutomated: (() { final guardedValue = map['sbfmDefinitelyAutomated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbfmLikelyAutomated: (() { final guardedValue = map['sbfmLikelyAutomated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sbfmStaticResourceProtection: (() { final guardedValue = map['sbfmStaticResourceProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sbfmVerifiedBots: (() { final guardedValue = map['sbfmVerifiedBots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staleZoneConfiguration: (() { final guardedValue = map['staleZoneConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BotManagementStaleZoneConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suppressSessionScore: (() { final guardedValue = map['suppressSessionScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usingLatestModel: (() { final guardedValue = map['usingLatestModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
