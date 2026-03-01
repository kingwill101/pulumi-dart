// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppHostNameBinding.
class GetWebAppHostNameBindingResult {
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

  /// Creates a new [GetWebAppHostNameBindingResult].
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
  GetWebAppHostNameBindingResult({
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

  factory GetWebAppHostNameBindingResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureResourceName: map['azureResourceName'] == null ? null : map['azureResourceName'] as String,
      azureResourceType: map['azureResourceType'] == null ? null : map['azureResourceType'] as String,
      customHostNameDnsRecordType: map['customHostNameDnsRecordType'] == null ? null : map['customHostNameDnsRecordType'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      hostNameType: map['hostNameType'] == null ? null : map['hostNameType'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
      sslState: map['sslState'] == null ? null : map['sslState'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
      type: map['type'] as String,
      virtualIP: map['virtualIP'] as String,
    );
  }
}

