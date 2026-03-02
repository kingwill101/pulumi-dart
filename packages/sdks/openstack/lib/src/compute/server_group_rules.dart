// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupRules {
  final pulumi.Input<int>? maxServerPerHost;

  /// Creates a new [ServerGroupRules].
  /// [maxServerPerHost] Optional.
  ServerGroupRules({
    this.maxServerPerHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServerPerHost': ?maxServerPerHost,
    };
  }

  factory ServerGroupRules.fromMap(Map<String, dynamic> map) {
    return ServerGroupRules(
      maxServerPerHost: map['maxServerPerHost'] == null ? null : (map['maxServerPerHost']! as int).input(),
    );
  }
}

