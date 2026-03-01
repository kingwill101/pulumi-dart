// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckServiceConfig resources.
class AppCheckServiceConfigState {
  final pulumi.Input<String>? enforcementMode;
  /// The fully-qualified resource name of the service enforcement configuration.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  final pulumi.Input<String>? serviceId;

  /// Creates a new [AppCheckServiceConfigState].
  /// [enforcementMode] Optional.
  /// [name] The fully-qualified resource name of the service enforcement configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  AppCheckServiceConfigState({
    pulumi.Output<String>? enforcementMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceId,
  }) :
      enforcementMode = pulumi.Input.asOptionalInput<String>(enforcementMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementMode': ?enforcementMode,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
    };
  }

  factory AppCheckServiceConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckServiceConfigState(
      enforcementMode: map['enforcementMode'] == null ? null : pulumi.Output.create<String>(map['enforcementMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

