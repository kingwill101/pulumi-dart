// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerDnsAlias.
class GetServerDnsAliasResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The fully qualified DNS record for alias
  final String? azureDnsRecord;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerDnsAliasResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureDnsRecord] The fully qualified DNS record for alias
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  const GetServerDnsAliasResult({
    this.azureApiVersion,
    this.azureDnsRecord,
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureDnsRecord': ?azureDnsRecord,
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetServerDnsAliasResult.fromMap(Map<String, dynamic> map) {
    return GetServerDnsAliasResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureDnsRecord: (() { final guardedValue = map['azureDnsRecord']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
