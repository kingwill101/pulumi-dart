// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDps.
class GetDpsResult {
  /// The allocation policy of the IoT Device Provisioning Service.
  final String allocationPolicy;
  /// The device endpoint of the IoT Device Provisioning Service.
  final String deviceProvisioningHostName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The unique identifier of the IoT Device Provisioning Service.
  final String idScope;
  /// Specifies the supported Azure location where the IoT Device Provisioning Service exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The service endpoint of the IoT Device Provisioning Service.
  final String serviceOperationsHostName;
  final Map<String, String>? tags;

  /// Creates a new [GetDpsResult].
  /// [allocationPolicy] The allocation policy of the IoT Device Provisioning Service.
  /// [deviceProvisioningHostName] The device endpoint of the IoT Device Provisioning Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idScope] The unique identifier of the IoT Device Provisioning Service.
  /// [location] Specifies the supported Azure location where the IoT Device Provisioning Service exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [serviceOperationsHostName] The service endpoint of the IoT Device Provisioning Service.
  /// [tags] Optional.
  const GetDpsResult({
    required this.allocationPolicy,
    required this.deviceProvisioningHostName,
    required this.id,
    required this.idScope,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.serviceOperationsHostName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': allocationPolicy,
      'deviceProvisioningHostName': deviceProvisioningHostName,
      'id': id,
      'idScope': idScope,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serviceOperationsHostName': serviceOperationsHostName,
      'tags': ?tags,
    };
  }

  factory GetDpsResult.fromMap(Map<String, dynamic> map) {
    return GetDpsResult(
      allocationPolicy: map['allocationPolicy'] as String,
      deviceProvisioningHostName: map['deviceProvisioningHostName'] as String,
      id: map['id'] as String,
      idScope: map['idScope'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceOperationsHostName: map['serviceOperationsHostName'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
