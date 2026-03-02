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
    this.hostnames,
    this.name,
    this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'name': ?name,
      'orgId': ?orgId,
    };
  }

  factory EnvGroupState.fromMap(Map<String, dynamic> map) {
    return EnvGroupState(
      hostnames: map['hostnames'] == null ? null : ((map['hostnames']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
    );
  }
}

