// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDps.
class GetDpsResult {
  /// The allocation policy of the IoT Device Provisioning Service.
  final String? allocationPolicy;
  /// The device endpoint of the IoT Device Provisioning Service.
  final String? deviceProvisioningHostName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The unique identifier of the IoT Device Provisioning Service.
  final String? idScope;
  /// Specifies the supported Azure location where the IoT Device Provisioning Service exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The service endpoint of the IoT Device Provisioning Service.
  final String? serviceOperationsHostName;
  final Map<String, String>? tags;

  /// Creates a new [GetDpsResult].
  /// [allocationPolicy] The allocation policy of the IoT Device Provisioning Service.
  /// [deviceProvisioningHostName] The device endpoint of the IoT Device Provisioning Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idScope] The unique identifier of the IoT Device Provisioning Service.
  /// [location] Specifies the supported Azure location where the IoT Device Provisioning Service exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [serviceOperationsHostName] The service endpoint of the IoT Device Provisioning Service.
  /// [tags] Optional.
  const GetDpsResult({
    this.allocationPolicy,
    this.deviceProvisioningHostName,
    this.id,
    this.idScope,
    this.location,
    this.name,
    this.resourceGroupName,
    this.serviceOperationsHostName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'deviceProvisioningHostName': ?deviceProvisioningHostName,
      'id': ?id,
      'idScope': ?idScope,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serviceOperationsHostName': ?serviceOperationsHostName,
      'tags': ?tags,
    };
  }

  factory GetDpsResult.fromMap(Map<String, dynamic> map) {
    return GetDpsResult(
      allocationPolicy: (() { final guardedValue = map['allocationPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceProvisioningHostName: (() { final guardedValue = map['deviceProvisioningHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idScope: (() { final guardedValue = map['idScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceOperationsHostName: (() { final guardedValue = map['serviceOperationsHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
