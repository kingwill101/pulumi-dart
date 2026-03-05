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
    this.enforcementMode,
    this.name,
    this.project,
    this.serviceId,
  });

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
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

