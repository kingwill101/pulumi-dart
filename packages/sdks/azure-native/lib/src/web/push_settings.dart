// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Push settings for the App.
class PushSettings {
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  final pulumi.Input<String>? dynamicTagsJson;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  final pulumi.Input<bool> isPushEnabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  final pulumi.Input<String>? tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  final pulumi.Input<String>? tagsRequiringAuth;

  /// Creates a new [PushSettings].
  /// [dynamicTagsJson] Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  /// [isPushEnabled] Gets or sets a flag indicating whether the Push endpoint is enabled.
  /// [kind] Kind of resource.
  /// [tagWhitelistJson] Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  /// [tagsRequiringAuth] Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  PushSettings({
    this.dynamicTagsJson,
    required this.isPushEnabled,
    this.kind,
    this.tagWhitelistJson,
    this.tagsRequiringAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagsJson': ?dynamicTagsJson,
      'isPushEnabled': isPushEnabled,
      'kind': ?kind,
      'tagWhitelistJson': ?tagWhitelistJson,
      'tagsRequiringAuth': ?tagsRequiringAuth,
    };
  }

  factory PushSettings.fromMap(Map<String, dynamic> map) {
    return PushSettings(
      dynamicTagsJson: map['dynamicTagsJson'] == null ? null : (map['dynamicTagsJson'] as String).input(),
      isPushEnabled: (map['isPushEnabled'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      tagWhitelistJson: map['tagWhitelistJson'] == null ? null : (map['tagWhitelistJson'] as String).input(),
      tagsRequiringAuth: map['tagsRequiringAuth'] == null ? null : (map['tagsRequiringAuth'] as String).input(),
    );
  }
}

