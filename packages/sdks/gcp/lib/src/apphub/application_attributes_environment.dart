// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationAttributesEnvironment].
  /// [type] Environment type.
  const ApplicationAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ApplicationAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesEnvironment(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
