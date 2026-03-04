// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_settings_response.dart';

/// Upstream auth settings. If not set, no auth is used for upstream messages.
class UpstreamAuthSettingsResponse {
  /// Managed identity settings for upstream.
  final pulumi.Input<ManagedIdentitySettingsResponse>? managedIdentity;

  /// Upstream auth type enum.
  final pulumi.Input<String>? type;

  /// Creates a new [UpstreamAuthSettingsResponse].
  /// [managedIdentity] Managed identity settings for upstream.
  /// [type] Upstream auth type enum.
  UpstreamAuthSettingsResponse({this.managedIdentity, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentitySettingsResponse,
            Map<String, dynamic>
          >(managedIdentity, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory UpstreamAuthSettingsResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamAuthSettingsResponse(
      managedIdentity: (() {
        final guardedValue = map['managedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentitySettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
