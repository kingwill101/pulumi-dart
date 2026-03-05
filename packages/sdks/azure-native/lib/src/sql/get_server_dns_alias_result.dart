// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getServerDnsAlias.
class GetServerDnsAliasResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The fully qualified DNS record for alias
  final String azureDnsRecord;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// Resource type.
  final String type;

  /// Creates a new [GetServerDnsAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsRecord] The fully qualified DNS record for alias
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  GetServerDnsAliasResult({
    required this.azureApiVersion,
    required this.azureDnsRecord,
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureDnsRecord': azureDnsRecord,
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetServerDnsAliasResult.fromMap(Map<String, dynamic> map) {
    return GetServerDnsAliasResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureDnsRecord: map['azureDnsRecord'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
