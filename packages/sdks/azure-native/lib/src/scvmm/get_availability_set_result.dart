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
  const GetAvailabilitySetResult({
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
      'extendedLocation': ?extendedLocation?.toMap(),
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
      availabilitySetName: (() { final guardedValue = map['availabilitySetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

