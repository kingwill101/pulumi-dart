// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_v1_stack_output.dart';

/// Input properties used for looking up and filtering StackV1 resources.
class StackV1State {
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
  final pulumi.Input<Map<String, String>>? templateOpts;
  /// The timeout for stack action in minutes.
  final pulumi.Input<int>? timeout;
  /// The date and time when the resource was updated. The date
  /// and time stamp format is ISO 8601: CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00. The ±hh:mm value, if included,
  /// is the time zone as an offset from UTC.
  final pulumi.Input<String>? updatedTime;

  /// Creates a new [StackV1State].
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
  StackV1State({
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
    this.templateOpts,
    this.timeout,
    this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'StackOutputs': ?pulumi.Input.mapOptionalInputValue<List<StackV1StackOutput>, List<Map<String, dynamic>>>(stackOutputs, (value) => pulumi.Input.encodeList<StackV1StackOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'templateOpts': ?templateOpts,
      'timeout': ?timeout,
      'updatedTime': ?updatedTime,
    };
  }

  factory StackV1State.fromMap(Map<String, dynamic> map) {
    return StackV1State(
      stackOutputs: map['StackOutputs'] == null ? null : (pulumi.Input.decodeList<StackV1StackOutput>(map['StackOutputs'], (value) => StackV1StackOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      capabilities: map['capabilities'] == null ? null : ((map['capabilities'] as List).cast<String>()).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableRollback: map['disableRollback'] == null ? null : (map['disableRollback'] as bool).input(),
      environmentOpts: map['environmentOpts'] == null ? null : ((map['environmentOpts'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationTopics: map['notificationTopics'] == null ? null : ((map['notificationTopics'] as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statusReason: map['statusReason'] == null ? null : (map['statusReason'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      templateDescription: map['templateDescription'] == null ? null : (map['templateDescription'] as String).input(),
      templateOpts: map['templateOpts'] == null ? null : ((map['templateOpts'] as Map).cast<String, String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
      updatedTime: map['updatedTime'] == null ? null : (map['updatedTime'] as String).input(),
    );
  }
}

