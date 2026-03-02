// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_health_details_response.dart';

/// KPI Resource Health Details
class KPIResourceHealthDetailsResponse {
  /// Resource Health Status
  final pulumi.Input<List<ResourceHealthDetailsResponse>>? resourceHealthDetails;
  /// Resource Health Status
  final pulumi.Input<String>? resourceHealthStatus;

  /// Creates a new [KPIResourceHealthDetailsResponse].
  /// [resourceHealthDetails] Resource Health Status
  /// [resourceHealthStatus] Resource Health Status
  KPIResourceHealthDetailsResponse({
    this.resourceHealthDetails,
    this.resourceHealthStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceHealthDetails': ?pulumi.Input.mapOptionalInputValue<List<ResourceHealthDetailsResponse>, List<Map<String, dynamic>>>(resourceHealthDetails, (value) => pulumi.Input.encodeList<ResourceHealthDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceHealthStatus': ?resourceHealthStatus,
    };
  }

  factory KPIResourceHealthDetailsResponse.fromMap(Map<String, dynamic> map) {
    return KPIResourceHealthDetailsResponse(
      resourceHealthDetails: map['resourceHealthDetails'] == null ? null : (pulumi.Input.decodeList<ResourceHealthDetailsResponse>(map['resourceHealthDetails']!, (value) => ResourceHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceHealthStatus: map['resourceHealthStatus'] == null ? null : (map['resourceHealthStatus']! as String).input(),
    );
  }
}

