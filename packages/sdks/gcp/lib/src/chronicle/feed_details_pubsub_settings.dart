// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsPubsubSettings {
  /// Google Service Account Email.
  final pulumi.Input<String?>? googleServiceAccountEmail;

  /// Creates a new [FeedDetailsPubsubSettings].
  /// [googleServiceAccountEmail] Google Service Account Email.
  const FeedDetailsPubsubSettings({
    this.googleServiceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleServiceAccountEmail': ?googleServiceAccountEmail,
    };
  }

  factory FeedDetailsPubsubSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsPubsubSettings(
      googleServiceAccountEmail: (() { final guardedValue = map['googleServiceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
