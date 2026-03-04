// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServicePropertyRegistrationType {
  /// (Output)
  /// Output only. The registration type of a service.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceServicePropertyRegistrationType].
  /// [type] (Output)
  ServiceServicePropertyRegistrationType({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ServiceServicePropertyRegistrationType.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServicePropertyRegistrationType(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
