// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_activity_settings_authentication.dart';

class FeedDetailsWorkspaceActivitySettings {
  /// Applications.
  final pulumi.Input<List<String>>? applications;
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceActivitySettingsAuthentication>? authentication;
  /// Customer ID.
  final pulumi.Input<String>? workspaceCustomerId;

  /// Creates a new [FeedDetailsWorkspaceActivitySettings].
  /// [applications] Applications.
  /// [authentication] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [workspaceCustomerId] Customer ID.
  const FeedDetailsWorkspaceActivitySettings({
    this.applications,
    this.authentication,
    this.workspaceCustomerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?applications,
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceActivitySettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'workspaceCustomerId': ?workspaceCustomerId,
    };
  }

  factory FeedDetailsWorkspaceActivitySettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceActivitySettings(
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceActivitySettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceCustomerId: (() { final guardedValue = map['workspaceCustomerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
