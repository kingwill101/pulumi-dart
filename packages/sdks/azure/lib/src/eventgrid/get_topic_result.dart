// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// The Endpoint associated with the EventGrid Topic.
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  /// The Primary Shared Access Key associated with the EventGrid Topic.
  final String primaryAccessKey;
  final String resourceGroupName;
  /// The Secondary Shared Access Key associated with the EventGrid Topic.
  final String secondaryAccessKey;
  final Map<String, String> tags;

  /// Creates a new [GetTopicResult].
  /// [endpoint] The Endpoint associated with the EventGrid Topic.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [primaryAccessKey] The Primary Shared Access Key associated with the EventGrid Topic.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The Secondary Shared Access Key associated with the EventGrid Topic.
  /// [tags] Required.
  const GetTopicResult({
    required this.endpoint,
    required this.id,
    required this.location,
    required this.name,
    required this.primaryAccessKey,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'location': location,
      'name': name,
      'primaryAccessKey': primaryAccessKey,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'tags': tags,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

