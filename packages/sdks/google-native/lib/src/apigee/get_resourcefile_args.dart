// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_resourcefile_args_doc}
/// Arguments for getResourcefile.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_resourcefile_args_doc}
class GetResourcefileArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> name;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> type;

  /// Creates a new [GetResourcefileArgs].
  /// [environmentId] Required.
  /// [name] Required.
  /// [organizationId] Required.
  /// [type] Required.
  GetResourcefileArgs({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> type,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      name = pulumi.Input.asInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'name': name,
      'organizationId': organizationId,
      'type': type,
    };
  }

  factory GetResourcefileArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcefileArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

