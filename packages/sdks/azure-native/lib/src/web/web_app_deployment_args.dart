// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_deployment_args_doc}
/// The set of arguments for WebAppDeployment.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_deployment_args_doc}
class WebAppDeploymentArgs {
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

  /// Start time.
  final pulumi.Input<String>? startTime;

  /// Deployment status.
  final pulumi.Input<int>? status;

  /// Creates a new [WebAppDeploymentArgs].
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
  /// [startTime] Start time.
  /// [status] Deployment status.
  WebAppDeploymentArgs({
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
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory WebAppDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return WebAppDeploymentArgs(
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      author: (() {
        final guardedValue = map['author'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorEmail: (() {
        final guardedValue = map['authorEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deployer: (() {
        final guardedValue = map['deployer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
