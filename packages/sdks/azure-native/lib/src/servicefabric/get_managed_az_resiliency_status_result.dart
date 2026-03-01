// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_az_status_response.dart';

/// Result data returned by getManagedAzResiliencyStatus.
class GetManagedAzResiliencyStatusResult {
  /// List of Managed VM Sizes for Service Fabric Managed Clusters.
  final List<ResourceAzStatusResponse>? baseResourceStatus;
  /// URL to get the next set of Managed VM Sizes if there are any.
  final bool isClusterZoneResilient;

  /// Creates a new [GetManagedAzResiliencyStatusResult].
  /// [baseResourceStatus] List of Managed VM Sizes for Service Fabric Managed Clusters.
  /// [isClusterZoneResilient] URL to get the next set of Managed VM Sizes if there are any.
  GetManagedAzResiliencyStatusResult({
    this.baseResourceStatus,
    required this.isClusterZoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseResourceStatus': ?baseResourceStatus == null ? null : pulumi.Input.encodeList<ResourceAzStatusResponse, Map<String, dynamic>>(baseResourceStatus!, (value) => value.toMap()),
      'isClusterZoneResilient': isClusterZoneResilient,
    };
  }

  factory GetManagedAzResiliencyStatusResult.fromMap(Map<String, dynamic> map) {
    return GetManagedAzResiliencyStatusResult(
      baseResourceStatus: map['baseResourceStatus'] == null ? null : pulumi.Input.decodeList<ResourceAzStatusResponse>(map['baseResourceStatus'], (value) => ResourceAzStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      isClusterZoneResilient: map['isClusterZoneResilient'] as bool,
    );
  }
}

