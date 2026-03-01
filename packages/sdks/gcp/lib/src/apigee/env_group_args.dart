// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_env_group_env_group_args_doc}
/// The set of arguments for EnvGroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_env_group_env_group_args_doc}
class EnvGroupArgs {
  /// Hostnames of the environment group.
  final pulumi.Input<List<String>>? hostnames;
  /// The resource ID of the environment group.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee environment group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Creates a new [EnvGroupArgs].
  /// [hostnames] Hostnames of the environment group.
  /// [name] The resource ID of the environment group.
  /// [orgId] The Apigee Organization associated with the Apigee environment group,
  EnvGroupArgs({
    pulumi.Output<List<String>>? hostnames,
    pulumi.Output<String>? name,
    required pulumi.Output<String> orgId,
  }) :
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asInput<String>(orgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'name': ?name,
      'orgId': orgId,
    };
  }

  factory EnvGroupArgs.fromMap(Map<String, dynamic> map) {
    return EnvGroupArgs(
      hostnames: map['hostnames'] == null ? null : pulumi.Output.create<List<String>>((map['hostnames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: pulumi.Output.create<String>(map['orgId'] as String),
    );
  }
}

