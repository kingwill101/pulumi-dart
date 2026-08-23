// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogView.
class GetLogViewResult {
  final String bucket;
  final String createTime;
  final String deletionPolicy;
  final String description;
  final String filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String parent;
  final String updateTime;

  /// Creates a new [GetLogViewResult].
  /// [bucket] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [parent] Required.
  /// [updateTime] Required.
  const GetLogViewResult({
    required this.bucket,
    required this.createTime,
    required this.deletionPolicy,
    required this.description,
    required this.filter,
    required this.id,
    required this.location,
    required this.name,
    required this.parent,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'filter': filter,
      'id': id,
      'location': location,
      'name': name,
      'parent': parent,
      'updateTime': updateTime,
    };
  }

  factory GetLogViewResult.fromMap(Map<String, dynamic> map) {
    return GetLogViewResult(
      bucket: map['bucket'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      filter: map['filter'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
