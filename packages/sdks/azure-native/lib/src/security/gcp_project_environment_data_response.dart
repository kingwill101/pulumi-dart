// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_project_details_response.dart';

/// The GCP project connector environment data
class GcpProjectEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'GcpProject'.
  final pulumi.Input<String> environmentType;
  /// The Gcp project's organizational data
  final pulumi.Input<dynamic>? organizationalData;
  /// The Gcp project's details
  final pulumi.Input<GcpProjectDetailsResponse?>? projectDetails;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double?>? scanInterval;

  /// Creates a new [GcpProjectEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The Gcp project's organizational data
  /// [projectDetails] The Gcp project's details
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  const GcpProjectEnvironmentDataResponse({
    required this.environmentType,
    this.organizationalData,
    this.projectDetails,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'organizationalData': ?organizationalData,
      'projectDetails': ?pulumi.Input.mapOptionalInputValue<GcpProjectDetailsResponse, Map<String, dynamic>>(projectDetails, (value) => value.toMap()),
      'scanInterval': ?scanInterval,
    };
  }

  factory GcpProjectEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return GcpProjectEnvironmentDataResponse(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      organizationalData: (() { final guardedValue = map['organizationalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      projectDetails: (() { final guardedValue = map['projectDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpProjectDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
