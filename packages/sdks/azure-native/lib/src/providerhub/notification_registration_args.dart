// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_registration_properties.dart';

/// {@template pulumi_providerhub_notification_registration_args_doc}
/// The set of arguments for NotificationRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_notification_registration_args_doc}
class NotificationRegistrationArgs {
  /// The notification registration.
  final pulumi.Input<String?>? notificationRegistrationName;
  final pulumi.Input<NotificationRegistrationProperties?>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [NotificationRegistrationArgs].
  /// [notificationRegistrationName] The notification registration.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  const NotificationRegistrationArgs({
    this.notificationRegistrationName,
    this.properties,
    required this.providerNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationRegistrationName': ?notificationRegistrationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NotificationRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
    };
  }

  factory NotificationRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationArgs(
      notificationRegistrationName: (() { final guardedValue = map['notificationRegistrationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationRegistrationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
    );
  }
}
