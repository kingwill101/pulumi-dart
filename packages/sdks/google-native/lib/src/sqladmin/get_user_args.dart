// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_user_args_doc}
class GetUserArgs {
  final pulumi.Input<String>? host;
  final pulumi.Input<String> instance;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetUserArgs].
  /// [host] Optional.
  /// [instance] Required.
  /// [name] Required.
  /// [project] Optional.
  GetUserArgs({
    pulumi.Output<String>? host,
    required pulumi.Output<String> instance,
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      host = pulumi.Input.asOptionalInput<String>(host),
      instance = pulumi.Input.asInput<String>(instance),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'instance': instance,
      'name': name,
      'project': ?project,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

