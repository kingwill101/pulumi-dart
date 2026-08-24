// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_turnstile_widget_turnstile_widget_args_doc}
/// The set of arguments for TurnstileWidget.
/// {@endtemplate}
/// {@macro pulumi_index_turnstile_widget_turnstile_widget_args_doc}
class TurnstileWidgetArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// expensive challenges in response to malicious bots (ENT only).
  final pulumi.Input<bool?>? botFightMode;
  /// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// this setting can determine the clearance level to be set
  /// Available values: "noClearance", "jschallenge", "managed", "interactive".
  final pulumi.Input<String?>? clearanceLevel;
  final pulumi.Input<List<String>> domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  final pulumi.Input<bool?>? ephemeralId;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  final pulumi.Input<String> mode;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  final pulumi.Input<String> name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  final pulumi.Input<bool?>? offlabel;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  final pulumi.Input<String?>? region;

  /// Creates a new [TurnstileWidgetArgs].
  /// [accountId] Identifier
  /// [botFightMode] If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// [clearanceLevel] If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// [domains] Required.
  /// [ephemeralId] Return the Ephemeral ID in /siteverify (ENT only).
  /// [mode] Widget Mode
  /// [name] Human readable widget name. Not unique. Cloudflare suggests that you
  /// [offlabel] Do not show any Cloudflare branding on the widget (ENT only).
  /// [region] Region where this widget can be used. This cannot be changed after creation.
  const TurnstileWidgetArgs({
    required this.accountId,
    this.botFightMode,
    this.clearanceLevel,
    required this.domains,
    this.ephemeralId,
    required this.mode,
    required this.name,
    this.offlabel,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'botFightMode': ?botFightMode,
      'clearanceLevel': ?clearanceLevel,
      'domains': domains,
      'ephemeralId': ?ephemeralId,
      'mode': mode,
      'name': name,
      'offlabel': ?offlabel,
      'region': ?region,
    };
  }

  factory TurnstileWidgetArgs.fromMap(Map<String, dynamic> map) {
    return TurnstileWidgetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      botFightMode: (() { final guardedValue = map['botFightMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clearanceLevel: (() { final guardedValue = map['clearanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      ephemeralId: (() { final guardedValue = map['ephemeralId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      offlabel: (() { final guardedValue = map['offlabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
