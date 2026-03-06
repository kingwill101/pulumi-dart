// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// This is used to represent the various nodes of the distributed container.
class DistributedNodesInfoResponse {
  /// Error Details if the Status is non-success.
  final pulumi.Input<ErrorDetailResponse>? errorDetail;
  /// Name of the node under a distributed container.
  final pulumi.Input<String>? nodeName;
  /// ARM resource id of the node
  final pulumi.Input<String>? sourceResourceId;
  /// Status of this Node.
  /// Failed | Succeeded
  final pulumi.Input<String>? status;

  /// Creates a new [DistributedNodesInfoResponse].
  /// [errorDetail] Error Details if the Status is non-success.
  /// [nodeName] Name of the node under a distributed container.
  /// [sourceResourceId] ARM resource id of the node
  /// [status] Status of this Node.
  const DistributedNodesInfoResponse({
    this.errorDetail,
    this.nodeName,
    this.sourceResourceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetail': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetail, (value) => value.toMap()),
      'nodeName': ?nodeName,
      'sourceResourceId': ?sourceResourceId,
      'status': ?status,
    };
  }

  factory DistributedNodesInfoResponse.fromMap(Map<String, dynamic> map) {
    return DistributedNodesInfoResponse(
      errorDetail: (() { final guardedValue = map['errorDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

