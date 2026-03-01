// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_get_android_app_get_android_app_args_doc}
/// Arguments for getAndroidApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_get_android_app_get_android_app_args_doc}
class GetAndroidAppArgs {
  /// The app_id of name of the Firebase androidApp.
  ///
  ///
  /// - - -
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAndroidAppArgs].
  /// [appId] The app_id of name of the Firebase androidApp.
  /// [project] The ID of the project in which the resource belongs.
  GetAndroidAppArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? project,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

