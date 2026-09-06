// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_deployment_slot_args_doc}
/// The set of arguments for WebAppDeploymentSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_deployment_slot_args_doc}
class WebAppDeploymentSlotArgs {
  /// True if deployment is currently active, false if completed and null if not started.
  final pulumi.Input<bool?>? active;
  /// Who authored the deployment.
  final pulumi.Input<String?>? author;
  /// Author email.
  final pulumi.Input<String?>? authorEmail;
  /// Who performed the deployment.
  final pulumi.Input<String?>? deployer;
  /// Details on deployment.
  final pulumi.Input<String?>? details;
  /// End time.
  final pulumi.Input<String?>? endTime;
  /// Deployment ID.
  final pulumi.Input<String?>? id;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Details about deployment status.
  final pulumi.Input<String?>? message;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API gets a deployment for the production slot.
  final pulumi.Input<String> slot;
  /// Start time.
  final pulumi.Input<String?>? startTime;
  /// Deployment status.
  final pulumi.Input<int?>? status;

  /// Creates a new [WebAppDeploymentSlotArgs].
  /// [active] True if deployment is currently active, false if completed and null if not started.
  /// [author] Who authored the deployment.
  /// [authorEmail] Author email.
  /// [deployer] Who performed the deployment.
  /// [details] Details on deployment.
  /// [endTime] End time.
  /// [id] Deployment ID.
  /// [kind] Kind of resource.
  /// [message] Details about deployment status.
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API gets a deployment for the production slot.
  /// [startTime] Start time.
  /// [status] Deployment status.
  const WebAppDeploymentSlotArgs({
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
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorEmail: (() { final guardedValue = map['authorEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployer: (() { final guardedValue = map['deployer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
