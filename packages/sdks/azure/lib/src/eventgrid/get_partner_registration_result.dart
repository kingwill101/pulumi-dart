// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerRegistration.
class GetPartnerRegistrationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The immutable id of the corresponding partner registration.
  final String? partnerRegistrationId;
  final String? resourceGroupName;
  /// A mapping of tags which are assigned to the EventGrid Partner Registration.
  final Map<String, String>? tags;

  /// Creates a new [GetPartnerRegistrationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [partnerRegistrationId] The immutable id of the corresponding partner registration.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags which are assigned to the EventGrid Partner Registration.
  const GetPartnerRegistrationResult({
    this.id,
    this.name,
    this.partnerRegistrationId,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'partnerRegistrationId': ?partnerRegistrationId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetPartnerRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerRegistrationResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRegistrationId: (() { final guardedValue = map['partnerRegistrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
