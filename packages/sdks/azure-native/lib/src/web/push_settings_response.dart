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
  PushSettingsResponse({
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
      dynamicTagsJson: map['dynamicTagsJson'] == null ? null : (map['dynamicTagsJson']! as String).input(),
      id: (map['id'] as String).input(),
      isPushEnabled: (map['isPushEnabled'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      tagWhitelistJson: map['tagWhitelistJson'] == null ? null : (map['tagWhitelistJson']! as String).input(),
      tagsRequiringAuth: map['tagsRequiringAuth'] == null ? null : (map['tagsRequiringAuth']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

