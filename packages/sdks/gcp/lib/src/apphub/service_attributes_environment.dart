// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceAttributesEnvironment].
  /// [type] Environment type.
  ServiceAttributesEnvironment({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory ServiceAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesEnvironment(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
