// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials {
  /// Private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? privateKey;

  /// Creates a new [FeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials].
  /// [privateKey] Private key in PEM format.
  const FeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials({
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
    };
  }

  factory FeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceGroupsSettingsAuthenticationRsCredentials(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
