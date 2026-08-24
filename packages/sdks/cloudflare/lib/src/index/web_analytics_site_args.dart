// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_web_analytics_site_web_analytics_site_args_doc}
/// The set of arguments for WebAnalyticsSite.
/// {@endtemplate}
/// {@macro pulumi_index_web_analytics_site_web_analytics_site_args_doc}
class WebAnalyticsSiteArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  final pulumi.Input<bool?>? autoInstall;
  /// Enables or disables RUM. This option can be used only when autoInstall is set to true.
  final pulumi.Input<bool?>? enabled;
  /// The hostname to use for gray-clouded sites.
  final pulumi.Input<String?>? host;
  /// If enabled, the JavaScript snippet will not be injected for visitors from the EU.
  final pulumi.Input<bool?>? lite;
  /// The zone identifier.
  final pulumi.Input<String?>? zoneTag;

  /// Creates a new [WebAnalyticsSiteArgs].
  /// [accountId] Identifier.
  /// [autoInstall] If enabled, the JavaScript snippet is automatically injected for orange-clouded sites.
  /// [enabled] Enables or disables RUM. This option can be used only when autoInstall is set to true.
  /// [host] The hostname to use for gray-clouded sites.
  /// [lite] If enabled, the JavaScript snippet will not be injected for visitors from the EU.
  /// [zoneTag] The zone identifier.
  const WebAnalyticsSiteArgs({
    required this.accountId,
    this.autoInstall,
    this.enabled,
    this.host,
    this.lite,
    this.zoneTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'autoInstall': ?autoInstall,
      'enabled': ?enabled,
      'host': ?host,
      'lite': ?lite,
      'zoneTag': ?zoneTag,
    };
  }

  factory WebAnalyticsSiteArgs.fromMap(Map<String, dynamic> map) {
    return WebAnalyticsSiteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      autoInstall: (() { final guardedValue = map['autoInstall']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lite: (() { final guardedValue = map['lite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneTag: (() { final guardedValue = map['zoneTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
