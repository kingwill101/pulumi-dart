// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_chrome_os_settings_authentication.dart';

class FeedDetailsWorkspaceChromeOsSettings {
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceChromeOsSettingsAuthentication>? authentication;
  /// Customer ID.
  final pulumi.Input<String>? workspaceCustomerId;

  /// Creates a new [FeedDetailsWorkspaceChromeOsSettings].
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [workspaceCustomerId] Customer ID.
  const FeedDetailsWorkspaceChromeOsSettings({
    this.authentication,
    this.workspaceCustomerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceChromeOsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'workspaceCustomerId': ?workspaceCustomerId,
    };
  }

  factory FeedDetailsWorkspaceChromeOsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceChromeOsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceChromeOsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceCustomerId: (() { final guardedValue = map['workspaceCustomerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
