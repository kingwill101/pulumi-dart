// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_resolver_response.dart';

/// Result data returned by getEkmConnection.
class GetEkmConnectionResult {
  /// The time at which the EkmConnection was created.
  final String? createTime;
  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  final String? cryptoSpacePath;
  /// Optional. Etag of the currently stored EkmConnection.
  final String? etag;
  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  final String? keyManagementMode;
  /// The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
  final String? name;
  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  final List<ServiceResolverResponse>? serviceResolvers;

  /// Creates a new [GetEkmConnectionResult].
  /// [createTime] The time at which the EkmConnection was created.
  /// [cryptoSpacePath] Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  /// [etag] Optional. Etag of the currently stored EkmConnection.
  /// [keyManagementMode] Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  /// [name] The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
  /// [serviceResolvers] A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  const GetEkmConnectionResult({
    this.createTime,
    this.cryptoSpacePath,
    this.etag,
    this.keyManagementMode,
    this.name,
    this.serviceResolvers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'cryptoSpacePath': ?cryptoSpacePath,
      'etag': ?etag,
      'keyManagementMode': ?keyManagementMode,
      'name': ?name,
      'serviceResolvers': ?(() { final guardedValue = serviceResolvers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ServiceResolverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEkmConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoSpacePath: (() { final guardedValue = map['cryptoSpacePath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyManagementMode: (() { final guardedValue = map['keyManagementMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceResolvers: (() { final guardedValue = map['serviceResolvers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceResolverResponse>(guardedValue, (value) => ServiceResolverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
