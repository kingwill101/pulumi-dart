// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerRegistration.
class GetPartnerRegistrationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The immutable id of the corresponding partner registration.
  final String partnerRegistrationId;
  final String resourceGroupName;
  /// A mapping of tags which are assigned to the EventGrid Partner Registration.
  final Map<String, String> tags;

  /// Creates a new [GetPartnerRegistrationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [partnerRegistrationId] The immutable id of the corresponding partner registration.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags which are assigned to the EventGrid Partner Registration.
  const GetPartnerRegistrationResult({
    required this.id,
    required this.name,
    required this.partnerRegistrationId,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'partnerRegistrationId': partnerRegistrationId,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetPartnerRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerRegistrationResult(
      id: map['id'] as String,
      name: map['name'] as String,
      partnerRegistrationId: map['partnerRegistrationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

