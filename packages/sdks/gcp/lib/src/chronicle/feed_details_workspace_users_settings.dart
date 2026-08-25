// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_users_settings_authentication.dart';

class FeedDetailsWorkspaceUsersSettings {
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceUsersSettingsAuthentication?>? authentication;
  /// Projection Type.
  /// Possible values:
  /// BASIC_PROJECTION
  /// FULL_PROJECTION
  final pulumi.Input<String?>? projectionType;
  /// Customer ID.
  final pulumi.Input<String?>? workspaceCustomerId;

  /// Creates a new [FeedDetailsWorkspaceUsersSettings].
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [projectionType] Projection Type.
  /// [workspaceCustomerId] Customer ID.
  const FeedDetailsWorkspaceUsersSettings({
    this.authentication,
    this.projectionType,
    this.workspaceCustomerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceUsersSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'projectionType': ?projectionType,
      'workspaceCustomerId': ?workspaceCustomerId,
    };
  }

  factory FeedDetailsWorkspaceUsersSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceUsersSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceUsersSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectionType: (() { final guardedValue = map['projectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceCustomerId: (() { final guardedValue = map['workspaceCustomerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
