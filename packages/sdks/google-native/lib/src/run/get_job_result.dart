// ignore_for_file: unused_element, unnecessary_cast

import 'job_spec_response.dart';
import 'job_status_response.dart';
import 'object_meta_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values.
  final String apiVersion;
  /// Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
  final String kind;
  /// Optional. Standard object's metadata.
  final ObjectMetaResponse metadata;
  /// Optional. Specification of the desired behavior of a job.
  final JobSpecResponse spec;
  /// Current status of a job.
  final JobStatusResponse status;

  /// Creates a new [GetJobResult].
  /// [apiVersion] Optional. APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values.
  /// [kind] Optional. Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase.
  /// [metadata] Optional. Standard object's metadata.
  /// [spec] Optional. Specification of the desired behavior of a job.
  /// [status] Current status of a job.
  const GetJobResult({
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

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      apiVersion: map['apiVersion'] as String,
      kind: map['kind'] as String,
      metadata: ObjectMetaResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      spec: JobSpecResponse.fromMap((map['spec']! as Map).cast<String, dynamic>()),
      status: JobStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
    );
  }
}

