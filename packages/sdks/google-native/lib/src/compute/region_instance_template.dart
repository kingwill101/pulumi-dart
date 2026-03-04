import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_response.dart';
import 'region_instance_template_args.dart';
import 'source_instance_params_response.dart';

/// Creates an instance template in the specified project and region using the global instance template whose URL is included in the request.
class RegionInstanceTemplate extends pulumi.CustomResource {
  /// The creation timestamp for this instance template in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// The resource type, which is always compute#instanceTemplate for instance templates.
  late final pulumi.Output<String> kind;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The instance properties for this instance template.
  late final pulumi.Output<InstancePropertiesResponse> properties;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The URL for this instance template. The server defines this URL.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  late final pulumi.Output<String> sourceInstance;

  /// The source instance params to use to create this instance template.
  late final pulumi.Output<SourceInstanceParamsResponse> sourceInstanceParams;

  /// Creates a new [RegionInstanceTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionInstanceTemplate]. {@macro pulumi_compute_alpha_region_instance_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionInstanceTemplate(
    String name, {
    RegionInstanceTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:RegionInstanceTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    properties = registerOutput<InstancePropertiesResponse>('properties');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    sourceInstance = registerOutput<String>('sourceInstance');
    sourceInstanceParams = registerOutput<SourceInstanceParamsResponse>(
      'sourceInstanceParams',
    );
  }
}
