// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckServiceConfig resources.
class AppCheckServiceConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The App Check enforcement mode for a service supported by App Check. Valid values are
  /// (Unset)
  /// Firebase App Check is not enforced for the service, nor are App Check metrics collected.
  /// Though the service is not protected by App Check in this mode, other applicable protections,
  /// such as user authorization, are still enforced. An unconfigured service is in this mode by default.
  /// This is equivalent to OFF in the REST API. Deleting the Terraform resource will also switch the
  /// enforcement to OFF for this service.
  /// UNENFORCED
  /// Firebase App Check is not enforced for the service. App Check metrics are collected to help you
  /// decide when to turn on enforcement for the service. Though the service is not protected by App Check
  /// in this mode, other applicable protections, such as user authorization, are still enforced.
  /// ENFORCED
  /// Firebase App Check is enforced for the service. The service will reject any request that attempts to
  /// access your project's resources if it does not have valid App Check token attached, with some exceptions
  /// depending on the service; for example, some services will still allow requests bearing the developer's
  /// privileged service account credentials without an App Check token. App Check metrics continue to be
  /// collected to help you detect issues with your App Check integration and monitor the composition of your
  /// callers. While the service is protected by App Check, other applicable protections, such as user
  /// authorization, continue to be enforced at the same time.
  /// Use caution when choosing to enforce App Check on a Firebase service. If your users have not updated
  /// to an App Check capable version of your app, their apps will no longer be able to use your Firebase
  /// services that are enforcing App Check. App Check metrics can help you decide whether to enforce App
  /// Check on your Firebase services.
  /// If your app has not launched yet, you should enable enforcement immediately, since there are no outdated
  /// clients in use.
  /// Possible values are: `UNENFORCED`, `ENFORCED`.
  final pulumi.Input<String?>? enforcementMode;
  /// The fully-qualified resource name of the service enforcement configuration.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  final pulumi.Input<String?>? serviceId;

  /// Creates a new [AppCheckServiceConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enforcementMode] The App Check enforcement mode for a service supported by App Check. Valid values are
  /// [name] The fully-qualified resource name of the service enforcement configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  const AppCheckServiceConfigState({
    this.deletionPolicy,
    this.enforcementMode,
    this.name,
    this.project,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'enforcementMode': ?enforcementMode,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
    };
  }

  factory AppCheckServiceConfigState.fromMap(Map<String, dynamic> map) {
    return AppCheckServiceConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
