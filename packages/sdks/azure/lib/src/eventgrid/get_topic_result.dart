// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// The Endpoint associated with the EventGrid Topic.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  /// The Primary Shared Access Key associated with the EventGrid Topic.
  final String? primaryAccessKey;
  final String? resourceGroupName;
  /// The Secondary Shared Access Key associated with the EventGrid Topic.
  final String? secondaryAccessKey;
  final Map<String, String>? tags;

  /// Creates a new [GetTopicResult].
  /// [endpoint] The Endpoint associated with the EventGrid Topic.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [primaryAccessKey] The Primary Shared Access Key associated with the EventGrid Topic.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The Secondary Shared Access Key associated with the EventGrid Topic.
  /// [tags] Optional.
  const GetTopicResult({
    this.endpoint,
    this.id,
    this.location,
    this.name,
    this.primaryAccessKey,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'tags': ?tags,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
