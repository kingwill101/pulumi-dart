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
    pulumi.Output<List<StackV1StackOutput>>? stackOutputs,
    pulumi.Output<List<String>>? capabilities,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disableRollback,
    pulumi.Output<Map<String, String>>? environmentOpts,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? notificationTopics,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? templateDescription,
    required pulumi.Output<Map<String, String>> templateOpts,
    pulumi.Output<int>? timeout,
    pulumi.Output<String>? updatedTime,
  }) :
      stackOutputs = pulumi.Input.asOptionalInput<List<StackV1StackOutput>>(stackOutputs),
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableRollback = pulumi.Input.asOptionalInput<bool>(disableRollback),
      environmentOpts = pulumi.Input.asOptionalInput<Map<String, String>>(environmentOpts),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationTopics = pulumi.Input.asOptionalInput<List<String>>(notificationTopics),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      templateDescription = pulumi.Input.asOptionalInput<String>(templateDescription),
      templateOpts = pulumi.Input.asInput<Map<String, String>>(templateOpts),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      updatedTime = pulumi.Input.asOptionalInput<String>(updatedTime);

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
      'templateOpts': templateOpts,
      'timeout': ?timeout,
      'updatedTime': ?updatedTime,
    };
  }

  factory StackV1Args.fromMap(Map<String, dynamic> map) {
    return StackV1Args(
      stackOutputs: map['StackOutputs'] == null ? null : pulumi.Output.create<List<StackV1StackOutput>>(pulumi.Input.decodeList<StackV1StackOutput>(map['StackOutputs'], (value) => StackV1StackOutput.fromMap((value as Map).cast<String, dynamic>()))),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<String>>((map['capabilities'] as List).cast<String>()),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableRollback: map['disableRollback'] == null ? null : pulumi.Output.create<bool>(map['disableRollback'] as bool),
      environmentOpts: map['environmentOpts'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentOpts'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationTopics: map['notificationTopics'] == null ? null : pulumi.Output.create<List<String>>((map['notificationTopics'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      templateDescription: map['templateDescription'] == null ? null : pulumi.Output.create<String>(map['templateDescription'] as String),
      templateOpts: pulumi.Output.create<Map<String, String>>((map['templateOpts'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      updatedTime: map['updatedTime'] == null ? null : pulumi.Output.create<String>(map['updatedTime'] as String),
    );
  }
}

