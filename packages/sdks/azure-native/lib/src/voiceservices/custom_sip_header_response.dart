// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a Custom SIP Header.
class CustomSipHeaderResponse {
  /// The name of the Custom SIP Header
  final pulumi.Input<String>? name;

  /// Creates a new [CustomSipHeaderResponse].
  /// [name] The name of the Custom SIP Header
  CustomSipHeaderResponse({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory CustomSipHeaderResponse.fromMap(Map<String, dynamic> map) {
    return CustomSipHeaderResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
