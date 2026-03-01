// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplication.
class GetApplicationResult {
  /// A list of host IDs associated with the application.
  final List<String> hostIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of instance IDs associated with the application.
  final List<String> instanceIds;
  final String name;

  /// Creates a new [GetApplicationResult].
  /// [hostIds] A list of host IDs associated with the application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceIds] A list of instance IDs associated with the application.
  /// [name] Required.
  GetApplicationResult({
    required this.hostIds,
    required this.id,
    required this.instanceIds,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostIds': hostIds,
      'id': id,
      'instanceIds': instanceIds,
      'name': name,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      hostIds: (map['hostIds'] as List).cast<String>(),
      id: map['id'] as String,
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

