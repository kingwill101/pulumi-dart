// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_notification_registration_args_doc}
/// Arguments for getNotificationRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_notification_registration_args_doc}
class GetNotificationRegistrationArgs {
  /// The notification registration.
  final pulumi.Input<String> notificationRegistrationName;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [GetNotificationRegistrationArgs].
  /// [notificationRegistrationName] The notification registration.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  const GetNotificationRegistrationArgs({
    required this.notificationRegistrationName,
    required this.providerNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationRegistrationName': notificationRegistrationName,
      'providerNamespace': providerNamespace,
    };
  }

  factory GetNotificationRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationRegistrationArgs(
      notificationRegistrationName: pulumi.Input.fromValue(map['notificationRegistrationName'] as String),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
    );
  }
}
