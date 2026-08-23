// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsHttpSettings {
  /// Possible values:
  /// SOURCE_DELETION_NEVER
  /// SOURCE_DELETION_ON_SUCCESS
  /// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
  final pulumi.Input<String>? sourceDeletionOption;
  /// Possible values:
  /// FILES
  /// FOLDERS
  /// FOLDERS_RECURSIVE
  final pulumi.Input<String>? sourceType;
  /// HTTP URI.
  final pulumi.Input<String>? uri;

  /// Creates a new [FeedDetailsHttpSettings].
  /// [sourceDeletionOption] Possible values:
  /// [sourceType] Possible values:
  /// [uri] HTTP URI.
  const FeedDetailsHttpSettings({
    this.sourceDeletionOption,
    this.sourceType,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDeletionOption': ?sourceDeletionOption,
      'sourceType': ?sourceType,
      'uri': ?uri,
    };
  }

  factory FeedDetailsHttpSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsHttpSettings(
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
