// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkManagerNetworkGroup.
class GetNetworkManagerNetworkGroupResult {
  /// A description of the Network Manager Network Group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The member type of the Network Manager Network Group.
  final String? memberType;
  final String? name;
  final String? networkManagerId;

  /// Creates a new [GetNetworkManagerNetworkGroupResult].
  /// [description] A description of the Network Manager Network Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberType] The member type of the Network Manager Network Group.
  /// [name] Optional.
  /// [networkManagerId] Optional.
  const GetNetworkManagerNetworkGroupResult({
    this.description,
    this.id,
    this.memberType,
    this.name,
    this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'memberType': ?memberType,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
    };
  }

  factory GetNetworkManagerNetworkGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerNetworkGroupResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
