// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for expedited rollout.
class ResourceProviderManagementExpeditedRolloutMetadata {
  /// Expedited rollout enabled?
  final pulumi.Input<bool>? enabled;
  /// Expedited rollout intent.
  final pulumi.Input<String>? expeditedRolloutIntent;

  /// Creates a new [ResourceProviderManagementExpeditedRolloutMetadata].
  /// [enabled] Expedited rollout enabled?
  /// [expeditedRolloutIntent] Expedited rollout intent.
  const ResourceProviderManagementExpeditedRolloutMetadata({
    this.enabled,
    this.expeditedRolloutIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expeditedRolloutIntent': ?expeditedRolloutIntent,
    };
  }

  factory ResourceProviderManagementExpeditedRolloutMetadata.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManagementExpeditedRolloutMetadata(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expeditedRolloutIntent: (() { final guardedValue = map['expeditedRolloutIntent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

