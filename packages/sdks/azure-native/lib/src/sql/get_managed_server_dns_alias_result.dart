// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedServerDnsAlias.
class GetManagedServerDnsAliasResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The fully qualified DNS record for managed server alias
  final String? azureDnsRecord;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The fully qualified public DNS record for managed server alias
  final String? publicAzureDnsRecord;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagedServerDnsAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsRecord] The fully qualified DNS record for managed server alias
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [publicAzureDnsRecord] The fully qualified public DNS record for managed server alias
  /// [type] Resource type.
  const GetManagedServerDnsAliasResult({
    this.azureApiVersion,
    this.azureDnsRecord,
    this.id,
    this.name,
    this.publicAzureDnsRecord,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureDnsRecord': ?azureDnsRecord,
      'id': ?id,
      'name': ?name,
      'publicAzureDnsRecord': ?publicAzureDnsRecord,
      'type': ?type,
    };
  }

  factory GetManagedServerDnsAliasResult.fromMap(Map<String, dynamic> map) {
    return GetManagedServerDnsAliasResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureDnsRecord: (() { final guardedValue = map['azureDnsRecord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicAzureDnsRecord: (() { final guardedValue = map['publicAzureDnsRecord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
