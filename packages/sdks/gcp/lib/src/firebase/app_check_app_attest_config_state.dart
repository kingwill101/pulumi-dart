// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckAppAttestConfig resources.
class AppCheckAppAttestConfigState {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  final pulumi.Input<String>? appId;
  /// The relative resource name of the App Attest configuration object
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? tokenTtl;

  /// Creates a new [AppCheckAppAttestConfigState].
  /// [appId] The ID of an
  /// [name] The relative resource name of the App Attest configuration object
  /// [project] The ID of the project in which the resource belongs.
  /// [tokenTtl] Specifies the duration for which App Check tokens exchanged from App Attest artifacts will be valid.
  AppCheckAppAttestConfigState({
    pulumi.Output<String>? appId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? tokenTtl,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      tokenTtl = pulumi.Input.asOptionalInput<String>(tokenTtl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'name': ?name,
      'project': ?project,
      'tokenTtl': ?tokenTtl,
    };
  }

  factory AppCheckAppAttestConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckAppAttestConfigState(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tokenTtl: map['tokenTtl'] == null ? null : pulumi.Output.create<String>(map['tokenTtl'] as String),
    );
  }
}

