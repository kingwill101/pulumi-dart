// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final pulumi.Input<String> type;

  /// Creates a new [WorkloadAttributesEnvironment].
  /// [type] Environment type.
  const WorkloadAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WorkloadAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesEnvironment(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
