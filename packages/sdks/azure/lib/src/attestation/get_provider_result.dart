// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProvider.
class GetProviderResult {
  /// The (Endpoint|URI) of the Attestation Service.
  final String? attestationUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Attestation Provider exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Attestation Provider.
  final Map<String, String>? tags;
  /// Trust model used for the Attestation Service.
  final String? trustModel;

  /// Creates a new [GetProviderResult].
  /// [attestationUri] The (Endpoint|URI) of the Attestation Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Attestation Provider exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Attestation Provider.
  /// [trustModel] Trust model used for the Attestation Service.
  const GetProviderResult({
    this.attestationUri,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.trustModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationUri': ?attestationUri,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'trustModel': ?trustModel,
    };
  }

  factory GetProviderResult.fromMap(Map<String, dynamic> map) {
    return GetProviderResult(
      attestationUri: (() { final guardedValue = map['attestationUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trustModel: (() { final guardedValue = map['trustModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
