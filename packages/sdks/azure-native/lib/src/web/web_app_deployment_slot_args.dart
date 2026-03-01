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
    pulumi.Output<bool>? active,
    pulumi.Output<String>? author,
    pulumi.Output<String>? authorEmail,
    pulumi.Output<String>? deployer,
    pulumi.Output<String>? details,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? id,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? message,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> slot,
    pulumi.Output<String>? startTime,
    pulumi.Output<int>? status,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      author = pulumi.Input.asOptionalInput<String>(author),
      authorEmail = pulumi.Input.asOptionalInput<String>(authorEmail),
      deployer = pulumi.Input.asOptionalInput<String>(deployer),
      details = pulumi.Input.asOptionalInput<String>(details),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      message = pulumi.Input.asOptionalInput<String>(message),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<int>(status);

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
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      authorEmail: map['authorEmail'] == null ? null : pulumi.Output.create<String>(map['authorEmail'] as String),
      deployer: map['deployer'] == null ? null : pulumi.Output.create<String>(map['deployer'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<String>(map['details'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

