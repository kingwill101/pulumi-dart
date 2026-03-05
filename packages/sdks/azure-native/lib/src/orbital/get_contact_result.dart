// ignore_for_file: unused_element, unnecessary_cast

import 'contacts_properties_response_antenna_configuration.dart';
import 'contacts_properties_response_contact_profile.dart';
import 'system_data_response.dart';

/// Result data returned by getContact.
class GetContactResult {
  /// The configuration associated with the allocated antenna.
  final ContactsPropertiesResponseAntennaConfiguration antennaConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The reference to the contact profile resource.
  final ContactsPropertiesResponseContactProfile contactProfile;
  /// Azimuth of the antenna at the end of the contact in decimal degrees.
  final double endAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact end.
  final double endElevationDegrees;
  /// Any error message while scheduling a contact.
  final String errorMessage;
  /// Azure Ground Station name.
  final String groundStationName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  final double maximumElevationDegrees;
  /// The name of the resource
  final String name;
  /// Reservation end time of a contact (ISO 8601 UTC standard).
  final String reservationEndTime;
  /// Reservation start time of a contact (ISO 8601 UTC standard).
  final String reservationStartTime;
  /// Receive end time of a contact (ISO 8601 UTC standard).
  final String rxEndTime;
  /// Receive start time of a contact (ISO 8601 UTC standard).
  final String rxStartTime;
  /// Azimuth of the antenna at the start of the contact in decimal degrees.
  final double startAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact start.
  final double startElevationDegrees;
  /// Status of a contact.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Transmit end time of a contact (ISO 8601 UTC standard).
  final String txEndTime;
  /// Transmit start time of a contact (ISO 8601 UTC standard).
  final String txStartTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetContactResult].
  /// [antennaConfiguration] The configuration associated with the allocated antenna.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contactProfile] The reference to the contact profile resource.
  /// [endAzimuthDegrees] Azimuth of the antenna at the end of the contact in decimal degrees.
  /// [endElevationDegrees] Spacecraft elevation above the horizon at contact end.
  /// [errorMessage] Any error message while scheduling a contact.
  /// [groundStationName] Azure Ground Station name.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [maximumElevationDegrees] Maximum elevation of the antenna during the contact in decimal degrees.
  /// [name] The name of the resource
  /// [reservationEndTime] Reservation end time of a contact (ISO 8601 UTC standard).
  /// [reservationStartTime] Reservation start time of a contact (ISO 8601 UTC standard).
  /// [rxEndTime] Receive end time of a contact (ISO 8601 UTC standard).
  /// [rxStartTime] Receive start time of a contact (ISO 8601 UTC standard).
  /// [startAzimuthDegrees] Azimuth of the antenna at the start of the contact in decimal degrees.
  /// [startElevationDegrees] Spacecraft elevation above the horizon at contact start.
  /// [status] Status of a contact.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [txEndTime] Transmit end time of a contact (ISO 8601 UTC standard).
  /// [txStartTime] Transmit start time of a contact (ISO 8601 UTC standard).
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetContactResult({
    required this.antennaConfiguration,
    required this.azureApiVersion,
    required this.contactProfile,
    required this.endAzimuthDegrees,
    required this.endElevationDegrees,
    required this.errorMessage,
    required this.groundStationName,
    required this.id,
    required this.maximumElevationDegrees,
    required this.name,
    required this.reservationEndTime,
    required this.reservationStartTime,
    required this.rxEndTime,
    required this.rxStartTime,
    required this.startAzimuthDegrees,
    required this.startElevationDegrees,
    required this.status,
    required this.systemData,
    required this.txEndTime,
    required this.txStartTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antennaConfiguration': antennaConfiguration.toMap(),
      'azureApiVersion': azureApiVersion,
      'contactProfile': contactProfile.toMap(),
      'endAzimuthDegrees': endAzimuthDegrees,
      'endElevationDegrees': endElevationDegrees,
      'errorMessage': errorMessage,
      'groundStationName': groundStationName,
      'id': id,
      'maximumElevationDegrees': maximumElevationDegrees,
      'name': name,
      'reservationEndTime': reservationEndTime,
      'reservationStartTime': reservationStartTime,
      'rxEndTime': rxEndTime,
      'rxStartTime': rxStartTime,
      'startAzimuthDegrees': startAzimuthDegrees,
      'startElevationDegrees': startElevationDegrees,
      'status': status,
      'systemData': systemData.toMap(),
      'txEndTime': txEndTime,
      'txStartTime': txStartTime,
      'type': type,
    };
  }

  factory GetContactResult.fromMap(Map<String, dynamic> map) {
    return GetContactResult(
      antennaConfiguration: ContactsPropertiesResponseAntennaConfiguration.fromMap((map['antennaConfiguration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      contactProfile: ContactsPropertiesResponseContactProfile.fromMap((map['contactProfile']! as Map).cast<String, dynamic>()),
      endAzimuthDegrees: map['endAzimuthDegrees'] as double,
      endElevationDegrees: map['endElevationDegrees'] as double,
      errorMessage: map['errorMessage'] as String,
      groundStationName: map['groundStationName'] as String,
      id: map['id'] as String,
      maximumElevationDegrees: map['maximumElevationDegrees'] as double,
      name: map['name'] as String,
      reservationEndTime: map['reservationEndTime'] as String,
      reservationStartTime: map['reservationStartTime'] as String,
      rxEndTime: map['rxEndTime'] as String,
      rxStartTime: map['rxStartTime'] as String,
      startAzimuthDegrees: map['startAzimuthDegrees'] as double,
      startElevationDegrees: map['startElevationDegrees'] as double,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      txEndTime: map['txEndTime'] as String,
      txStartTime: map['txStartTime'] as String,
      type: map['type'] as String,
    );
  }
}

