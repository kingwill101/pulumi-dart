// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvGroup resources.
class EnvGroupState {
  /// Hostnames of the environment group.
  final pulumi.Input<List<String>>? hostnames;
  /// The resource ID of the environment group.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee environment group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;

  /// Creates a new [EnvGroupState].
  /// [hostnames] Hostnames of the environment group.
  /// [name] The resource ID of the environment group.
  /// [orgId] The Apigee Organization associated with the Apigee environment group,
  EnvGroupState({
    pulumi.Output<List<String>>? hostnames,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
  }) :
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'name': ?name,
      'orgId': ?orgId,
    };
  }

  factory EnvGroupState.fromMap(Map<String, dynamic> map) {
    return EnvGroupState(
      hostnames: map['hostnames'] == null ? null : pulumi.Output.create<List<String>>((map['hostnames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
    );
  }
}

