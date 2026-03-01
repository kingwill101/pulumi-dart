// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_filestore_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_filestore_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The name of the location of the instance. This
  /// can be a region for ENTERPRISE tier instances. If it is not provided,
  /// the provider region or zone is used.
  final pulumi.Input<String>? location;
  /// The name of a Filestore instance.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [location] The name of the location of the instance. This
  /// [name] The name of a Filestore instance.
  /// [project] The project in which the resource belongs. If it
  GetInstanceArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

