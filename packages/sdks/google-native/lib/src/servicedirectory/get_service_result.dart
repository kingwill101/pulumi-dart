// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// Optional. Annotations for the service. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Annotations that fails to meet these requirements are rejected Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.
  final Map<String, String> annotations;
  /// Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  final List<EndpointResponse> endpoints;
  /// Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  final String name;
  /// The globally unique identifier of the service in the UUID4 format.
  final String uid;

  /// Creates a new [GetServiceResult].
  /// [annotations] Optional. Annotations for the service. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Annotations that fails to meet these requirements are rejected Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.
  /// [endpoints] Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  /// [name] Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  /// [uid] The globally unique identifier of the service in the UUID4 format.
  GetServiceResult({
    required this.annotations,
    required this.endpoints,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'endpoints': pulumi.Input.encodeList<EndpointResponse, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'name': name,
      'uid': uid,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      endpoints: pulumi.Input.decodeList<EndpointResponse>(map['endpoints'], (value) => EndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      uid: map['uid'] as String,
    );
  }
}

