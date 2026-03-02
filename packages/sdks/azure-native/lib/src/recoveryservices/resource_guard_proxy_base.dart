// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_operation_detail.dart';

class ResourceGuardProxyBase {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? lastUpdatedTime;
  final pulumi.Input<List<ResourceGuardOperationDetail>>? resourceGuardOperationDetails;
  final pulumi.Input<String> resourceGuardResourceId;

  /// Creates a new [ResourceGuardProxyBase].
  /// [description] Optional.
  /// [lastUpdatedTime] Optional.
  /// [resourceGuardOperationDetails] Optional.
  /// [resourceGuardResourceId] Required.
  ResourceGuardProxyBase({
    this.description,
    this.lastUpdatedTime,
    this.resourceGuardOperationDetails,
    required this.resourceGuardResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'lastUpdatedTime': ?lastUpdatedTime,
      'resourceGuardOperationDetails': ?pulumi.Input.mapOptionalInputValue<List<ResourceGuardOperationDetail>, List<Map<String, dynamic>>>(resourceGuardOperationDetails, (value) => pulumi.Input.encodeList<ResourceGuardOperationDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGuardResourceId': resourceGuardResourceId,
    };
  }

  factory ResourceGuardProxyBase.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyBase(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : (map['lastUpdatedTime'] as String).input(),
      resourceGuardOperationDetails: map['resourceGuardOperationDetails'] == null ? null : (pulumi.Input.decodeList<ResourceGuardOperationDetail>(map['resourceGuardOperationDetails'], (value) => ResourceGuardOperationDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGuardResourceId: (map['resourceGuardResourceId'] as String).input(),
    );
  }
}

