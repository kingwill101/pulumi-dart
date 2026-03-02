// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_get_monitor_get_monitor_args_doc}
/// Arguments for getMonitor.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_monitor_get_monitor_args_doc}
class GetMonitorArgs {
  /// Name of the ltm monitor
  final pulumi.Input<String> name;
  /// partition of the ltm monitor
  final pulumi.Input<String> partition;

  /// Creates a new [GetMonitorArgs].
  /// [name] Name of the ltm monitor
  /// [partition] partition of the ltm monitor
  GetMonitorArgs({
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'partition': partition,
    };
  }

  factory GetMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetMonitorArgs(
      name: (map['name'] as String).input(),
      partition: (map['partition'] as String).input(),
    );
  }
}

