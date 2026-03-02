// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_deployment_slot_args_doc}
/// The set of arguments for WebAppDeploymentSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_deployment_slot_args_doc}
class WebAppDeploymentSlotArgs {
  /// True if deployment is currently active, false if completed and null if not started.
  final pulumi.Input<bool>? active;
  /// Who authored the deployment.
  final pulumi.Input<String>? author;
  /// Author email.
  final pulumi.Input<String>? authorEmail;
  /// Who performed the deployment.
  final pulumi.Input<String>? deployer;
  /// Details on deployment.
  final pulumi.Input<String>? details;
  /// End time.
  final pulumi.Input<String>? endTime;
  /// ID of an existing deployment.
  final pulumi.Input<String>? id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Details about deployment status.
  final pulumi.Input<String>? message;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API creates a deployment for the production slot.
  final pulumi.Input<String> slot;
  /// Start time.
  final pulumi.Input<String>? startTime;
  /// Deployment status.
  final pulumi.Input<int>? status;

  /// Creates a new [WebAppDeploymentSlotArgs].
  /// [active] True if deployment is currently active, false if completed and null if not started.
  /// [author] Who authored the deployment.
  /// [authorEmail] Author email.
  /// [deployer] Who performed the deployment.
  /// [details] Details on deployment.
  /// [endTime] End time.
  /// [id] ID of an existing deployment.
  /// [kind] Kind of resource.
  /// [message] Details about deployment status.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API creates a deployment for the production slot.
  /// [startTime] Start time.
  /// [status] Deployment status.
  WebAppDeploymentSlotArgs({
    this.active,
    this.author,
    this.authorEmail,
    this.deployer,
    this.details,
    this.endTime,
    this.id,
    this.kind,
    this.message,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'author': ?author,
      'authorEmail': ?authorEmail,
      'deployer': ?deployer,
      'details': ?details,
      'endTime': ?endTime,
      'id': ?id,
      'kind': ?kind,
      'message': ?message,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory WebAppDeploymentSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDeploymentSlotArgs(
      active: map['active'] == null ? null : (map['active']! as bool).input(),
      author: map['author'] == null ? null : (map['author']! as String).input(),
      authorEmail: map['authorEmail'] == null ? null : (map['authorEmail']! as String).input(),
      deployer: map['deployer'] == null ? null : (map['deployer']! as String).input(),
      details: map['details'] == null ? null : (map['details']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
    );
  }
}

