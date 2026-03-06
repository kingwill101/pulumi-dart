// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppHostNameBindingSlot.
class GetWebAppHostNameBindingSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource name.
  final String? azureResourceName;
  /// Azure resource type.
  final String? azureResourceType;
  /// Custom DNS record type.
  final String? customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  final String? domainId;
  /// Hostname type.
  final String? hostNameType;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// App Service app name.
  final String? siteName;
  /// SSL type
  final String? sslState;
  /// SSL certificate thumbprint
  final String? thumbprint;
  /// Resource type.
  final String type;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  final String virtualIP;

  /// Creates a new [GetWebAppHostNameBindingSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureResourceName] Azure resource name.
  /// [azureResourceType] Azure resource type.
  /// [customHostNameDnsRecordType] Custom DNS record type.
  /// [domainId] Fully qualified ARM domain resource URI.
  /// [hostNameType] Hostname type.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [siteName] App Service app name.
  /// [sslState] SSL type
  /// [thumbprint] SSL certificate thumbprint
  /// [type] Resource type.
  /// [virtualIP] Virtual IP address assigned to the hostname if IP based SSL is enabled.
  const GetWebAppHostNameBindingSlotResult({
    required this.azureApiVersion,
    this.azureResourceName,
    this.azureResourceType,
    this.customHostNameDnsRecordType,
    this.domainId,
    this.hostNameType,
    required this.id,
    this.kind,
    required this.name,
    this.siteName,
    this.sslState,
    this.thumbprint,
    required this.type,
    required this.virtualIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?azureResourceType,
      'customHostNameDnsRecordType': ?customHostNameDnsRecordType,
      'domainId': ?domainId,
      'hostNameType': ?hostNameType,
      'id': id,
      'kind': ?kind,
      'name': name,
      'siteName': ?siteName,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
      'type': type,
      'virtualIP': virtualIP,
    };
  }

  factory GetWebAppHostNameBindingSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureResourceName: (() { final guardedValue = map['azureResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureResourceType: (() { final guardedValue = map['azureResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customHostNameDnsRecordType: (() { final guardedValue = map['customHostNameDnsRecordType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostNameType: (() { final guardedValue = map['hostNameType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      virtualIP: map['virtualIP'] as String,
    );
  }
}

