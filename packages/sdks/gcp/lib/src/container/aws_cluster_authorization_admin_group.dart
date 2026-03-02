// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterAuthorizationAdminGroup {
  /// The name of the group, e.g. `my-group@domain.com`.
  final pulumi.Input<String> group;

  /// Creates a new [AwsClusterAuthorizationAdminGroup].
  /// [group] The name of the group, e.g. `my-group@domain.com`.
  AwsClusterAuthorizationAdminGroup({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
    };
  }

  factory AwsClusterAuthorizationAdminGroup.fromMap(Map<String, dynamic> map) {
    return AwsClusterAuthorizationAdminGroup(
      group: (map['group'] as String).input(),
    );
  }
}

