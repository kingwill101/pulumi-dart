// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHub.
class GetHubNetworkconnectivityV1alpha1Result {
  /// Time when the Hub was created.
  final String? createTime;
  /// Short description of the hub resource.
  final String? description;
  /// User-defined labels.
  final Map<String, String>? labels;
  /// Immutable. The name of a Hub resource.
  final String? name;
  /// A list of the URIs of all attached spokes. This field is deprecated and will not be included in future API versions. Call ListSpokes on each region instead.
  final List<String>? spokes;
  /// The current lifecycle state of this Hub.
  final String? state;
  /// Google-generated UUID for this resource. This is unique across all Hub resources. If a Hub resource is deleted and another with the same name is created, it gets a different unique_id.
  final String? uniqueId;
  /// Time when the Hub was updated.
  final String? updateTime;

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
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.spokes,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'spokes': ?spokes,
      'state': ?state,
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory GetHubNetworkconnectivityV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetHubNetworkconnectivityV1alpha1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spokes: (() { final guardedValue = map['spokes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
