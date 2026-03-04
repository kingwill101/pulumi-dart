import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_servicedirectory_v1beta1_args.dart';

/// Creates an endpoint, and returns the new endpoint.
class EndpointServicedirectoryV1beta1 extends pulumi.CustomResource {
  /// Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  late final pulumi.Output<String> address;

  /// The timestamp when the endpoint was created.
  late final pulumi.Output<String> createTime;

  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> endpointId;
  late final pulumi.Output<String> location;

  /// Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> namespaceId;

  /// Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  late final pulumi.Output<String> network;

  /// Optional. Service Directory rejects values outside of `[0, 65535]`.
  late final pulumi.Output<int> port;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> serviceId;

  /// A globally unique identifier (in UUID4 format) for this endpoint.
  late final pulumi.Output<String> uid;

  /// The timestamp when the endpoint was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EndpointServicedirectoryV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointServicedirectoryV1beta1]. {@macro pulumi_servicedirectory_v1beta1_endpoint_servicedirectory_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointServicedirectoryV1beta1(
    String name, {
    EndpointServicedirectoryV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:servicedirectory/v1beta1:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    address = registerOutput<String>('address');
    createTime = registerOutput<String>('createTime');
    endpointId = registerOutput<String>('endpointId');
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    network = registerOutput<String>('network');
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    serviceId = registerOutput<String>('serviceId');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
