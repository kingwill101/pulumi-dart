// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceUsedBy {
  final pulumi.Input<String>? reference;

  /// Creates a new [BackendServiceUsedBy].
  /// [reference] Optional.
  BackendServiceUsedBy({this.reference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'reference': ?reference};
  }

  factory BackendServiceUsedBy.fromMap(Map<String, dynamic> map) {
    return BackendServiceUsedBy(
      reference: (() {
        final guardedValue = map['reference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
