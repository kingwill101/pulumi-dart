// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for an outcome with an INCONCLUSIVE outcome summary.
class InconclusiveDetail {
  /// If the end user aborted the test execution before a pass or fail could be determined. For example, the user pressed ctrl-c which sent a kill signal to the test runner while the test was running.
  final pulumi.Input<bool>? abortedByUser;
  /// If results are being provided to the user in certain cases of infrastructure failures
  final pulumi.Input<bool>? hasErrorLogs;
  /// If the test runner could not determine success or failure because the test depends on a component other than the system under test which failed. For example, a mobile test requires provisioning a device where the test executes, and that provisioning can fail.
  final pulumi.Input<bool>? infrastructureFailure;

  /// Creates a new [InconclusiveDetail].
  /// [abortedByUser] If the end user aborted the test execution before a pass or fail could be determined. For example, the user pressed ctrl-c which sent a kill signal to the test runner while the test was running.
  /// [hasErrorLogs] If results are being provided to the user in certain cases of infrastructure failures
  /// [infrastructureFailure] If the test runner could not determine success or failure because the test depends on a component other than the system under test which failed. For example, a mobile test requires provisioning a device where the test executes, and that provisioning can fail.
  InconclusiveDetail({
    this.abortedByUser,
    this.hasErrorLogs,
    this.infrastructureFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortedByUser': ?abortedByUser,
      'hasErrorLogs': ?hasErrorLogs,
      'infrastructureFailure': ?infrastructureFailure,
    };
  }

  factory InconclusiveDetail.fromMap(Map<String, dynamic> map) {
    return InconclusiveDetail(
      abortedByUser: (() { final guardedValue = map['abortedByUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasErrorLogs: (() { final guardedValue = map['hasErrorLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      infrastructureFailure: (() { final guardedValue = map['infrastructureFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

