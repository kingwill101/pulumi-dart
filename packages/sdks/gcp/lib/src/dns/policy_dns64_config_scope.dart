// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyDns64ConfigScope {
  /// Controls whether DNS64 is enabled globally at the network level.
  final pulumi.Input<bool>? allQueries;

  /// Creates a new [PolicyDns64ConfigScope].
  /// [allQueries] Controls whether DNS64 is enabled globally at the network level.
  PolicyDns64ConfigScope({
    this.allQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allQueries': ?allQueries,
    };
  }

  factory PolicyDns64ConfigScope.fromMap(Map<String, dynamic> map) {
    return PolicyDns64ConfigScope(
      allQueries: map['allQueries'] == null ? null : (map['allQueries']! as bool).input(),
    );
  }
}

