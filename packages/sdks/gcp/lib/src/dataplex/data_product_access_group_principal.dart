// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProductAccessGroupPrincipal {
  /// Email of the Google Group.
  final pulumi.Input<String>? googleGroup;

  /// Creates a new [DataProductAccessGroupPrincipal].
  /// [googleGroup] Email of the Google Group.
  DataProductAccessGroupPrincipal({this.googleGroup});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'googleGroup': ?googleGroup};
  }

  factory DataProductAccessGroupPrincipal.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroupPrincipal(
      googleGroup: (() {
        final guardedValue = map['googleGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
