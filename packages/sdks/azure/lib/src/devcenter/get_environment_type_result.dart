// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentType.
class GetEnvironmentTypeResult {
  final String devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// A mapping of tags assigned to the Dev Center Environment Type.
  final Map<String, String> tags;

  /// Creates a new [GetEnvironmentTypeResult].
  /// [devCenterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [tags] A mapping of tags assigned to the Dev Center Environment Type.
  GetEnvironmentTypeResult({
    required this.devCenterId,
    required this.id,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'id': id,
      'name': name,
      'tags': tags,
    };
  }

  factory GetEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeResult(
      devCenterId: map['devCenterId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

