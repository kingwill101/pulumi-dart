// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerScriptLimits {
  /// The amount of CPU time this Worker can use in milliseconds.
  final pulumi.Input<int?>? cpuMs;
  /// The number of subrequests this Worker can make per request.
  final pulumi.Input<int?>? subrequests;

  /// Creates a new [WorkerScriptLimits].
  /// [cpuMs] The amount of CPU time this Worker can use in milliseconds.
  /// [subrequests] The number of subrequests this Worker can make per request.
  const WorkerScriptLimits({
    this.cpuMs,
    this.subrequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuMs': ?cpuMs,
      'subrequests': ?subrequests,
    };
  }

  factory WorkerScriptLimits.fromMap(Map<String, dynamic> map) {
    return WorkerScriptLimits(
      cpuMs: (() { final guardedValue = map['cpuMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      subrequests: (() { final guardedValue = map['subrequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
