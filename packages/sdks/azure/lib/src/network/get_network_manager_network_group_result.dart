// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkManagerNetworkGroup.
class GetNetworkManagerNetworkGroupResult {
  /// A description of the Network Manager Network Group.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The member type of the Network Manager Network Group.
  final String memberType;
  final String name;
  final String networkManagerId;

  /// Creates a new [GetNetworkManagerNetworkGroupResult].
  /// [description] A description of the Network Manager Network Group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [memberType] The member type of the Network Manager Network Group.
  /// [name] Required.
  /// [networkManagerId] Required.
  const GetNetworkManagerNetworkGroupResult({
    required this.description,
    required this.id,
    required this.memberType,
    required this.name,
    required this.networkManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'memberType': memberType,
      'name': name,
      'networkManagerId': networkManagerId,
    };
  }

  factory GetNetworkManagerNetworkGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerNetworkGroupResult(
      description: map['description'] as String,
      id: map['id'] as String,
      memberType: map['memberType'] as String,
      name: map['name'] as String,
      networkManagerId: map['networkManagerId'] as String,
    );
  }
}

