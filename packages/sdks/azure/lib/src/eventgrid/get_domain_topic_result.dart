// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainTopic.
class GetDomainTopicResult {
  /// The EventGrid Domain Topic Domain name.
  final String? domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;

  /// Creates a new [GetDomainTopicResult].
  /// [domainName] The EventGrid Domain Topic Domain name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  const GetDomainTopicResult({
    this.domainName,
    this.id,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetDomainTopicResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicResult(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
