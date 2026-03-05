// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_organizational_data_member.dart';
import 'gcp_project_details.dart';

/// The GCP project connector environment data
class GcpProjectEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'GcpProject'.
  final pulumi.Input<String> environmentType;
  /// The Gcp project's organizational data
  final pulumi.Input<GcpOrganizationalDataMember>? organizationalData;
  /// The Gcp project's details
  final pulumi.Input<GcpProjectDetails>? projectDetails;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double>? scanInterval;

  /// Creates a new [GcpProjectEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The Gcp project's organizational data
  /// [projectDetails] The Gcp project's details
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  GcpProjectEnvironmentData({
    required this.environmentType,
    this.organizationalData,
    this.projectDetails,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'organizationalData': ?pulumi.Input.mapOptionalInputValue<GcpOrganizationalDataMember, Map<String, dynamic>>(organizationalData, (value) => value.toMap()),
      'projectDetails': ?pulumi.Input.mapOptionalInputValue<GcpProjectDetails, Map<String, dynamic>>(projectDetails, (value) => value.toMap()),
      'scanInterval': ?scanInterval,
    };
  }

  factory GcpProjectEnvironmentData.fromMap(Map<String, dynamic> map) {
    return GcpProjectEnvironmentData(
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      organizationalData: (() { final guardedValue = map['organizationalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpOrganizationalDataMember.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectDetails: (() { final guardedValue = map['projectDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcpProjectDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

