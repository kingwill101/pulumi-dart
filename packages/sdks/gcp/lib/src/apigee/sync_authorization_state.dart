// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SyncAuthorization resources.
class SyncAuthorizationState {
  /// Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other.
  /// Used internally during updates.
  final pulumi.Input<String?>? etag;
  /// Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  final pulumi.Input<List<String>?>? identities;
  /// Name of the Apigee organization.
  final pulumi.Input<String?>? name;

  /// Creates a new [SyncAuthorizationState].
  /// [etag] Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other.
  /// [identities] Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// [name] Name of the Apigee organization.
  const SyncAuthorizationState({
    this.etag,
    this.identities,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'identities': ?identities,
      'name': ?name,
    };
  }

  factory SyncAuthorizationState.fromMap(Map<String, dynamic> map) {
    return SyncAuthorizationState(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
