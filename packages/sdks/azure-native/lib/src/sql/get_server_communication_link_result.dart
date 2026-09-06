// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerCommunicationLink.
class GetServerCommunicationLinkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Communication link kind.  This property is used for Azure Portal metadata.
  final String? kind;
  /// Communication link location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The name of the partner server.
  final String? partnerServer;
  /// The state.
  final String? state;
  /// Resource type.
  final String? type;

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
    this.azureApiVersion,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.partnerServer,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'partnerServer': ?partnerServer,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetServerCommunicationLinkResult.fromMap(Map<String, dynamic> map) {
    return GetServerCommunicationLinkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerServer: (() { final guardedValue = map['partnerServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
