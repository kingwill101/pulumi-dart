// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServergroupV2Rule {
  final pulumi.Input<int> maxServerPerHost;

  /// Creates a new [GetServergroupV2Rule].
  /// [maxServerPerHost] Required.
  const GetServergroupV2Rule({
    required this.maxServerPerHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServerPerHost': maxServerPerHost,
    };
  }

  factory GetServergroupV2Rule.fromMap(Map<String, dynamic> map) {
    return GetServergroupV2Rule(
      maxServerPerHost: pulumi.Input.fromValue(map['maxServerPerHost'] as int),
    );
  }
}

