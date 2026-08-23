// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_groups_settings_authentication.dart';

class FeedDetailsWorkspaceGroupsSettings {
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceGroupsSettingsAuthentication>? authentication;
  /// Customer ID.
  final pulumi.Input<String>? workspaceCustomerId;

  /// Creates a new [FeedDetailsWorkspaceGroupsSettings].
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [workspaceCustomerId] Customer ID.
  const FeedDetailsWorkspaceGroupsSettings({
    this.authentication,
    this.workspaceCustomerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceGroupsSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'workspaceCustomerId': ?workspaceCustomerId,
    };
  }

  factory FeedDetailsWorkspaceGroupsSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceGroupsSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceGroupsSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceCustomerId: (() { final guardedValue = map['workspaceCustomerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
