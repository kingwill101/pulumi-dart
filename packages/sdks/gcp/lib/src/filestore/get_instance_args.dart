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
  GetInstanceArgs({this.location, required this.name, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
