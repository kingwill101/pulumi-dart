// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_privileges_settings_authentication.dart';

class FeedDetailsWorkspacePrivilegesSettings {
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspacePrivilegesSettingsAuthentication?>? authentication;
  /// Customer ID.
  final pulumi.Input<String?>? workspaceCustomerId;

  /// Creates a new [FeedDetailsWorkspacePrivilegesSettings].
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [workspaceCustomerId] Customer ID.
  const FeedDetailsWorkspacePrivilegesSettings({
    this.authentication,
    this.workspaceCustomerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspacePrivilegesSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'workspaceCustomerId': ?workspaceCustomerId,
    };
  }

  factory FeedDetailsWorkspacePrivilegesSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspacePrivilegesSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspacePrivilegesSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceCustomerId: (() { final guardedValue = map['workspaceCustomerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
