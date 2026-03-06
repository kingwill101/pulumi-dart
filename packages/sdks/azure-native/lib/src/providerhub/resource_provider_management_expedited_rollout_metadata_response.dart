// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for expedited rollout.
class ResourceProviderManagementExpeditedRolloutMetadataResponse {
  /// Expedited rollout enabled?
  final pulumi.Input<bool>? enabled;
  /// Expedited rollout intent.
  final pulumi.Input<String>? expeditedRolloutIntent;

  /// Creates a new [ResourceProviderManagementExpeditedRolloutMetadataResponse].
  /// [enabled] Expedited rollout enabled?
  /// [expeditedRolloutIntent] Expedited rollout intent.
  const ResourceProviderManagementExpeditedRolloutMetadataResponse({
    this.enabled,
    this.expeditedRolloutIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expeditedRolloutIntent': ?expeditedRolloutIntent,
    };
  }

  factory ResourceProviderManagementExpeditedRolloutMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManagementExpeditedRolloutMetadataResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expeditedRolloutIntent: (() { final guardedValue = map['expeditedRolloutIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

