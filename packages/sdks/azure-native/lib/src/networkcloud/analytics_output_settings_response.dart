// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_selector_response.dart';

class AnalyticsOutputSettingsResponse {
  /// The resource ID of the analytics workspace that is to be used by the specified identity.
  final pulumi.Input<String>? analyticsWorkspaceId;

  /// The selection of the managed identity to use with this analytics workspace. The identity type must be either system assigned or user assigned.
  final pulumi.Input<IdentitySelectorResponse>? associatedIdentity;

  /// Creates a new [AnalyticsOutputSettingsResponse].
  /// [analyticsWorkspaceId] The resource ID of the analytics workspace that is to be used by the specified identity.
  /// [associatedIdentity] The selection of the managed identity to use with this analytics workspace. The identity type must be either system assigned or user assigned.
  AnalyticsOutputSettingsResponse({
    this.analyticsWorkspaceId,
    this.associatedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'associatedIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            IdentitySelectorResponse,
            Map<String, dynamic>
          >(associatedIdentity, (value) => value.toMap()),
    };
  }

  factory AnalyticsOutputSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsOutputSettingsResponse(
      analyticsWorkspaceId: (() {
        final guardedValue = map['analyticsWorkspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedIdentity: (() {
        final guardedValue = map['associatedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentitySelectorResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
