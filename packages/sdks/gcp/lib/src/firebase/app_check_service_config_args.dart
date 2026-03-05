// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_service_config_app_check_service_config_args_doc}
/// The set of arguments for AppCheckServiceConfig.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_service_config_app_check_service_config_args_doc}
class AppCheckServiceConfigArgs {
  final pulumi.Input<String>? enforcementMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  final pulumi.Input<String> serviceId;

  /// Creates a new [AppCheckServiceConfigArgs].
  /// [enforcementMode] Optional.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  AppCheckServiceConfigArgs({
    this.enforcementMode,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementMode': ?enforcementMode,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory AppCheckServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckServiceConfigArgs(
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

