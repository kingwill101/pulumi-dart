// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_v1_stack_output.dart';

/// {@template pulumi_orchestration_stack_v1_stack_v1_args_doc}
/// The set of arguments for StackV1.
/// {@endtemplate}
/// {@macro pulumi_orchestration_stack_v1_stack_v1_args_doc}
class StackV1Args {
  /// A list of stack outputs.
  final pulumi.Input<List<StackV1StackOutput>>? stackOutputs;

  /// List of stack capabilities for stack.
  final pulumi.Input<List<String>>? capabilities;

  /// The date and time when the resource was created. The date
  /// and time stamp format is ISO 8601: CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00. The ±hh:mm value, if included,
  /// is the time zone as an offset from UTC.
  final pulumi.Input<String>? creationTime;

  /// The description of the stack resource.
  final pulumi.Input<String>? description;

  /// Enables or disables deletion of all stack
  /// resources when a stack creation fails. Default is true, meaning all
  /// resources are not deleted when stack creation fails.
  final pulumi.Input<bool>? disableRollback;

  /// Environment key/value pairs to associate with
  /// the stack which contains details for the environment of the stack.
  /// Allowed keys: Bin, URL, Files. Changing this updates the existing stack
  /// Environment Opts.
  final pulumi.Input<Map<String, String>>? environmentOpts;

  /// A unique name for the stack. It must start with an
  /// alphabetic character. Changing this updates the stack's name.
  final pulumi.Input<String>? name;

  /// List of notification topics for stack.
  final pulumi.Input<List<String>>? notificationTopics;

  /// User-defined key/value pairs as parameters to pass
  /// to the template. Changing this updates the existing stack parameters.
  final pulumi.Input<Map<String, String>>? parameters;

  /// The region in which to create the stack. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new stack.
  final pulumi.Input<String>? region;

  /// The status of the stack.
  final pulumi.Input<String>? status;

  /// The reason for the current status of the stack.
  final pulumi.Input<String>? statusReason;

  /// A list of tags to assosciate with the Stack
  final pulumi.Input<List<String>>? tags;

  /// The description of the stack template.
  final pulumi.Input<String>? templateDescription;

  /// Template key/value pairs to associate with the
  /// stack which contains either the template file or url.
  /// Allowed keys: Bin, URL, Files. Changing this updates the existing stack
  /// Template Opts.
  final pulumi.Input<Map<String, String>> templateOpts;

  /// The timeout for stack action in minutes.
  final pulumi.Input<int>? timeout;

  /// The date and time when the resource was updated. The date
  /// and time stamp format is ISO 8601: CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00. The ±hh:mm value, if included,
  /// is the time zone as an offset from UTC.
  final pulumi.Input<String>? updatedTime;

  /// Creates a new [StackV1Args].
  /// [stackOutputs] A list of stack outputs.
  /// [capabilities] List of stack capabilities for stack.
  /// [creationTime] The date and time when the resource was created. The date
  /// [description] The description of the stack resource.
  /// [disableRollback] Enables or disables deletion of all stack
  /// [environmentOpts] Environment key/value pairs to associate with
  /// [name] A unique name for the stack. It must start with an
  /// [notificationTopics] List of notification topics for stack.
  /// [parameters] User-defined key/value pairs as parameters to pass
  /// [region] The region in which to create the stack. If
  /// [status] The status of the stack.
  /// [statusReason] The reason for the current status of the stack.
  /// [tags] A list of tags to assosciate with the Stack
  /// [templateDescription] The description of the stack template.
  /// [templateOpts] Template key/value pairs to associate with the
  /// [timeout] The timeout for stack action in minutes.
  /// [updatedTime] The date and time when the resource was updated. The date
  StackV1Args({
    this.stackOutputs,
    this.capabilities,
    this.creationTime,
    this.description,
    this.disableRollback,
    this.environmentOpts,
    this.name,
    this.notificationTopics,
    this.parameters,
    this.region,
    this.status,
    this.statusReason,
    this.tags,
    this.templateDescription,
    required this.templateOpts,
    this.timeout,
    this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'StackOutputs':
          ?pulumi.Input.mapOptionalInputValue<
            List<StackV1StackOutput>,
            List<Map<String, dynamic>>
          >(
            stackOutputs,
            (value) =>
                pulumi.Input.encodeList<
                  StackV1StackOutput,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'capabilities': ?capabilities,
      'creationTime': ?creationTime,
      'description': ?description,
      'disableRollback': ?disableRollback,
      'environmentOpts': ?environmentOpts,
      'name': ?name,
      'notificationTopics': ?notificationTopics,
      'parameters': ?parameters,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'templateDescription': ?templateDescription,
      'templateOpts': templateOpts,
      'timeout': ?timeout,
      'updatedTime': ?updatedTime,
    };
  }

  factory StackV1Args.fromMap(Map<String, dynamic> map) {
    return StackV1Args(
      stackOutputs: (() {
        final guardedValue = map['StackOutputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<StackV1StackOutput>(
            guardedValue,
            (value) => StackV1StackOutput.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableRollback: (() {
        final guardedValue = map['disableRollback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      environmentOpts: (() {
        final guardedValue = map['environmentOpts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationTopics: (() {
        final guardedValue = map['notificationTopics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusReason: (() {
        final guardedValue = map['statusReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      templateDescription: (() {
        final guardedValue = map['templateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateOpts: pulumi.Input.fromValue(
        (map['templateOpts'] as Map).cast<String, String>(),
      ),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      updatedTime: (() {
        final guardedValue = map['updatedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
