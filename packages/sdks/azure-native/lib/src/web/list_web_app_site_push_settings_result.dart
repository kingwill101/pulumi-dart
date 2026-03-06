// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWebAppSitePushSettings.
class ListWebAppSitePushSettingsResult {
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  final String? dynamicTagsJson;
  /// Resource Id.
  final String id;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  final bool isPushEnabled;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  final String? tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  final String? tagsRequiringAuth;
  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppSitePushSettingsResult].
  /// [dynamicTagsJson] Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  /// [id] Resource Id.
  /// [isPushEnabled] Gets or sets a flag indicating whether the Push endpoint is enabled.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [tagWhitelistJson] Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  /// [tagsRequiringAuth] Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// [type] Resource type.
  const ListWebAppSitePushSettingsResult({
    this.dynamicTagsJson,
    required this.id,
    required this.isPushEnabled,
    this.kind,
    required this.name,
    this.tagWhitelistJson,
    this.tagsRequiringAuth,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagsJson': ?dynamicTagsJson,
      'id': id,
      'isPushEnabled': isPushEnabled,
      'kind': ?kind,
      'name': name,
      'tagWhitelistJson': ?tagWhitelistJson,
      'tagsRequiringAuth': ?tagsRequiringAuth,
      'type': type,
    };
  }

  factory ListWebAppSitePushSettingsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppSitePushSettingsResult(
      dynamicTagsJson: (() { final guardedValue = map['dynamicTagsJson']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isPushEnabled: map['isPushEnabled'] as bool,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      tagWhitelistJson: (() { final guardedValue = map['tagWhitelistJson']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tagsRequiringAuth: (() { final guardedValue = map['tagsRequiringAuth']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

