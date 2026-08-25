// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworks.
class GetNetworksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of networks in the specified project.
  final List<String>? networks;
  /// The project name being queried.
  final String? project;
  /// The URI of the resource.
  final String? selfLink;

  /// Creates a new [GetNetworksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networks] The list of networks in the specified project.
  /// [project] The project name being queried.
  /// [selfLink] The URI of the resource.
  const GetNetworksResult({
    this.id,
    this.networks,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'networks': ?networks,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
