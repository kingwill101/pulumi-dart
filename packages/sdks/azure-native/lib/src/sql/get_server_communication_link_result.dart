// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerCommunicationLink.
class GetServerCommunicationLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Communication link kind.  This property is used for Azure Portal metadata.
  final String kind;
  /// Communication link location.
  final String location;
  /// Resource name.
  final String name;
  /// The name of the partner server.
  final String partnerServer;
  /// The state.
  final String state;
  /// Resource type.
  final String type;

  /// Creates a new [GetServerCommunicationLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [kind] Communication link kind.  This property is used for Azure Portal metadata.
  /// [location] Communication link location.
  /// [name] Resource name.
  /// [partnerServer] The name of the partner server.
  /// [state] The state.
  /// [type] Resource type.
  const GetServerCommunicationLinkResult({
    required this.azureApiVersion,
    required this.id,
    required this.kind,
    required this.location,
    required this.name,
    required this.partnerServer,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': kind,
      'location': location,
      'name': name,
      'partnerServer': partnerServer,
      'state': state,
      'type': type,
    };
  }

  factory GetServerCommunicationLinkResult.fromMap(Map<String, dynamic> map) {
    return GetServerCommunicationLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      partnerServer: map['partnerServer'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
