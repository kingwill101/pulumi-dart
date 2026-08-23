// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials {
  /// Private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;

  /// Creates a new [FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials].
  /// [privateKey] Private key in PEM format.
  const FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
    };
  }

  factory FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
