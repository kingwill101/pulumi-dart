// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_network_network_args_doc}
class NetworkArgs {
  /// User-provided description for this VMware Engine network.
  final pulumi.Input<String>? description;
  /// The location where the VMwareEngineNetwork should reside.
  final pulumi.Input<String> location;
  /// The ID of the VMwareEngineNetwork.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String> type;

  /// Creates a new [NetworkArgs].
  /// [description] User-provided description for this VMware Engine network.
  /// [location] The location where the VMwareEngineNetwork should reside.
  /// [name] The ID of the VMwareEngineNetwork.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] VMware Engine network type.
  NetworkArgs({
    this.description,
    required this.location,
    this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'name': ?name,
      'project': ?project,
      'type': type,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

