// ignore_for_file: unused_element, unnecessary_cast

import 'domain_mapping_spec_response.dart';
import 'domain_mapping_status_response.dart';
import 'object_meta_response.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingResult {
  /// The API version for this call such as "domains.cloudrun.com/v1".
  final String apiVersion;
  /// The kind of resource, in this case "DomainMapping".
  final String kind;
  /// Metadata associated with this BuildTemplate.
  final ObjectMetaResponse metadata;
  /// The spec for this DomainMapping.
  final DomainMappingSpecResponse spec;
  /// The current status of the DomainMapping.
  final DomainMappingStatusResponse status;

  /// Creates a new [GetDomainMappingResult].
  /// [apiVersion] The API version for this call such as "domains.cloudrun.com/v1".
  /// [kind] The kind of resource, in this case "DomainMapping".
  /// [metadata] Metadata associated with this BuildTemplate.
  /// [spec] The spec for this DomainMapping.
  /// [status] The current status of the DomainMapping.
  const GetDomainMappingResult({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.spec,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'kind': kind,
      'metadata': metadata.toMap(),
      'spec': spec.toMap(),
      'status': status.toMap(),
    };
  }

  factory GetDomainMappingResult.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingResult(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
      metadata: ObjectMetaResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      spec: DomainMappingSpecResponse.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      status: DomainMappingStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
    );
  }
}
