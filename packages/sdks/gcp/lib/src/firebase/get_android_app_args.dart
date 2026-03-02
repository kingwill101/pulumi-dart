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
    required this.appId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
    };
  }

  factory GetAndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppArgs(
      appId: (map['appId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

