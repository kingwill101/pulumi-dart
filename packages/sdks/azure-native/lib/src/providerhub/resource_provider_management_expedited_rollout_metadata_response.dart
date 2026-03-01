// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for expedited rollout.
class ResourceProviderManagementExpeditedRolloutMetadataResponse {
  /// Expedited rollout enabled?
  final bool? enabled;
  /// Expedited rollout intent.
  final String? expeditedRolloutIntent;

  /// Creates a new [ResourceProviderManagementExpeditedRolloutMetadataResponse].
  /// [enabled] Expedited rollout enabled?
  /// [expeditedRolloutIntent] Expedited rollout intent.
  ResourceProviderManagementExpeditedRolloutMetadataResponse({
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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expeditedRolloutIntent: map['expeditedRolloutIntent'] == null ? null : map['expeditedRolloutIntent'] as String,
    );
  }
}

