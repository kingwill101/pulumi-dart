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
    required this.environmentId,
    required this.name,
    required this.organizationId,
    required this.type,
  });

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
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

