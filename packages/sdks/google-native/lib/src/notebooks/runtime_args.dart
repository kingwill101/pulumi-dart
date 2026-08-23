// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'virtual_machine.dart';

/// {@template pulumi_notebooks_v1_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_runtime_args_doc}
class RuntimeArgs {
  /// The config settings for accessing runtime.
  final pulumi.Input<RuntimeAccessConfig>? accessConfig;
  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;
  /// Required. User-defined unique ID of this Runtime.
  final pulumi.Input<String> runtimeId;
  /// The config settings for software inside the runtime.
  final pulumi.Input<RuntimeSoftwareConfig>? softwareConfig;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  final pulumi.Input<VirtualMachine>? virtualMachine;

  /// Creates a new [RuntimeArgs].
  /// [accessConfig] The config settings for accessing runtime.
  /// [labels] Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Idempotent request UUID.
  /// [runtimeId] Required. User-defined unique ID of this Runtime.
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  const RuntimeArgs({
    this.accessConfig,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.runtimeId,
    this.softwareConfig,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'runtimeId': runtimeId,
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<VirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig: (() { final guardedValue = map['accessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeId: pulumi.Input.fromValue(map['runtimeId'] as String),
      softwareConfig: (() { final guardedValue = map['softwareConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
