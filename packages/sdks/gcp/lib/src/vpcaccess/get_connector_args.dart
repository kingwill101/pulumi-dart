// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpcaccess_get_connector_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_get_connector_get_connector_args_doc}
class GetConnectorArgs {
  /// Name of the resource.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetConnectorArgs].
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetConnectorArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

