// ignore_for_file: unused_element, unnecessary_cast

import 'service_mode_replicated.dart';

class ServiceMode {
  /// When `true`, tasks will run on every worker node. Conflicts with `replicated`
  final bool? global;
  /// The replicated service mode
  final ServiceModeReplicated? replicated;

  /// Creates a new [ServiceMode].
  /// [global] When `true`, tasks will run on every worker node. Conflicts with `replicated`
  /// [replicated] The replicated service mode
  ServiceMode({
    this.global,
    this.replicated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'global': ?global,
      'replicated': ?replicated == null ? null : replicated!.toMap(),
    };
  }

  factory ServiceMode.fromMap(Map<String, dynamic> map) {
    return ServiceMode(
      global: map['global'] == null ? null : map['global'] as bool,
      replicated: map['replicated'] == null ? null : ServiceModeReplicated.fromMap((map['replicated'] as Map).cast<String, dynamic>()),
    );
  }
}

