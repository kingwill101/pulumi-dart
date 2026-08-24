// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingCatchAllMatcher {
  /// Type of matcher. Default is 'all'.
  /// Available values: "all".
  final pulumi.Input<String> type;

  /// Creates a new [EmailRoutingCatchAllMatcher].
  /// [type] Type of matcher. Default is 'all'.
  const EmailRoutingCatchAllMatcher({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory EmailRoutingCatchAllMatcher.fromMap(Map<String, dynamic> map) {
    return EmailRoutingCatchAllMatcher(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
