// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWebAppDomainOwnershipIdentifier.
class GetWebAppDomainOwnershipIdentifierResult {
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

  /// Creates a new [GetWebAppDomainOwnershipIdentifierResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  /// [value] String representation of the identity.
  GetWebAppDomainOwnershipIdentifierResult({
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

  factory GetWebAppDomainOwnershipIdentifierResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWebAppDomainOwnershipIdentifierResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      type: map['type'] as String,
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
