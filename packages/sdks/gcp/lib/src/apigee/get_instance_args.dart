// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_apigee_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The name of the Apigee instance. [3]
  final pulumi.Input<String> name;
  /// The Apigee Organization associated with the instance, in the format `organizations/{{org_name}}`. [3]
  final pulumi.Input<String> orgId;

  /// Creates a new [GetInstanceArgs].
  /// [name] The name of the Apigee instance. [3]
  /// [orgId] The Apigee Organization associated with the instance, in the format `organizations/{{org_name}}`. [3]
  const GetInstanceArgs({
    required this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orgId': orgId,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
    );
  }
}
