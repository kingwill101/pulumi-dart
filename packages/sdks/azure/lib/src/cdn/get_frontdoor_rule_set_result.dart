// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFrontdoorRuleSet.
class GetFrontdoorRuleSetResult {
  /// The ID of the Front Door Profile within which this Front Door Rule Set exists.
  final String? cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? profileName;
  final String? resourceGroupName;

  /// Creates a new [GetFrontdoorRuleSetResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile within which this Front Door Rule Set exists.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  const GetFrontdoorRuleSetResult({
    this.cdnFrontdoorProfileId,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetFrontdoorRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorRuleSetResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
