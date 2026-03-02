// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPlaneAccess resources.
class ControlPlaneAccessState {
  /// Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  final pulumi.Input<List<String>>? analyticsPublisherIdentities;
  /// Name of the Apigee organization.
  final pulumi.Input<String>? name;
  /// Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  final pulumi.Input<List<String>>? synchronizerIdentities;

  /// Creates a new [ControlPlaneAccessState].
  /// [analyticsPublisherIdentities] Array of service accounts authorized to publish analytics data to the control plane, each specified using the following format: `serviceAccount:service-account-name`.
  /// [name] Name of the Apigee organization.
  /// [synchronizerIdentities] Array of service accounts to grant access to control plane resources (for the Synchronizer component), each specified using the following format: `serviceAccount:service-account-name`.
  ControlPlaneAccessState({
    this.analyticsPublisherIdentities,
    this.name,
    this.synchronizerIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsPublisherIdentities': ?analyticsPublisherIdentities,
      'name': ?name,
      'synchronizerIdentities': ?synchronizerIdentities,
    };
  }

  factory ControlPlaneAccessState.fromMap(Map<String, dynamic> map) {
    return ControlPlaneAccessState(
      analyticsPublisherIdentities: map['analyticsPublisherIdentities'] == null ? null : ((map['analyticsPublisherIdentities']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      synchronizerIdentities: map['synchronizerIdentities'] == null ? null : ((map['synchronizerIdentities']! as List).cast<String>()).input(),
    );
  }
}

