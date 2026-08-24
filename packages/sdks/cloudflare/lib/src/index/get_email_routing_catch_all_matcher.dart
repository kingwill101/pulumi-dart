// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingCatchAllMatcher {
  /// Type of matcher. Default is 'all'.
  /// Available values: "all".
  final pulumi.Input<String> type;

  /// Creates a new [GetEmailRoutingCatchAllMatcher].
  /// [type] Type of matcher. Default is 'all'.
  const GetEmailRoutingCatchAllMatcher({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetEmailRoutingCatchAllMatcher.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingCatchAllMatcher(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
