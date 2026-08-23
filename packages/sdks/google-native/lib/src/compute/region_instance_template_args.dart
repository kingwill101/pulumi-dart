// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties.dart';
import 'source_instance_params.dart';

/// {@template pulumi_compute_alpha_region_instance_template_args_doc}
/// The set of arguments for RegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_region_instance_template_args_doc}
class RegionInstanceTemplateArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The instance properties for this instance template.
  final pulumi.Input<InstanceProperties>? properties;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String>? sourceInstance;
  /// The source instance params to use to create this instance template.
  final pulumi.Input<SourceInstanceParams>? sourceInstanceParams;

  /// Creates a new [RegionInstanceTemplateArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [properties] The instance properties for this instance template.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sourceInstance] The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  /// [sourceInstanceParams] The source instance params to use to create this instance template.
  const RegionInstanceTemplateArgs({
    this.description,
    this.name,
    this.project,
    this.properties,
    required this.region,
    this.requestId,
    this.sourceInstance,
    this.sourceInstanceParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<InstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'region': region,
      'requestId': ?requestId,
      'sourceInstance': ?sourceInstance,
      'sourceInstanceParams': ?pulumi.Input.mapOptionalInputValue<SourceInstanceParams, Map<String, dynamic>>(sourceInstanceParams, (value) => value.toMap()),
    };
  }

  factory RegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstance: (() { final guardedValue = map['sourceInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceParams: (() { final guardedValue = map['sourceInstanceParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceInstanceParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
