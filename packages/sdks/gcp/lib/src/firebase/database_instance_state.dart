// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseInstance resources.
class DatabaseInstanceState {
  /// The database URL in the form of https://{instance-id}.firebaseio.com for us-central1 instances
  /// or https://{instance-id}.{region}.firebasedatabase.app in other regions.
  final pulumi.Input<String>? databaseUrl;
  /// The intended database state. Possible values: ACTIVE, DISABLED.
  final pulumi.Input<String>? desiredState;
  /// The globally unique identifier of the Firebase Realtime Database instance.
  /// Instance IDs cannot be reused after deletion.
  final pulumi.Input<String>? instanceId;
  /// The fully-qualified resource name of the Firebase Realtime Database, in
  /// the format: projects/PROJECT_NUMBER/locations/REGION_IDENTIFIER/instances/INSTANCE_ID
  /// PROJECT_NUMBER: The Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region where the Firebase Realtime database resides.
  /// Check all [available regions](https://firebase.google.com/docs/projects/locations#rtdb-locations)
  final pulumi.Input<String>? region;
  /// The current database state. Set desired_state to :DISABLED to disable the database and :ACTIVE to reenable the database
  final pulumi.Input<String>? state;
  /// The database type.
  /// Each project can create one default Firebase Realtime Database, which cannot be deleted once created.
  /// Creating user Databases is only available for projects on the Blaze plan.
  /// Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Default value is `USER_DATABASE`.
  /// Possible values are: `DEFAULT_DATABASE`, `USER_DATABASE`.
  final pulumi.Input<String>? type;

  /// Creates a new [DatabaseInstanceState].
  /// [databaseUrl] The database URL in the form of https://{instance-id}.firebaseio.com for us-central1 instances
  /// [desiredState] The intended database state. Possible values: ACTIVE, DISABLED.
  /// [instanceId] The globally unique identifier of the Firebase Realtime Database instance.
  /// [name] The fully-qualified resource name of the Firebase Realtime Database, in
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the Firebase Realtime database resides.
  /// [state] The current database state. Set desired_state to :DISABLED to disable the database and :ACTIVE to reenable the database
  /// [type] The database type.
  DatabaseInstanceState({
    pulumi.Output<String>? databaseUrl,
    pulumi.Output<String>? desiredState,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
  }) :
      databaseUrl = pulumi.Input.asOptionalInput<String>(databaseUrl),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseUrl': ?databaseUrl,
      'desiredState': ?desiredState,
      'instanceId': ?instanceId,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'type': ?type,
    };
  }

  factory DatabaseInstanceState.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceState(
      databaseUrl: map['databaseUrl'] == null ? null : pulumi.Output.create<String>(map['databaseUrl'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

