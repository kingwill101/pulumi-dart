// ignore_for_file: unused_element, unnecessary_cast

import 'domain_mapping_spec_response.dart';
import 'domain_mapping_status_response.dart';
import 'object_meta_response.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingResult {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  final String? apiVersion;
  /// The kind of resource, in this case "DomainMapping".
  final String? kind;
  /// Metadata associated with this BuildTemplate.
  final ObjectMetaResponse? metadata;
  /// The spec for this DomainMapping.
  final DomainMappingSpecResponse? spec;
  /// The current status of the DomainMapping.
  final DomainMappingStatusResponse? status;

  /// Creates a new [GetDomainMappingResult].
  /// [apiVersion] The API version for this call such as "domains.cloudrun.com/v1".
  /// [kind] The kind of resource, in this case "DomainMapping".
  /// [metadata] Metadata associated with this BuildTemplate.
  /// [spec] The spec for this DomainMapping.
  /// [status] The current status of the DomainMapping.
  const GetDomainMappingResult({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
      'spec': ?spec?.toMap(),
      'status': ?status?.toMap(),
    };
  }

  factory GetDomainMappingResult.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingResult(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return ObjectMetaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return DomainMappingSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return DomainMappingStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
