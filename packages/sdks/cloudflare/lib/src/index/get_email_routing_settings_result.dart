// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEmailRoutingSettings.
class GetEmailRoutingSettingsResult {
  /// The date and time the settings have been created.
  final String? created;
  /// State of the zone settings for Email Routing.
  final bool? enabled;
  /// Identifier.
  final String? id;
  /// The date and time the settings have been modified.
  final String? modified;
  /// Domain of your zone.
  final String? name;
  /// Flag to check if the user skipped the configuration wizard.
  final bool? skipWizard;
  /// Show the state of your account, and the type or configuration error.
  /// Available values: "ready", "unconfigured", "misconfigured", "misconfigured/locked", "unlocked".
  final String? status;
  /// Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  final String? tag;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetEmailRoutingSettingsResult].
  /// [created] The date and time the settings have been created.
  /// [enabled] State of the zone settings for Email Routing.
  /// [id] Identifier.
  /// [modified] The date and time the settings have been modified.
  /// [name] Domain of your zone.
  /// [skipWizard] Flag to check if the user skipped the configuration wizard.
  /// [status] Show the state of your account, and the type or configuration error.
  /// [tag] Email Routing settings tag. (Deprecated, replaced by Email Routing settings identifier)
  /// [zoneId] Identifier.
  const GetEmailRoutingSettingsResult({
    this.created,
    this.enabled,
    this.id,
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
      'id': ?id,
      'modified': ?modified,
      'name': ?name,
      'skipWizard': ?skipWizard,
      'status': ?status,
      'tag': ?tag,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingSettingsResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skipWizard: (() { final guardedValue = map['skipWizard']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
