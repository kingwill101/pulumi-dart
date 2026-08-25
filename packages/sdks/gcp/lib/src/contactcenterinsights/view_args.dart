// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_view_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_view_view_args_doc}
class ViewArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The human-readable display name of the view.
  final pulumi.Input<String?>? displayName;
  /// Location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A filter to reduce conversation results to a specific subset.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  final pulumi.Input<String?>? value;

  /// Creates a new [ViewArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human-readable display name of the view.
  /// [location] Location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [value] A filter to reduce conversation results to a specific subset.
  const ViewArgs({
    this.deletionPolicy,
    this.displayName,
    required this.location,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'value': ?value,
    };
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
