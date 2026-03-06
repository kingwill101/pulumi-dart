// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_view_args_doc}
class ViewArgs {
  /// The human-readable display name of the view.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// String with specific view properties, must be non-empty.
  final pulumi.Input<String>? value;

  /// Creates a new [ViewArgs].
  /// [displayName] The human-readable display name of the view.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  /// [project] Optional.
  /// [value] String with specific view properties, must be non-empty.
  const ViewArgs({
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'value': ?value,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

