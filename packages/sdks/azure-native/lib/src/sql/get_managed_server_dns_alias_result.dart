// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedServerDnsAlias.
class GetManagedServerDnsAliasResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The fully qualified DNS record for managed server alias
  final String azureDnsRecord;

  /// Resource ID.
  final String id;

  /// Resource name.
  final String name;

  /// The fully qualified public DNS record for managed server alias
  final String publicAzureDnsRecord;

  /// Resource type.
  final String type;

  /// Creates a new [GetManagedServerDnsAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsRecord] The fully qualified DNS record for managed server alias
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [publicAzureDnsRecord] The fully qualified public DNS record for managed server alias
  /// [type] Resource type.
  GetManagedServerDnsAliasResult({
    required this.azureApiVersion,
    required this.azureDnsRecord,
    required this.id,
    required this.name,
    required this.publicAzureDnsRecord,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureDnsRecord': azureDnsRecord,
      'id': id,
      'name': name,
      'publicAzureDnsRecord': publicAzureDnsRecord,
      'type': type,
    };
  }

  factory GetManagedServerDnsAliasResult.fromMap(Map<String, dynamic> map) {
    return GetManagedServerDnsAliasResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureDnsRecord: map['azureDnsRecord'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      publicAzureDnsRecord: map['publicAzureDnsRecord'] as String,
      type: map['type'] as String,
    );
  }
}
