// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_network_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_network_get_network_args_doc}
class GetNetworkArgs {
  /// Location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkArgs].
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  GetNetworkArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

