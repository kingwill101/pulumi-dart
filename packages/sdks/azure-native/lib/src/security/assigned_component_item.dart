// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// describe the properties of a security assessment object reference (by key)
class AssignedComponentItem {
  /// unique key to a security assessment object
  final pulumi.Input<String>? key;

  /// Creates a new [AssignedComponentItem].
  /// [key] unique key to a security assessment object
  AssignedComponentItem({this.key});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key};
  }

  factory AssignedComponentItem.fromMap(Map<String, dynamic> map) {
    return AssignedComponentItem(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
