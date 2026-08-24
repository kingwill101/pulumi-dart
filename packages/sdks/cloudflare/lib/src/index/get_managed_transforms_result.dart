// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_transforms_managed_request_header.dart';
import 'get_managed_transforms_managed_response_header.dart';

/// Result data returned by getManagedTransforms.
class GetManagedTransformsResult {
  /// The unique ID of the zone.
  final String? id;
  /// The list of Managed Request Transforms.
  final List<GetManagedTransformsManagedRequestHeader>? managedRequestHeaders;
  /// The list of Managed Response Transforms.
  final List<GetManagedTransformsManagedResponseHeader>? managedResponseHeaders;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetManagedTransformsResult].
  /// [id] The unique ID of the zone.
  /// [managedRequestHeaders] The list of Managed Request Transforms.
  /// [managedResponseHeaders] The list of Managed Response Transforms.
  /// [zoneId] The unique ID of the zone.
  const GetManagedTransformsResult({
    this.id,
    this.managedRequestHeaders,
    this.managedResponseHeaders,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'managedRequestHeaders': ?(() { final guardedValue = managedRequestHeaders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedTransformsManagedRequestHeader, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedResponseHeaders': ?(() { final guardedValue = managedResponseHeaders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedTransformsManagedResponseHeader, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetManagedTransformsResult.fromMap(Map<String, dynamic> map) {
    return GetManagedTransformsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRequestHeaders: (() { final guardedValue = map['managedRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedTransformsManagedRequestHeader>(guardedValue, (value) => GetManagedTransformsManagedRequestHeader.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedResponseHeaders: (() { final guardedValue = map['managedResponseHeaders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedTransformsManagedResponseHeader>(guardedValue, (value) => GetManagedTransformsManagedResponseHeader.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
