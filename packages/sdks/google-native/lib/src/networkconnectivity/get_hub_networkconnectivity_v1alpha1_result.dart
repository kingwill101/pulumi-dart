// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHub.
class GetHubNetworkconnectivityV1alpha1Result {
  /// Time when the Hub was created.
  final String createTime;
  /// Short description of the hub resource.
  final String description;
  /// User-defined labels.
  final Map<String, String> labels;
  /// Immutable. The name of a Hub resource.
  final String name;
  /// A list of the URIs of all attached spokes. This field is deprecated and will not be included in future API versions. Call ListSpokes on each region instead.
  final List<String> spokes;
  /// The current lifecycle state of this Hub.
  final String state;
  /// Google-generated UUID for this resource. This is unique across all Hub resources. If a Hub resource is deleted and another with the same name is created, it gets a different unique_id.
  final String uniqueId;
  /// Time when the Hub was updated.
  final String updateTime;

  /// Creates a new [GetHubNetworkconnectivityV1alpha1Result].
  /// [createTime] Time when the Hub was created.
  /// [description] Short description of the hub resource.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of a Hub resource.
  /// [spokes] A list of the URIs of all attached spokes. This field is deprecated and will not be included in future API versions. Call ListSpokes on each region instead.
  /// [state] The current lifecycle state of this Hub.
  /// [uniqueId] Google-generated UUID for this resource. This is unique across all Hub resources. If a Hub resource is deleted and another with the same name is created, it gets a different unique_id.
  /// [updateTime] Time when the Hub was updated.
  const GetHubNetworkconnectivityV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.spokes,
    required this.state,
    required this.uniqueId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'labels': labels,
      'name': name,
      'spokes': spokes,
      'state': state,
      'uniqueId': uniqueId,
      'updateTime': updateTime,
    };
  }

  factory GetHubNetworkconnectivityV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetHubNetworkconnectivityV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      spokes: (map['spokes'] as List).cast<String>(),
      state: map['state'] as String,
      uniqueId: map['uniqueId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
