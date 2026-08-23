// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppRootAgentAssociation resources.
class AppRootAgentAssociationState {
  /// The ID or fully qualified resource name of the agent to associate as the
  /// root agent of the app.
  final pulumi.Input<String>? agentId;
  /// The ID of the App. Used to construct the app resource name.
  final pulumi.Input<String>? appId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The location of the App.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AppRootAgentAssociationState].
  /// [agentId] The ID or fully qualified resource name of the agent to associate as the
  /// [appId] The ID of the App. Used to construct the app resource name.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the App.
  /// [project] The ID of the project in which the resource belongs.
  const AppRootAgentAssociationState({
    this.agentId,
    this.appId,
    this.deletionPolicy,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'appId': ?appId,
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'project': ?project,
    };
  }

  factory AppRootAgentAssociationState.fromMap(Map<String, dynamic> map) {
    return AppRootAgentAssociationState(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
