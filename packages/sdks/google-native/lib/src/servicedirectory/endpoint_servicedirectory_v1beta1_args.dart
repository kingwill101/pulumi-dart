// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_endpoint_servicedirectory_v1beta1_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_endpoint_servicedirectory_v1beta1_args_doc}
class EndpointServicedirectoryV1beta1Args {
  /// Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  final pulumi.Input<String>? address;
  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String>? location;
  /// Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> namespaceId;
  /// Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  final pulumi.Input<String>? network;
  /// Optional. Service Directory rejects values outside of `[0, 65535]`.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [EndpointServicedirectoryV1beta1Args].
  /// [address] Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  /// [endpointId] Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [location] Optional.
  /// [metadata] Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  /// [name] Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  /// [namespaceId] Required.
  /// [network] Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  /// [port] Optional. Service Directory rejects values outside of `[0, 65535]`.
  /// [project] Optional.
  /// [serviceId] Required.
  EndpointServicedirectoryV1beta1Args({
    pulumi.Output<String>? address,
    required pulumi.Output<String> endpointId,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? network,
    pulumi.Output<int>? port,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceId,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      endpointId = pulumi.Input.asInput<String>(endpointId),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      network = pulumi.Input.asOptionalInput<String>(network),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'endpointId': endpointId,
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'namespaceId': namespaceId,
      'network': ?network,
      'port': ?port,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory EndpointServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return EndpointServicedirectoryV1beta1Args(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      endpointId: pulumi.Output.create<String>(map['endpointId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

