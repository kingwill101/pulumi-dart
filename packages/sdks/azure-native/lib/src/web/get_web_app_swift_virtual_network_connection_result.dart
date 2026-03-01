// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppSwiftVirtualNetworkConnection.
class GetWebAppSwiftVirtualNetworkConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  final String? subnetResourceId;
  /// A flag that specifies if the scale unit this Web App is on supports Swift integration.
  final bool? swiftSupported;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppSwiftVirtualNetworkConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [subnetResourceId] The Virtual Network subnet's resource ID. This is the subnet that this Web App will join. This subnet must have a delegation to Microsoft.Web/serverFarms defined first.
  /// [swiftSupported] A flag that specifies if the scale unit this Web App is on supports Swift integration.
  /// [type] Resource type.
  GetWebAppSwiftVirtualNetworkConnectionResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.name,
    this.subnetResourceId,
    this.swiftSupported,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'name': name,
      'subnetResourceId': ?subnetResourceId,
      'swiftSupported': ?swiftSupported,
      'type': type,
    };
  }

  factory GetWebAppSwiftVirtualNetworkConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSwiftVirtualNetworkConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
      swiftSupported: map['swiftSupported'] == null ? null : map['swiftSupported'] as bool,
      type: map['type'] as String,
    );
  }
}

