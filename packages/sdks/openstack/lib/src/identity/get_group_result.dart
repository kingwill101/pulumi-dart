// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGroup.
class GetGroupResult {
  /// A description of the group.
  final String description;
  /// See Argument Reference above.
  final String domainId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetGroupResult].
  /// [description] A description of the group.
  /// [domainId] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  const GetGroupResult({
    required this.description,
    required this.domainId,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'domainId': domainId,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      description: map['description'] as String,
      domainId: map['domainId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

