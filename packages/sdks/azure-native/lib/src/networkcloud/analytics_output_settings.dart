// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_selector.dart';

class AnalyticsOutputSettings {
  /// The resource ID of the analytics workspace that is to be used by the specified identity.
  final pulumi.Input<String>? analyticsWorkspaceId;
  /// The selection of the managed identity to use with this analytics workspace. The identity type must be either system assigned or user assigned.
  final pulumi.Input<IdentitySelector>? associatedIdentity;

  /// Creates a new [AnalyticsOutputSettings].
  /// [analyticsWorkspaceId] The resource ID of the analytics workspace that is to be used by the specified identity.
  /// [associatedIdentity] The selection of the managed identity to use with this analytics workspace. The identity type must be either system assigned or user assigned.
  AnalyticsOutputSettings({
    this.analyticsWorkspaceId,
    this.associatedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsWorkspaceId': ?analyticsWorkspaceId,
      'associatedIdentity': ?pulumi.Input.mapOptionalInputValue<IdentitySelector, Map<String, dynamic>>(associatedIdentity, (value) => value.toMap()),
    };
  }

  factory AnalyticsOutputSettings.fromMap(Map<String, dynamic> map) {
    return AnalyticsOutputSettings(
      analyticsWorkspaceId: map['analyticsWorkspaceId'] == null ? null : (map['analyticsWorkspaceId'] as String).input(),
      associatedIdentity: map['associatedIdentity'] == null ? null : (IdentitySelector.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

