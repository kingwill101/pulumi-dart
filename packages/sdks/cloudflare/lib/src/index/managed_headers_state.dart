// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_headers_managed_request_header.dart';
import 'managed_headers_managed_response_header.dart';

/// Input properties used for looking up and filtering ManagedHeaders resources.
class ManagedHeadersState {
  /// The list of Managed Request Transforms.
  final pulumi.Input<List<ManagedHeadersManagedRequestHeader>?>? managedRequestHeaders;
  /// The list of Managed Response Transforms.
  final pulumi.Input<List<ManagedHeadersManagedResponseHeader>?>? managedResponseHeaders;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ManagedHeadersState].
  /// [managedRequestHeaders] The list of Managed Request Transforms.
  /// [managedResponseHeaders] The list of Managed Response Transforms.
  /// [zoneId] The unique ID of the zone.
  const ManagedHeadersState({
    this.managedRequestHeaders,
    this.managedResponseHeaders,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRequestHeaders': ?pulumi.Input.mapOptionalInputValue<List<ManagedHeadersManagedRequestHeader>, List<Map<String, dynamic>>>(managedRequestHeaders, (value) => pulumi.Input.encodeList<ManagedHeadersManagedRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedResponseHeaders': ?pulumi.Input.mapOptionalInputValue<List<ManagedHeadersManagedResponseHeader>, List<Map<String, dynamic>>>(managedResponseHeaders, (value) => pulumi.Input.encodeList<ManagedHeadersManagedResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ManagedHeadersState.fromMap(Map<String, dynamic> map) {
    return ManagedHeadersState(
      managedRequestHeaders: (() { final guardedValue = map['managedRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedHeadersManagedRequestHeader>(guardedValue, (value) => ManagedHeadersManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedResponseHeaders: (() { final guardedValue = map['managedResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedHeadersManagedResponseHeader>(guardedValue, (value) => ManagedHeadersManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
