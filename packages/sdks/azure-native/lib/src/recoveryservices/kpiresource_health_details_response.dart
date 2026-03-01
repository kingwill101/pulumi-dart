// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_health_details_response.dart';

/// KPI Resource Health Details
class KPIResourceHealthDetailsResponse {
  /// Resource Health Status
  final List<ResourceHealthDetailsResponse>? resourceHealthDetails;
  /// Resource Health Status
  final String? resourceHealthStatus;

  /// Creates a new [KPIResourceHealthDetailsResponse].
  /// [resourceHealthDetails] Resource Health Status
  /// [resourceHealthStatus] Resource Health Status
  KPIResourceHealthDetailsResponse({
    this.resourceHealthDetails,
    this.resourceHealthStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceHealthDetails': ?resourceHealthDetails == null ? null : pulumi.Input.encodeList<ResourceHealthDetailsResponse, Map<String, dynamic>>(resourceHealthDetails!, (value) => value.toMap()),
      'resourceHealthStatus': ?resourceHealthStatus,
    };
  }

  factory KPIResourceHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return KPIResourceHealthDetailsResponse(
      resourceHealthDetails: map['resourceHealthDetails'] == null ? null : pulumi.Input.decodeList<ResourceHealthDetailsResponse>(map['resourceHealthDetails'], (value) => ResourceHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceHealthStatus: map['resourceHealthStatus'] == null ? null : map['resourceHealthStatus'] as String,
    );
  }
}

