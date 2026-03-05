// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Barrier runnable blocks until all tasks in a taskgroup reach it.
class BarrierResponse {
  /// Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.
  final pulumi.Input<String> name;

  /// Creates a new [BarrierResponse].
  /// [name] Barriers are identified by their index in runnable list. Names are not required, but if present should be an identifier.
  BarrierResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory BarrierResponse.fromMap(Map<String, dynamic> map) {
    return BarrierResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

