// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailRoutingSettings resources.
class EmailRoutingSettingsState {
  /// The date and time the settings have been created.
  final pulumi.Input<String?>? created;
  /// State of the zone settings for Email Routing.
  final pulumi.Input<bool?>? enabled;
  /// The date and time the settings have been modified.
  final pulumi.Input<String?>? modified;
  /// Domain of your zone.
  final pulumi.Input<String?>? name;
  /// Flag to check if the user skipped the configuration wizard.
  final pulumi.Input<bool?>? skipWizard;
  /// Show the state of your account, and the type or configuration error.
  /// Available values: "ready", "unconfigured", "misconfigured", "misconfigured/locked", "unlocked".
  final pulumi.Input<String?>? status;
  /// Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  final pulumi.Input<String?>? tag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [EmailRoutingSettingsState].
  /// [created] The date and time the settings have been created.
  /// [enabled] State of the zone settings for Email Routing.
  /// [modified] The date and time the settings have been modified.
  /// [name] Domain of your zone.
  /// [skipWizard] Flag to check if the user skipped the configuration wizard.
  /// [status] Show the state of your account, and the type or configuration error.
  /// [tag] Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  /// [zoneId] Identifier.
  const EmailRoutingSettingsState({
    this.created,
    this.enabled,
    this.modified,
    this.name,
    this.skipWizard,
    this.status,
    this.tag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'enabled': ?enabled,
      'modified': ?modified,
      'name': ?name,
      'skipWizard': ?skipWizard,
      'status': ?status,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory EmailRoutingSettingsState.fromMap(Map<String, dynamic> map) {
    return EmailRoutingSettingsState(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipWizard: (() { final guardedValue = map['skipWizard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
