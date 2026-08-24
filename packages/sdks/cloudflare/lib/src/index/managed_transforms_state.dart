// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_transforms_managed_request_header.dart';
import 'managed_transforms_managed_response_header.dart';

/// Input properties used for looking up and filtering ManagedTransforms resources.
class ManagedTransformsState {
  /// The list of Managed Request Transforms.
  final pulumi.Input<List<ManagedTransformsManagedRequestHeader>?>? managedRequestHeaders;
  /// The list of Managed Response Transforms.
  final pulumi.Input<List<ManagedTransformsManagedResponseHeader>?>? managedResponseHeaders;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ManagedTransformsState].
  /// [managedRequestHeaders] The list of Managed Request Transforms.
  /// [managedResponseHeaders] The list of Managed Response Transforms.
  /// [zoneId] The unique ID of the zone.
  const ManagedTransformsState({
    this.managedRequestHeaders,
    this.managedResponseHeaders,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<ManagedTransformsManagedRequestHeader>, List<Map<String, dynamic>>>(managedRequestHeaders, (value) => pulumi.Input.encodeList<ManagedTransformsManagedRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResponseHeaders': ?pulumi.Input.mapOptionalInputValue<List<ManagedTransformsManagedResponseHeader>, List<Map<String, dynamic>>>(managedResponseHeaders, (value) => pulumi.Input.encodeList<ManagedTransformsManagedResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ManagedTransformsState.fromMap(Map<String, dynamic> map) {
    return ManagedTransformsState(
      managedRequestHeaders: (() { final guardedValue = map['managedRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedTransformsManagedRequestHeader>(guardedValue, (value) => ManagedTransformsManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResponseHeaders: (() { final guardedValue = map['managedResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedTransformsManagedResponseHeader>(guardedValue, (value) => ManagedTransformsManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
