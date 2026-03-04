// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AttachedClusterError {
  /// Human-friendly description of the error.
  final pulumi.Input<String>? message;

  /// Creates a new [AttachedClusterError].
  /// [message] Human-friendly description of the error.
  AttachedClusterError({this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': ?message};
  }

  factory AttachedClusterError.fromMap(Map<String, dynamic> map) {
    return AttachedClusterError(
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
