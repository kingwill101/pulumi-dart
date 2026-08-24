// ignore_for_file: unused_element, unnecessary_cast

import 'get_turnstile_widget_filter.dart';

/// Result data returned by getTurnstileWidget.
class GetTurnstileWidgetResult {
  /// Identifier
  final String? accountId;
  /// If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// expensive challenges in response to malicious bots (ENT only).
  final bool? botFightMode;
  /// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// this setting can determine the clearance level to be set
  /// Available values: "noClearance", "jschallenge", "managed", "interactive".
  final String? clearanceLevel;
  /// When the widget was created.
  final String? createdOn;
  /// Origin that created this widget, recorded at creation time and
  /// immutable afterward. Server-derived from the create request; not
  /// client-settable. Omitted from the response for widgets created
  /// before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final String? deployedVia;
  final List<String>? domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  final bool? ephemeralId;
  final GetTurnstileWidgetFilter? filter;
  /// Widget item identifier tag.
  final String? id;
  /// Origin of the most recent mutation (create, update, delete, or
  /// secret rotation). Server-derived; not client-settable. Omitted for
  /// widgets last mutated before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final String? lastModifiedVia;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  final String? mode;
  /// When the widget was modified.
  final String? modifiedOn;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  final String? name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  final bool? offlabel;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  final String? region;
  /// Secret key for this widget.
  final String? secret;
  /// Widget item identifier tag.
  final String? sitekey;

  /// Creates a new [GetTurnstileWidgetResult].
  /// [accountId] Identifier
  /// [botFightMode] If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// [clearanceLevel] If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// [createdOn] When the widget was created.
  /// [deployedVia] Origin that created this widget, recorded at creation time and
  /// [domains] Optional.
  /// [ephemeralId] Return the Ephemeral ID in /siteverify (ENT only).
  /// [filter] Optional.
  /// [id] Widget item identifier tag.
  /// [lastModifiedVia] Origin of the most recent mutation (create, update, delete, or
  /// [mode] Widget Mode
  /// [modifiedOn] When the widget was modified.
  /// [name] Human readable widget name. Not unique. Cloudflare suggests that you
  /// [offlabel] Do not show any Cloudflare branding on the widget (ENT only).
  /// [region] Region where this widget can be used. This cannot be changed after creation.
  /// [secret] Secret key for this widget.
  /// [sitekey] Widget item identifier tag.
  const GetTurnstileWidgetResult({
    this.accountId,
    this.botFightMode,
    this.clearanceLevel,
    this.createdOn,
    this.deployedVia,
    this.domains,
    this.ephemeralId,
    this.filter,
    this.id,
    this.lastModifiedVia,
    this.mode,
    this.modifiedOn,
    this.name,
    this.offlabel,
    this.region,
    this.secret,
    this.sitekey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'botFightMode': ?botFightMode,
      'clearanceLevel': ?clearanceLevel,
      'createdOn': ?createdOn,
      'deployedVia': ?deployedVia,
      'domains': ?domains,
      'ephemeralId': ?ephemeralId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'lastModifiedVia': ?lastModifiedVia,
      'mode': ?mode,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'offlabel': ?offlabel,
      'region': ?region,
      'secret': ?secret,
      'sitekey': ?sitekey,
    };
  }

  factory GetTurnstileWidgetResult.fromMap(Map<String, dynamic> map) {
    return GetTurnstileWidgetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      botFightMode: (() { final guardedValue = map['botFightMode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clearanceLevel: (() { final guardedValue = map['clearanceLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployedVia: (() { final guardedValue = map['deployedVia']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ephemeralId: (() { final guardedValue = map['ephemeralId']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetTurnstileWidgetFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedVia: (() { final guardedValue = map['lastModifiedVia']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offlabel: (() { final guardedValue = map['offlabel']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sitekey: (() { final guardedValue = map['sitekey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
