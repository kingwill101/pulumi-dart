// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_operation_detail_response.dart';

class ResourceGuardProxyBaseResponse {
  final String? description;
  final String? lastUpdatedTime;
  final List<ResourceGuardOperationDetailResponse>? resourceGuardOperationDetails;
  final String resourceGuardResourceId;

  /// Creates a new [ResourceGuardProxyBaseResponse].
  /// [description] Optional.
  /// [lastUpdatedTime] Optional.
  /// [resourceGuardOperationDetails] Optional.
  /// [resourceGuardResourceId] Required.
  ResourceGuardProxyBaseResponse({
    this.description,
    this.lastUpdatedTime,
    this.resourceGuardOperationDetails,
    required this.resourceGuardResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'lastUpdatedTime': ?lastUpdatedTime,
      'resourceGuardOperationDetails': ?resourceGuardOperationDetails == null ? null : pulumi.Input.encodeList<ResourceGuardOperationDetailResponse, Map<String, dynamic>>(resourceGuardOperationDetails!, (value) => value.toMap()),
      'resourceGuardResourceId': resourceGuardResourceId,
    };
  }

  factory ResourceGuardProxyBaseResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyBaseResponse(
      description: map['description'] == null ? null : map['description'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      resourceGuardOperationDetails: map['resourceGuardOperationDetails'] == null ? null : pulumi.Input.decodeList<ResourceGuardOperationDetailResponse>(map['resourceGuardOperationDetails'], (value) => ResourceGuardOperationDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuardResourceId: map['resourceGuardResourceId'] as String,
    );
  }
}

