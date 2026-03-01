// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_v1beta1_get_android_app_args_doc}
/// Arguments for getAndroidApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_v1beta1_get_android_app_args_doc}
class GetAndroidAppArgs {
  final pulumi.Input<String> androidAppId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAndroidAppArgs].
  /// [androidAppId] Required.
  /// [project] Optional.
  GetAndroidAppArgs({
    required pulumi.Output<String> androidAppId,
    pulumi.Output<String>? project,
  }) :
      androidAppId = pulumi.Input.asInput<String>(androidAppId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidAppId': androidAppId,
      'project': ?project,
    };
  }

  factory GetAndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppArgs(
      androidAppId: pulumi.Output.create<String>(map['androidAppId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

