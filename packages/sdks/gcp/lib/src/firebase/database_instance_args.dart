// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_database_instance_database_instance_args_doc}
/// The set of arguments for DatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_firebase_database_instance_database_instance_args_doc}
class DatabaseInstanceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The intended database state. Possible values: ACTIVE, DISABLED.
  final pulumi.Input<String?>? desiredState;
  /// The globally unique identifier of the Firebase Realtime Database instance.
  /// Instance IDs cannot be reused after deletion.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region where the Firebase Realtime database resides.
  /// Check all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)
  final pulumi.Input<String> region;
  /// The database type.
  /// Each project can create one default Firebase Realtime Database, which cannot be deleted once created.
  /// Creating user Databases is only available for projects on the Blaze plan.
  /// Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Default value is `USER_DATABASE`.
  /// Possible values are: `DEFAULT_DATABASE`, `USER_DATABASE`.
  final pulumi.Input<String?>? type;

  /// Creates a new [DatabaseInstanceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] The intended database state. Possible values: ACTIVE, DISABLED.
  /// [instanceId] The globally unique identifier of the Firebase Realtime Database instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the Firebase Realtime database resides.
  /// [type] The database type.
  const DatabaseInstanceArgs({
    this.deletionPolicy,
    this.desiredState,
    required this.instanceId,
    this.project,
    required this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'instanceId': instanceId,
      'project': ?project,
      'region': region,
      'type': ?type,
    };
  }

  factory DatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
