// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvm_auto_pause.dart';
import 'get_microvm_size.dart';
import 'get_microvm_source.dart';
import 'get_microvm_url.dart';

/// Result data returned by getMicrovm.
class GetMicrovmResult {
  /// Auto-pause configuration:
  final List<GetMicrovmAutoPause>? autoPauses;
  /// Whether the MicroVM resumes automatically on incoming HTTP traffic.
  final bool? autoResume;
  /// The date and time the MicroVM was created.
  final String? createdAt;
  /// The observed lifecycle state of the MicroVM, such as `running` or `paused`.
  final String? currentState;
  final Map<String, String>? environment;
  /// A description of the failure when `currentState` is `failed`.
  final String? failureReason;
  final int? httpPort;
  /// The HTTP protocol the workload serves: `http` or `http2`.
  final String? httpProtocol;
  /// The ID of the MicroVM.
  final String? id;
  /// The name of the MicroVM.
  final String? name;
  /// The networking mode: `public` or `vpc`.
  final String? networking;
  /// The guest ports open for ingress.
  final List<int>? ports;
  /// The slug of the region the MicroVM is in.
  final String? region;
  /// The compute size of the MicroVM:
  final List<GetMicrovmSize>? sizes;
  /// What the MicroVM runs:
  final List<GetMicrovmSource>? sources;
  final String? state;
  /// The tags applied to the MicroVM.
  final List<String>? tags;
  /// A list of ingress URLs for the MicroVM:
  final List<GetMicrovmUrl>? urls;
  /// The uniform resource name (URN) for the MicroVM.
  final String? urn;
  final String? vpcUuid;

  /// Creates a new [GetMicrovmResult].
  /// [autoPauses] Auto-pause configuration:
  /// [autoResume] Whether the MicroVM resumes automatically on incoming HTTP traffic.
  /// [createdAt] The date and time the MicroVM was created.
  /// [currentState] The observed lifecycle state of the MicroVM, such as `running` or `paused`.
  /// [environment] Optional.
  /// [failureReason] A description of the failure when `currentState` is `failed`.
  /// [httpPort] Optional.
  /// [httpProtocol] The HTTP protocol the workload serves: `http` or `http2`.
  /// [id] The ID of the MicroVM.
  /// [name] The name of the MicroVM.
  /// [networking] The networking mode: `public` or `vpc`.
  /// [ports] The guest ports open for ingress.
  /// [region] The slug of the region the MicroVM is in.
  /// [sizes] The compute size of the MicroVM:
  /// [sources] What the MicroVM runs:
  /// [state] Optional.
  /// [tags] The tags applied to the MicroVM.
  /// [urls] A list of ingress URLs for the MicroVM:
  /// [urn] The uniform resource name (URN) for the MicroVM.
  /// [vpcUuid] Optional.
  const GetMicrovmResult({
    this.autoPauses,
    this.autoResume,
    this.createdAt,
    this.currentState,
    this.environment,
    this.failureReason,
    this.httpPort,
    this.httpProtocol,
    this.id,
    this.name,
    this.networking,
    this.ports,
    this.region,
    this.sizes,
    this.sources,
    this.state,
    this.tags,
    this.urls,
    this.urn,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauses': ?(() { final guardedValue = autoPauses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmAutoPause, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autoResume': ?autoResume,
      'createdAt': ?createdAt,
      'currentState': ?currentState,
      'environment': ?environment,
      'failureReason': ?failureReason,
      'httpPort': ?httpPort,
      'httpProtocol': ?httpProtocol,
      'id': ?id,
      'name': ?name,
      'networking': ?networking,
      'ports': ?ports,
      'region': ?region,
      'sizes': ?(() { final guardedValue = sizes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmSize, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'tags': ?tags,
      'urls': ?(() { final guardedValue = urls; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMicrovmUrl, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'urn': ?urn,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory GetMicrovmResult.fromMap(Map<String, dynamic> map) {
    return GetMicrovmResult(
      autoPauses: (() { final guardedValue = map['autoPauses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmAutoPause>(guardedValue, (value) => GetMicrovmAutoPause.fromMap((value as Map).cast<String, dynamic>())); })(),
      autoResume: (() { final guardedValue = map['autoResume']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentState: (() { final guardedValue = map['currentState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      httpProtocol: (() { final guardedValue = map['httpProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networking: (() { final guardedValue = map['networking']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizes: (() { final guardedValue = map['sizes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmSize>(guardedValue, (value) => GetMicrovmSize.fromMap((value as Map).cast<String, dynamic>())); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmSource>(guardedValue, (value) => GetMicrovmSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMicrovmUrl>(guardedValue, (value) => GetMicrovmUrl.fromMap((value as Map).cast<String, dynamic>())); })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcUuid: (() { final guardedValue = map['vpcUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
