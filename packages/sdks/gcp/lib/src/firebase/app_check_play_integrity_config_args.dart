// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_play_integrity_config_app_check_play_integrity_config_args_doc}
/// The set of arguments for AppCheckPlayIntegrityConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_play_integrity_config_app_check_play_integrity_config_args_doc}
class AppCheckPlayIntegrityConfigArgs {
  /// The ID of an
  /// [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
  final pulumi.Input<String> appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckPlayIntegrityConfigArgs].
  /// [appId] The ID of an
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  AppCheckPlayIntegrityConfigArgs({
    required pulumi.Output<String> appId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tokenTtl,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tokenTtl = pulumi.Input.asOptionalInput<String>(tokenTtl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckPlayIntegrityConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckPlayIntegrityConfigArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tokenTtl: map['tokenTtl'] == null ? null : pulumi.Output.create<String>(map['tokenTtl'] as String),
    );
  }
}

