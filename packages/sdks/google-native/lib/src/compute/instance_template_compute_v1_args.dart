// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties_compute_v1.dart';
import 'source_instance_params_compute_v1.dart';

/// {@template pulumi_compute_v1_instance_template_compute_v1_args_doc}
/// The set of arguments for InstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_instance_template_compute_v1_args_doc}
class InstanceTemplateComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The instance properties for this instance template.
  final pulumi.Input<InstancePropertiesComputeV1>? properties;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String>? sourceInstance;
  /// The source instance params to use to create this instance template.
  final pulumi.Input<SourceInstanceParamsComputeV1>? sourceInstanceParams;

  /// Creates a new [InstanceTemplateComputeV1Args].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [properties] The instance properties for this instance template.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceInstance] The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceParams] The source instance params to use to create this instance template.
  InstanceTemplateComputeV1Args({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<InstancePropertiesComputeV1>? properties,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? sourceInstance,
    pulumi.Output<SourceInstanceParamsComputeV1>? sourceInstanceParams,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<InstancePropertiesComputeV1>(properties),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sourceInstance = pulumi.Input.asOptionalInput<String>(sourceInstance),
      sourceInstanceParams = pulumi.Input.asOptionalInput<SourceInstanceParamsComputeV1>(sourceInstanceParams);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<InstancePropertiesComputeV1, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'requestId': ?requestId,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceParams': ?pulumi.Input.mapOptionalInputValue<SourceInstanceParamsComputeV1, Map<String, dynamic>>(sourceInstanceParams, (value) => value.toMap()),
    };
  }

  factory InstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateComputeV1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<InstancePropertiesComputeV1>(InstancePropertiesComputeV1.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      sourceInstance: map['sourceInstance'] == null ? null : pulumi.Output.create<String>(map['sourceInstance'] as String),
      sourceInstanceParams: map['sourceInstanceParams'] == null ? null : pulumi.Output.create<SourceInstanceParamsComputeV1>(SourceInstanceParamsComputeV1.fromMap((map['sourceInstanceParams'] as Map).cast<String, dynamic>())),
    );
  }
}

