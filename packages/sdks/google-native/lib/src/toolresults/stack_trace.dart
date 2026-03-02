// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A stacktrace.
class StackTrace {
  /// The stack trace message. Required
  final pulumi.Input<String>? exception;

  /// Creates a new [StackTrace].
  /// [exception] The stack trace message. Required
  StackTrace({
    this.exception,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exception': ?exception,
    };
  }

  factory StackTrace.fromMap(Map<String, dynamic> map) {
    return StackTrace(
      exception: map['exception'] == null ? null : (map['exception'] as String).input(),
    );
  }
}

