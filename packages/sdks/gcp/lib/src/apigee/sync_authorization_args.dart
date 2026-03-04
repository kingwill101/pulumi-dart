// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_sync_authorization_sync_authorization_args_doc}
/// The set of arguments for SyncAuthorization.
/// {@endtemplate}
/// {@macro pulumi_apigee_sync_authorization_sync_authorization_args_doc}
class SyncAuthorizationArgs {
  /// Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  final pulumi.Input<List<String>> identities;

  /// Name of the Apigee organization.
  final pulumi.Input<String>? name;

  /// Creates a new [SyncAuthorizationArgs].
  /// [identities] Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// [name] Name of the Apigee organization.
  SyncAuthorizationArgs({required this.identities, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identities': identities, 'name': ?name};
  }

  factory SyncAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return SyncAuthorizationArgs(
      identities: pulumi.Input.fromValue(
        (map['identities'] as List).cast<String>(),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
