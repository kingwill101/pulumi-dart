// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppDomainOwnershipIdentifierSlot.
class GetWebAppDomainOwnershipIdentifierSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;
  /// String representation of the identity.
  final String? value;

  /// Creates a new [GetWebAppDomainOwnershipIdentifierSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  /// [value] String representation of the identity.
  GetWebAppDomainOwnershipIdentifierSlotResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory GetWebAppDomainOwnershipIdentifierSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDomainOwnershipIdentifierSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

