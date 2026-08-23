// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_get_log_view_get_log_view_args_doc}
/// Arguments for getLogView.
/// {@endtemplate}
/// {@macro pulumi_logging_get_log_view_get_log_view_args_doc}
class GetLogViewArgs {
  /// The bucket of the resource.
  final pulumi.Input<String> bucket;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The resource name of the view.
  final pulumi.Input<String> name;
  /// The parent of the resource.
  final pulumi.Input<String> parent;

  /// Creates a new [GetLogViewArgs].
  /// [bucket] The bucket of the resource.
  /// [location] The location of the resource.
  /// [name] The resource name of the view.
  /// [parent] The parent of the resource.
  const GetLogViewArgs({
    required this.bucket,
    required this.location,
    required this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'location': location,
      'name': name,
      'parent': parent,
    };
  }

  factory GetLogViewArgs.fromMap(Map<String, dynamic> map) {
    return GetLogViewArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
