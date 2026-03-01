// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainTopic.
class GetDomainTopicResult {
  /// The EventGrid Domain Topic Domain name.
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;

  /// Creates a new [GetDomainTopicResult].
  /// [domainName] The EventGrid Domain Topic Domain name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  GetDomainTopicResult({
    required this.domainName,
    required this.id,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainTopicResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicResult(
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

