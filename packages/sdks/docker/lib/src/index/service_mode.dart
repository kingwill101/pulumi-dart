// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mode_replicated.dart';

class ServiceMode {
  /// When `true`, tasks will run on every worker node. Conflicts with `replicated`
  final pulumi.Input<bool>? global;
  /// The replicated service mode
  final pulumi.Input<ServiceModeReplicated>? replicated;

  /// Creates a new [ServiceMode].
  /// [global] When `true`, tasks will run on every worker node. Conflicts with `replicated`
  /// [replicated] The replicated service mode
  const ServiceMode({
    this.global,
    this.replicated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'global': ?global,
      'replicated': ?pulumi.Input.mapOptionalInputValue<ServiceModeReplicated, Map<String, dynamic>>(replicated, (value) => value.toMap()),
    };
  }

  factory ServiceMode.fromMap(Map<String, dynamic> map) {
    return ServiceMode(
      global: (() { final guardedValue = map['global']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicated: (() { final guardedValue = map['replicated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceModeReplicated.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

