// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEndpoint.
class GetEndpointServicedirectoryV1beta1Result {
  /// Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  final String address;
  /// The timestamp when the endpoint was created.
  final String createTime;
  /// Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  final Map<String, String> metadata;
  /// Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  final String name;
  /// Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  final String network;
  /// Optional. Service Directory rejects values outside of `[0, 65535]`.
  final int port;
  /// A globally unique identifier (in UUID4 format) for this endpoint.
  final String uid;
  /// The timestamp when the endpoint was last updated.
  final String updateTime;

  /// Creates a new [GetEndpointServicedirectoryV1beta1Result].
  /// [address] Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  /// [createTime] The timestamp when the endpoint was created.
  /// [metadata] Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  /// [name] Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  /// [network] Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  /// [port] Optional. Service Directory rejects values outside of `[0, 65535]`.
  /// [uid] A globally unique identifier (in UUID4 format) for this endpoint.
  /// [updateTime] The timestamp when the endpoint was last updated.
  const GetEndpointServicedirectoryV1beta1Result({
    required this.address,
    required this.createTime,
    required this.metadata,
    required this.name,
    required this.network,
    required this.port,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'createTime': createTime,
      'metadata': metadata,
      'name': name,
      'network': network,
      'port': port,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetEndpointServicedirectoryV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetEndpointServicedirectoryV1beta1Result(
      address: map['address'] as String,
      createTime: map['createTime'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      port: map['port'] as int,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

