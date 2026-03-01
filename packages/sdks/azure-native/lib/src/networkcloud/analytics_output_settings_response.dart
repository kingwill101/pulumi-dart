// ignore_for_file: unused_element, unnecessary_cast

import 'identity_selector_response.dart';

class AnalyticsOutputSettingsResponse {
  /// The resource ID of the analytics workspace that is to be used by the specified identity.
  final String? analyticsWorkspaceId;
  /// The selection of the managed identity to use with this analytics workspace. The identity type must be either system assigned or user assigned.
  final IdentitySelectorResponse? associatedIdentity;

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
      'associatedIdentity': ?associatedIdentity == null ? null : associatedIdentity!.toMap(),
    };
  }

  factory AnalyticsOutputSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsOutputSettingsResponse(
      analyticsWorkspaceId: map['analyticsWorkspaceId'] == null ? null : map['analyticsWorkspaceId'] as String,
      associatedIdentity: map['associatedIdentity'] == null ? null : IdentitySelectorResponse.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

