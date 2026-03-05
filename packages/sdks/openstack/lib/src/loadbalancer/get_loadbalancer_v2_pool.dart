// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadbalancerV2Pool {
  final pulumi.Input<String> id;

  /// Creates a new [GetLoadbalancerV2Pool].
  /// [id] Required.
  GetLoadbalancerV2Pool({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetLoadbalancerV2Pool.fromMap(Map<String, dynamic> map) {
    return GetLoadbalancerV2Pool(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

