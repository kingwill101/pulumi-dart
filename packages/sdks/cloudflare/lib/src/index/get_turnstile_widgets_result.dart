// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTurnstileWidgetsResult {
  /// If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// expensive challenges in response to malicious bots (ENT only).
  final pulumi.Input<bool> botFightMode;
  /// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// this setting can determine the clearance level to be set
  /// Available values: "noClearance", "jschallenge", "managed", "interactive".
  final pulumi.Input<String> clearanceLevel;
  /// When the widget was created.
  final pulumi.Input<String> createdOn;
  /// Origin that created this widget, recorded at creation time and
  /// immutable afterward. Server-derived from the create request; not
  /// client-settable. Omitted from the response for widgets created
  /// before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final pulumi.Input<String> deployedVia;
  final pulumi.Input<List<String>> domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  final pulumi.Input<bool> ephemeralId;
  /// Widget item identifier tag.
  final pulumi.Input<String> id;
  /// Origin of the most recent mutation (create, update, delete, or
  /// secret rotation). Server-derived; not client-settable. Omitted for
  /// widgets last mutated before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final pulumi.Input<String> lastModifiedVia;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  final pulumi.Input<String> mode;
  /// When the widget was modified.
  final pulumi.Input<String> modifiedOn;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  final pulumi.Input<String> name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  final pulumi.Input<bool> offlabel;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  final pulumi.Input<String> region;
  /// Widget item identifier tag.
  final pulumi.Input<String> sitekey;

  /// Creates a new [GetTurnstileWidgetsResult].
  /// [botFightMode] If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// [clearanceLevel] If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// [createdOn] When the widget was created.
  /// [deployedVia] Origin that created this widget, recorded at creation time and
  /// [domains] Required.
  /// [ephemeralId] Return the Ephemeral ID in /siteverify (ENT only).
  /// [id] Widget item identifier tag.
  /// [lastModifiedVia] Origin of the most recent mutation (create, update, delete, or
  /// [mode] Widget Mode
  /// [modifiedOn] When the widget was modified.
  /// [name] Human readable widget name. Not unique. Cloudflare suggests that you
  /// [offlabel] Do not show any Cloudflare branding on the widget (ENT only).
  /// [region] Region where this widget can be used. This cannot be changed after creation.
  /// [sitekey] Widget item identifier tag.
  const GetTurnstileWidgetsResult({
    required this.botFightMode,
    required this.clearanceLevel,
    required this.createdOn,
    required this.deployedVia,
    required this.domains,
    required this.ephemeralId,
    required this.id,
    required this.lastModifiedVia,
    required this.mode,
    required this.modifiedOn,
    required this.name,
    required this.offlabel,
    required this.region,
    required this.sitekey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botFightMode': botFightMode,
      'clearanceLevel': clearanceLevel,
      'createdOn': createdOn,
      'deployedVia': deployedVia,
      'domains': domains,
      'ephemeralId': ephemeralId,
      'id': id,
      'lastModifiedVia': lastModifiedVia,
      'mode': mode,
      'modifiedOn': modifiedOn,
      'name': name,
      'offlabel': offlabel,
      'region': region,
      'sitekey': sitekey,
    };
  }

  factory GetTurnstileWidgetsResult.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetsResult(
      botFightMode: pulumi.Input.fromValue(map['botFightMode'] as bool),
      clearanceLevel: pulumi.Input.fromValue(map['clearanceLevel'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      deployedVia: pulumi.Input.fromValue(map['deployedVia'] as String),
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      ephemeralId: pulumi.Input.fromValue(map['ephemeralId'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifiedVia: pulumi.Input.fromValue(map['lastModifiedVia'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      offlabel: pulumi.Input.fromValue(map['offlabel'] as bool),
      region: pulumi.Input.fromValue(map['region'] as String),
      sitekey: pulumi.Input.fromValue(map['sitekey'] as String),
    );
  }
}
