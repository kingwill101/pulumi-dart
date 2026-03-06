// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Push settings for the App.
class PushSettingsResponse {
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  final pulumi.Input<String>? dynamicTagsJson;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  final pulumi.Input<bool> isPushEnabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  final pulumi.Input<String>? tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  final pulumi.Input<String>? tagsRequiringAuth;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PushSettingsResponse].
  /// [dynamicTagsJson] Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  /// [id] Resource Id.
  /// [isPushEnabled] Gets or sets a flag indicating whether the Push endpoint is enabled.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [tagWhitelistJson] Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  /// [tagsRequiringAuth] Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// [type] Resource type.
  const PushSettingsResponse({
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

  factory PushSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PushSettingsResponse(
      dynamicTagsJson: (() { final guardedValue = map['dynamicTagsJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      isPushEnabled: pulumi.Input.fromValue(map['isPushEnabled'] as bool),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tagWhitelistJson: (() { final guardedValue = map['tagWhitelistJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagsRequiringAuth: (() { final guardedValue = map['tagsRequiringAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

