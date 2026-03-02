// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final pulumi.Input<bool> enforced;

  /// Creates a new [PolicyBooleanPolicy].
  /// [enforced] If true, then the Policy is enforced. If false, then any configuration is acceptable.
  PolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforced': enforced,
    };
  }

  factory PolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyBooleanPolicy(
      enforced: (map['enforced'] as bool).input(),
    );
  }
}

