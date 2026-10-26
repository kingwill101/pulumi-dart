// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptBindingRetry {
  /// Maximum number of retries after the initial request, not the total number of attempts. Defaults to 4. Zero disables retries.
  final pulumi.Input<int?>? maxAttempts;
  /// Retry timeout in milliseconds, measured from the start of the call. No retry starts after it expires, and a retry still running when it expires is cancelled. This is not a request timeout; it does not limit the initial request, which is still subject to any timeouts set by your Worker. Defaults to 10000.
  final pulumi.Input<int?>? timeoutMs;

  /// Creates a new [WorkerScriptBindingRetry].
  /// [maxAttempts] Maximum number of retries after the initial request, not the total number of attempts. Defaults to 4. Zero disables retries.
  /// [timeoutMs] Retry timeout in milliseconds, measured from the start of the call. No retry starts after it expires, and a retry still running when it expires is cancelled. This is not a request timeout; it does not limit the initial request, which is still subject to any timeouts set by your Worker. Defaults to 10000.
  const WorkerScriptBindingRetry({
    this.maxAttempts,
    this.timeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': ?maxAttempts,
      'timeoutMs': ?timeoutMs,
    };
  }

  factory WorkerScriptBindingRetry.fromMap(Map<String, dynamic> map) {
    return WorkerScriptBindingRetry(
      maxAttempts: (() { final guardedValue = map['maxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutMs: (() { final guardedValue = map['timeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
