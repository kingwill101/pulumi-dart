// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFrontdoorRuleSet.
class GetFrontdoorRuleSetResult {
  /// The ID of the Front Door Profile within which this Front Door Rule Set exists.
  final String cdnFrontdoorProfileId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String profileName;
  final String resourceGroupName;

  /// Creates a new [GetFrontdoorRuleSetResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Rule Set exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [profileName] Required.
  /// [resourceGroupName] Required.
  GetFrontdoorRuleSetResult({
    required this.cdnFrontdoorProfileId,
    required this.id,
    required this.name,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'id': id,
      'name': name,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFrontdoorRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorRuleSetResult(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
