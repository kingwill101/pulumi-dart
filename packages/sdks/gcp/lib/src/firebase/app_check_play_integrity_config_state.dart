// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckPlayIntegrityConfig resources.
class AppCheckPlayIntegrityConfigState {
  /// The ID of an
  /// [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id).
  final pulumi.Input<String>? appId;
  /// The relative resource name of the Play Integrity configuration object
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckPlayIntegrityConfigState].
  /// [appId] The ID of an
  /// [name] The relative resource name of the Play Integrity configuration object
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from Play Integrity artifacts will be valid.
  AppCheckPlayIntegrityConfigState({
    this.appId,
    this.name,
    this.project,
    this.tokenTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'name': ?name,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckPlayIntegrityConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckPlayIntegrityConfigState(
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tokenTtl: map['tokenTtl'] == null ? null : (map['tokenTtl'] as String).input(),
    );
  }
}

