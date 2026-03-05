// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProvider.
class GetProviderResult {
  /// The (Endpoint|URI) of the Attestation Service.
  final String attestationUri;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Attestation Provider exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// A mapping of tags assigned to the Attestation Provider.
  final Map<String, String> tags;

  /// Trust model used for the Attestation Service.
  final String trustModel;

  /// Creates a new [GetProviderResult].
  /// [attestationUri] The (Endpoint|URI) of the Attestation Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Attestation Provider exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Attestation Provider.
  /// [trustModel] Trust model used for the Attestation Service.
  GetProviderResult({
    required this.attestationUri,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.trustModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attestationUri': attestationUri,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'trustModel': trustModel,
    };
  }

  factory GetProviderResult.fromMap(Map<String, dynamic> map) {
    return GetProviderResult(
      attestationUri: map['attestationUri'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      trustModel: map['trustModel'] as String,
    );
  }
}
