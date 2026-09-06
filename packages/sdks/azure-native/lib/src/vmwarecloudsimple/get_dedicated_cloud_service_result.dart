// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDedicatedCloudService.
class GetDedicatedCloudServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  final String? gatewaySubnet;
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudServices/{dedicatedCloudServiceName}
  final String? id;
  /// indicates whether account onboarded or not in a given region
  final String? isAccountOnboarded;
  /// Azure region
  final String? location;
  /// {dedicatedCloudServiceName}
  final String? name;
  /// total nodes purchased
  final int? nodes;
  /// link to a service management web portal
  final String? serviceURL;
  /// The list of tags
  final Map<String, String>? tags;
  /// {resourceProviderNamespace}/{resourceType}
  final String? type;

  /// Creates a new [GetDedicatedCloudServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [gatewaySubnet] gateway Subnet for the account. It will collect the subnet address and always treat it as /28
  /// [id] /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudServices/{dedicatedCloudServiceName}
  /// [isAccountOnboarded] indicates whether account onboarded or not in a given region
  /// [location] Azure region
  /// [name] {dedicatedCloudServiceName}
  /// [nodes] total nodes purchased
  /// [serviceURL] link to a service management web portal
  /// [tags] The list of tags
  /// [type] {resourceProviderNamespace}/{resourceType}
  const GetDedicatedCloudServiceResult({
    this.azureApiVersion,
    this.gatewaySubnet,
    this.id,
    this.isAccountOnboarded,
    this.location,
    this.name,
    this.nodes,
    this.serviceURL,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'gatewaySubnet': ?gatewaySubnet,
      'id': ?id,
      'isAccountOnboarded': ?isAccountOnboarded,
      'location': ?location,
      'name': ?name,
      'nodes': ?nodes,
      'serviceURL': ?serviceURL,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDedicatedCloudServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedCloudServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewaySubnet: (() { final guardedValue = map['gatewaySubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAccountOnboarded: (() { final guardedValue = map['isAccountOnboarded']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      serviceURL: (() { final guardedValue = map['serviceURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
