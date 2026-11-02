// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_auto_pause.dart';
import 'microvm_size.dart';
import 'microvm_source.dart';

/// {@template pulumi_index_microvm_microvm_args_doc}
/// The set of arguments for Microvm.
/// {@endtemplate}
/// {@macro pulumi_index_microvm_microvm_args_doc}
class MicrovmArgs {
  /// Auto-pause configuration. When omitted, the product default (enabled) applies.
  final pulumi.Input<MicrovmAutoPause?>? autoPause;
  /// Whether the MicroVM resumes automatically on incoming HTTP traffic. When omitted, the product default (enabled) applies.
  final pulumi.Input<bool?>? autoResume;
  /// A map of environment variables to pass to the workload.
  final pulumi.Input<Map<String, String>?>? environment;
  /// The port the workload serves HTTP on.
  final pulumi.Input<int?>? httpPort;
  /// The HTTP protocol the workload serves: `http` or `http2`.
  final pulumi.Input<String?>? httpProtocol;
  /// The name of the MicroVM.
  final pulumi.Input<String?>? name;
  /// The networking mode: `public` or `vpc`.
  final pulumi.Input<String?>? networking;
  /// A list of guest ports to open for ingress. Defaults to `httpPort` only.
  final pulumi.Input<List<int>?>? ports;
  /// The slug of the region to create the MicroVM in. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  final pulumi.Input<String?>? region;
  /// The compute size of the MicroVM. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  final pulumi.Input<MicrovmSize?>? size;
  /// What the MicroVM runs. Exactly one of the following must be set:
  final pulumi.Input<MicrovmSource> source;
  /// The desired lifecycle state: `running` or `paused`. Defaults to `running`. When `autoPause` is enabled, a MicroVM that the platform has paused is not resumed to match `running`.
  final pulumi.Input<String?>? state;
  /// A list of tag names to apply to the MicroVM.
  final pulumi.Input<List<String>?>? tags;
  /// The ID of the VPC to place the MicroVM in. Only valid when `networking` is `vpc`.
  final pulumi.Input<String?>? vpcUuid;

  /// Creates a new [MicrovmArgs].
  /// [autoPause] Auto-pause configuration. When omitted, the product default (enabled) applies.
  /// [autoResume] Whether the MicroVM resumes automatically on incoming HTTP traffic. When omitted, the product default (enabled) applies.
  /// [environment] A map of environment variables to pass to the workload.
  /// [httpPort] The port the workload serves HTTP on.
  /// [httpProtocol] The HTTP protocol the workload serves: `http` or `http2`.
  /// [name] The name of the MicroVM.
  /// [networking] The networking mode: `public` or `vpc`.
  /// [ports] A list of guest ports to open for ingress. Defaults to `httpPort` only.
  /// [region] The slug of the region to create the MicroVM in. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  /// [size] The compute size of the MicroVM. Required when creating from `source.oci_ref`; inherited from the checkpoint when omitted on a restore.
  /// [source] What the MicroVM runs. Exactly one of the following must be set:
  /// [state] The desired lifecycle state: `running` or `paused`. Defaults to `running`. When `autoPause` is enabled, a MicroVM that the platform has paused is not resumed to match `running`.
  /// [tags] A list of tag names to apply to the MicroVM.
  /// [vpcUuid] The ID of the VPC to place the MicroVM in. Only valid when `networking` is `vpc`.
  const MicrovmArgs({
    this.autoPause,
    this.autoResume,
    this.environment,
    this.httpPort,
    this.httpProtocol,
    this.name,
    this.networking,
    this.ports,
    this.region,
    this.size,
    required this.source,
    this.state,
    this.tags,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPause': ?pulumi.Input.mapOptionalInputValue<MicrovmAutoPause, Map<String, dynamic>>(autoPause, (value) => value.toMap()),
      'autoResume': ?autoResume,
      'environment': ?environment,
      'httpPort': ?httpPort,
      'httpProtocol': ?httpProtocol,
      'name': ?name,
      'networking': ?networking,
      'ports': ?ports,
      'region': ?region,
      'size': ?pulumi.Input.mapOptionalInputValue<MicrovmSize, Map<String, dynamic>>(size, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<MicrovmSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'state': ?state,
      'tags': ?tags,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory MicrovmArgs.fromMap(Map<String, dynamic> map) {
    return MicrovmArgs(
      autoPause: (() { final guardedValue = map['autoPause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmAutoPause.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoResume: (() { final guardedValue = map['autoResume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpProtocol: (() { final guardedValue = map['httpProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networking: (() { final guardedValue = map['networking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(MicrovmSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
