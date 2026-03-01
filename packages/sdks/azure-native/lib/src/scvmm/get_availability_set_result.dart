// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAvailabilitySet.
class GetAvailabilitySetResult {
  /// Name of the availability set.
  final String? availabilitySetName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource Id
  final String id;
  /// Gets or sets the location.
  final String? location;
  /// Resource Name
  final String name;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// The system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String type;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [GetAvailabilitySetResult].
  /// [availabilitySetName] Name of the availability set.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extended location.
  /// [id] Resource Id
  /// [location] Gets or sets the location.
  /// [name] Resource Name
  /// [provisioningState] Gets or sets the provisioning state.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  GetAvailabilitySetResult({
    this.availabilitySetName,
    required this.azureApiVersion,
    this.extendedLocation,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetAvailabilitySetResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilitySetResult(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vmmServerId: map['vmmServerId'] == null ? null : map['vmmServerId'] as String,
    );
  }
}

