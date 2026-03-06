// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApi.
class GetApiResult {
  /// Created time.
  final String createTime;
  /// Optional. Display name.
  final String displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;
  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  final String managedService;
  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  final String name;
  /// State of the API.
  final String state;
  /// Updated time.
  final String updateTime;

  /// Creates a new [GetApiResult].
  /// [createTime] Created time.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [managedService] Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  /// [name] Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  /// [state] State of the API.
  /// [updateTime] Updated time.
  const GetApiResult({
    required this.createTime,
    required this.displayName,
    required this.labels,
    required this.managedService,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'labels': labels,
      'managedService': managedService,
      'name': name,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      managedService: map['managedService'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

