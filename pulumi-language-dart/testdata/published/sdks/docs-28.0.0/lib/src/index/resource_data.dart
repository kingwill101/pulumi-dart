// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceData is a basic type used in ResourceType.
class ResourceData {
  /// A property of ResourceData.
  final pulumi.Input<String> state;

  /// Creates a new [ResourceData].
  /// [state] A property of ResourceData.
  const ResourceData({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ResourceData.fromMap(Map<String, dynamic> map) {
    return ResourceData(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
