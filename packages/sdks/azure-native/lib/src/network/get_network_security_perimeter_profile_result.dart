// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeterProfile.
class GetNetworkSecurityPerimeterProfileResult {
  /// Version number that increases with every update to access rules within the profile.
  final String? accessRulesVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Version number that increases with every update to diagnostic settings within the profile.
  final String? diagnosticSettingsVersion;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkSecurityPerimeterProfileResult].
  /// [accessRulesVersion] Version number that increases with every update to access rules within the profile.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [diagnosticSettingsVersion] Version number that increases with every update to diagnostic settings within the profile.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetNetworkSecurityPerimeterProfileResult({
    this.accessRulesVersion,
    this.azureApiVersion,
    this.diagnosticSettingsVersion,
    this.id,
    this.location,
    this.name,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesVersion': ?accessRulesVersion,
      'azureApiVersion': ?azureApiVersion,
      'diagnosticSettingsVersion': ?diagnosticSettingsVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkSecurityPerimeterProfileResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterProfileResult(
      accessRulesVersion: (() { final guardedValue = map['accessRulesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diagnosticSettingsVersion: (() { final guardedValue = map['diagnosticSettingsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
