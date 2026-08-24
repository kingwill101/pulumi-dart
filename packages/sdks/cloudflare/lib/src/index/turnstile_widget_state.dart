// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TurnstileWidget resources.
class TurnstileWidgetState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// expensive challenges in response to malicious bots (ENT only).
  final pulumi.Input<bool?>? botFightMode;
  /// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// this setting can determine the clearance level to be set
  /// Available values: "noClearance", "jschallenge", "managed", "interactive".
  final pulumi.Input<String?>? clearanceLevel;
  /// When the widget was created.
  final pulumi.Input<String?>? createdOn;
  /// Origin that created this widget, recorded at creation time and
  /// immutable afterward. Server-derived from the create request; not
  /// client-settable. Omitted from the response for widgets created
  /// before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final pulumi.Input<String?>? deployedVia;
  final pulumi.Input<List<String>?>? domains;
  /// Return the Ephemeral ID in /siteverify (ENT only).
  final pulumi.Input<bool?>? ephemeralId;
  /// Origin of the most recent mutation (create, update, delete, or
  /// secret rotation). Server-derived; not client-settable. Omitted for
  /// widgets last mutated before this field existed.
  /// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
  final pulumi.Input<String?>? lastModifiedVia;
  /// Widget Mode
  /// Available values: "non-interactive", "invisible", "managed".
  final pulumi.Input<String?>? mode;
  /// When the widget was modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Human readable widget name. Not unique. Cloudflare suggests that you
  /// set this to a meaningful string to make it easier to identify your
  /// widget, and where it is used.
  final pulumi.Input<String?>? name;
  /// Do not show any Cloudflare branding on the widget (ENT only).
  final pulumi.Input<bool?>? offlabel;
  /// Region where this widget can be used. This cannot be changed after creation.
  /// Available values: "world", "china".
  final pulumi.Input<String?>? region;
  /// Secret key for this widget.
  final pulumi.Input<String?>? secret;
  /// Widget item identifier tag.
  final pulumi.Input<String?>? sitekey;

  /// Creates a new [TurnstileWidgetState].
  /// [accountId] Identifier
  /// [botFightMode] If bot*fight*mode is set to `true`, Cloudflare issues computationally
  /// [clearanceLevel] If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
  /// [createdOn] When the widget was created.
  /// [deployedVia] Origin that created this widget, recorded at creation time and
  /// [domains] Optional.
  /// [ephemeralId] Return the Ephemeral ID in /siteverify (ENT only).
  /// [lastModifiedVia] Origin of the most recent mutation (create, update, delete, or
  /// [mode] Widget Mode
  /// [modifiedOn] When the widget was modified.
  /// [name] Human readable widget name. Not unique. Cloudflare suggests that you
  /// [offlabel] Do not show any Cloudflare branding on the widget (ENT only).
  /// [region] Region where this widget can be used. This cannot be changed after creation.
  /// [secret] Secret key for this widget.
  /// [sitekey] Widget item identifier tag.
  const TurnstileWidgetState({
    this.accountId,
    this.botFightMode,
    this.clearanceLevel,
    this.createdOn,
    this.deployedVia,
    this.domains,
    this.ephemeralId,
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

  factory TurnstileWidgetState.fromMap(Map<String, dynamic> map) {
    return TurnstileWidgetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      botFightMode: (() { final guardedValue = map['botFightMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clearanceLevel: (() { final guardedValue = map['clearanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployedVia: (() { final guardedValue = map['deployedVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ephemeralId: (() { final guardedValue = map['ephemeralId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedVia: (() { final guardedValue = map['lastModifiedVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlabel: (() { final guardedValue = map['offlabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sitekey: (() { final guardedValue = map['sitekey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
