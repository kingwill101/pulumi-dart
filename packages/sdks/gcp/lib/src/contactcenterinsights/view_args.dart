// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_view_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_view_view_args_doc}
class ViewArgs {
  /// The human-readable display name of the view.
  final pulumi.Input<String>? displayName;
  /// Location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A filter to reduce conversation results to a specific subset.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  final pulumi.Input<String>? value;

  /// Creates a new [ViewArgs].
  /// [displayName] The human-readable display name of the view.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [value] A filter to reduce conversation results to a specific subset.
  ViewArgs({
    this.displayName,
    required this.location,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'value': ?value,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

