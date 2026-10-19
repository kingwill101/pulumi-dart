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
  /// Direction to order widgets.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  final pulumi.Input<List<String>> domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  final pulumi.Input<bool?>? ephemeralId;
  /// Filter widgets by field using case-insensitive substring matching.
  /// Format: `field:value`
  final pulumi.Input<String?>? filter;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  final pulumi.Input<String> mode;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  final pulumi.Input<String> name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  final pulumi.Input<bool?>? offlabel;
  /// Field to order widgets by.
  /// Available values: "id", "sitekey", "name", "createdOn", "modifiedOn".
  final pulumi.Input<String?>? order;
  /// Page number of paginated results.
  final pulumi.Input<double?>? page;
  /// Number of items per page.
  final pulumi.Input<double?>? perPage;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  final pulumi.Input<String?>? region;

  /// Creates a new [TurnstileWidgetArgs].
  /// [accountId] Identifier
  /// [botFightMode] If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// [clearanceLevel] If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// [direction] Direction to order widgets.
  /// [domains] Required.
  /// [ephemeralId] Return the Ephemeral ID in /siteverify (ENT only).
  /// [filter] Filter widgets by field using case-insensitive substring matching.
  /// [mode] Widget Mode
  /// [name] Human readable widget name. Not unique. Cloudflare suggests that you
  /// [offlabel] Do not show any Cloudflare branding on the widget (ENT only).
  /// [order] Field to order widgets by.
  /// [page] Page number of paginated results.
  /// [perPage] Number of items per page.
  /// [region] Region where this widget can be used. This cannot be changed after creation.
  const TurnstileWidgetArgs({
    required this.accountId,
    this.botFightMode,
    this.clearanceLevel,
    this.direction,
    required this.domains,
    this.ephemeralId,
    this.filter,
    required this.mode,
    required this.name,
    this.offlabel,
    this.order,
    this.page,
    this.perPage,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'botFightMode': ?botFightMode,
      'clearanceLevel': ?clearanceLevel,
      'direction': ?direction,
      'domains': domains,
      'ephemeralId': ?ephemeralId,
      'filter': ?filter,
      'mode': mode,
      'name': name,
      'offlabel': ?offlabel,
      'order': ?order,
      'page': ?page,
      'perPage': ?perPage,
      'region': ?region,
    };
  }

  factory TurnstileWidgetArgs.fromMap(Map<String, dynamic> map) {
    return TurnstileWidgetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      botFightMode: (() { final guardedValue = map['botFightMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clearanceLevel: (() { final guardedValue = map['clearanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      ephemeralId: (() { final guardedValue = map['ephemeralId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      offlabel: (() { final guardedValue = map['offlabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
