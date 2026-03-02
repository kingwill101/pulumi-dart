// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadbalancerV2Listener {
  final pulumi.Input<String> id;

  /// Creates a new [GetLoadbalancerV2Listener].
  /// [id] Required.
  GetLoadbalancerV2Listener({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetLoadbalancerV2Listener.fromMap(Map<String, dynamic> map) {
    return GetLoadbalancerV2Listener(
      id: (map['id'] as String).input(),
    );
  }
}

