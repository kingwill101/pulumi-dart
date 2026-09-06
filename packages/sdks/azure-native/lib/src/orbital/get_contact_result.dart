// ignore_for_file: unused_element, unnecessary_cast

import 'contacts_properties_response_antenna_configuration.dart';
import 'contacts_properties_response_contact_profile.dart';
import 'system_data_response.dart';

/// Result data returned by getContact.
class GetContactResult {
  /// The configuration associated with the allocated antenna.
  final ContactsPropertiesResponseAntennaConfiguration? antennaConfiguration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The reference to the contact profile resource.
  final ContactsPropertiesResponseContactProfile? contactProfile;
  /// Azimuth of the antenna at the end of the contact in decimal degrees.
  final double? endAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact end.
  final double? endElevationDegrees;
  /// Any error message while scheduling a contact.
  final String? errorMessage;
  /// Azure Ground Station name.
  final String? groundStationName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Maximum elevation of the antenna during the contact in decimal degrees.
  final double? maximumElevationDegrees;
  /// The name of the resource
  final String? name;
  /// Reservation end time of a contact (ISO 8601 UTC standard).
  final String? reservationEndTime;
  /// Reservation start time of a contact (ISO 8601 UTC standard).
  final String? reservationStartTime;
  /// Receive end time of a contact (ISO 8601 UTC standard).
  final String? rxEndTime;
  /// Receive start time of a contact (ISO 8601 UTC standard).
  final String? rxStartTime;
  /// Azimuth of the antenna at the start of the contact in decimal degrees.
  final double? startAzimuthDegrees;
  /// Spacecraft elevation above the horizon at contact start.
  final double? startElevationDegrees;
  /// Status of a contact.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Transmit end time of a contact (ISO 8601 UTC standard).
  final String? txEndTime;
  /// Transmit start time of a contact (ISO 8601 UTC standard).
  final String? txStartTime;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetContactResult({
    this.antennaConfiguration,
    this.azureApiVersion,
    this.contactProfile,
    this.endAzimuthDegrees,
    this.endElevationDegrees,
    this.errorMessage,
    this.groundStationName,
    this.id,
    this.maximumElevationDegrees,
    this.name,
    this.reservationEndTime,
    this.reservationStartTime,
    this.rxEndTime,
    this.rxStartTime,
    this.startAzimuthDegrees,
    this.startElevationDegrees,
    this.status,
    this.systemData,
    this.txEndTime,
    this.txStartTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antennaConfiguration': ?antennaConfiguration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'contactProfile': ?contactProfile?.toMap(),
      'endAzimuthDegrees': ?endAzimuthDegrees,
      'endElevationDegrees': ?endElevationDegrees,
      'errorMessage': ?errorMessage,
      'groundStationName': ?groundStationName,
      'id': ?id,
      'maximumElevationDegrees': ?maximumElevationDegrees,
      'name': ?name,
      'reservationEndTime': ?reservationEndTime,
      'reservationStartTime': ?reservationStartTime,
      'rxEndTime': ?rxEndTime,
      'rxStartTime': ?rxStartTime,
      'startAzimuthDegrees': ?startAzimuthDegrees,
      'startElevationDegrees': ?startElevationDegrees,
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'txEndTime': ?txEndTime,
      'txStartTime': ?txStartTime,
      'type': ?type,
    };
  }

  factory GetContactResult.fromMap(Map<String, dynamic> map) {
    return GetContactResult(
      antennaConfiguration: (() { final guardedValue = map['antennaConfiguration']; if (guardedValue == null) return null; return ContactsPropertiesResponseAntennaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactProfile: (() { final guardedValue = map['contactProfile']; if (guardedValue == null) return null; return ContactsPropertiesResponseContactProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endAzimuthDegrees: (() { final guardedValue = map['endAzimuthDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      endElevationDegrees: (() { final guardedValue = map['endElevationDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groundStationName: (() { final guardedValue = map['groundStationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumElevationDegrees: (() { final guardedValue = map['maximumElevationDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationEndTime: (() { final guardedValue = map['reservationEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationStartTime: (() { final guardedValue = map['reservationStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rxEndTime: (() { final guardedValue = map['rxEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rxStartTime: (() { final guardedValue = map['rxStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startAzimuthDegrees: (() { final guardedValue = map['startAzimuthDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      startElevationDegrees: (() { final guardedValue = map['startElevationDegrees']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      txEndTime: (() { final guardedValue = map['txEndTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      txStartTime: (() { final guardedValue = map['txStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
