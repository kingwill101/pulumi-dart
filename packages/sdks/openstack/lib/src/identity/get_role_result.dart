// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRole.
class GetRoleResult {
  /// See Argument Reference above.
  final String domainId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final String name;

  /// See Argument Reference above.
  final String region;

  /// Creates a new [GetRoleResult].
  /// [domainId] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [region] See Argument Reference above.
  GetRoleResult({
    required this.domainId,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetRoleResult.fromMap(Map<String, dynamic> map) {
    return GetRoleResult(
      domainId: map['domainId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
