// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_microvms_micro_vm_auto_pause.dart';
import 'get_microvms_micro_vm_size.dart';
import 'get_microvms_micro_vm_source.dart';
import 'get_microvms_micro_vm_url.dart';

class GetMicrovmsMicroVm {
  /// Auto-pause configuration. Forces recreation on change: the MicroVMs API has no in-place update path for auto_pause.
  final pulumi.Input<List<GetMicrovmsMicroVmAutoPause>> autoPauses;
  /// Whether the MicroVM should auto-resume on request. Forces recreation on change: the MicroVMs API has no in-place update path for auto_resume.
  final pulumi.Input<bool> autoResume;
  /// The creation timestamp for the MicroVM
  final pulumi.Input<String> createdAt;
  /// Observed lifecycle state of the MicroVM
  final pulumi.Input<String> currentState;
  /// Environment variables passed to the MicroVM
  final pulumi.Input<Map<String, String>> environment;
  /// Human-readable explanation when currentState is failed
  final pulumi.Input<String> failureReason;
  /// Port the MicroVM exposes over HTTP
  final pulumi.Input<int> httpPort;
  /// HTTP protocol: 'http' or 'http2'
  final pulumi.Input<String> httpProtocol;
  /// MicroVM ID
  final pulumi.Input<String> id;
  /// Only return MicroVMs with this exact name.
  final pulumi.Input<String> name;
  /// Networking mode: 'public' or 'vpc'
  final pulumi.Input<String> networking;
  /// Guest ports open for ingress. Defaults to just httpPort when omitted.
  final pulumi.Input<List<int>> ports;
  /// Only return MicroVMs in this region.
  final pulumi.Input<String> region;
  /// Compute size. Required when creating from oci_ref; optional when restoring from a checkpoint (inherited).
  final pulumi.Input<List<GetMicrovmsMicroVmSize>> sizes;
  /// Workload source. Exactly one of ociRef or checkpointId must be set.
  final pulumi.Input<List<GetMicrovmsMicroVmSource>> sources;
  /// Desired lifecycle state: 'running' or 'paused'. Changes are applied by calling the microvm pause / resume action endpoints.
  final pulumi.Input<String> state;
  final pulumi.Input<List<String>> tags;
  /// Ingress URLs for the MicroVM
  final pulumi.Input<List<GetMicrovmsMicroVmUrl>> urls;
  /// The uniform resource name (URN) for the MicroVM
  final pulumi.Input<String> urn;
  /// UUID of the VPC to attach the MicroVM to. Only valid when networking is 'vpc'.
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetMicrovmsMicroVm].
  /// [autoPauses] Auto-pause configuration. Forces recreation on change: the MicroVMs API has no in-place update path for auto_pause.
  /// [autoResume] Whether the MicroVM should auto-resume on request. Forces recreation on change: the MicroVMs API has no in-place update path for auto_resume.
  /// [createdAt] The creation timestamp for the MicroVM
  /// [currentState] Observed lifecycle state of the MicroVM
  /// [environment] Environment variables passed to the MicroVM
  /// [failureReason] Human-readable explanation when currentState is failed
  /// [httpPort] Port the MicroVM exposes over HTTP
  /// [httpProtocol] HTTP protocol: 'http' or 'http2'
  /// [id] MicroVM ID
  /// [name] Only return MicroVMs with this exact name.
  /// [networking] Networking mode: 'public' or 'vpc'
  /// [ports] Guest ports open for ingress. Defaults to just httpPort when omitted.
  /// [region] Only return MicroVMs in this region.
  /// [sizes] Compute size. Required when creating from oci_ref; optional when restoring from a checkpoint (inherited).
  /// [sources] Workload source. Exactly one of ociRef or checkpointId must be set.
  /// [state] Desired lifecycle state: 'running' or 'paused'. Changes are applied by calling the microvm pause / resume action endpoints.
  /// [tags] Required.
  /// [urls] Ingress URLs for the MicroVM
  /// [urn] The uniform resource name (URN) for the MicroVM
  /// [vpcUuid] UUID of the VPC to attach the MicroVM to. Only valid when networking is 'vpc'.
  const GetMicrovmsMicroVm({
    required this.autoPauses,
    required this.autoResume,
    required this.createdAt,
    required this.currentState,
    required this.environment,
    required this.failureReason,
    required this.httpPort,
    required this.httpProtocol,
    required this.id,
    required this.name,
    required this.networking,
    required this.ports,
    required this.region,
    required this.sizes,
    required this.sources,
    required this.state,
    required this.tags,
    required this.urls,
    required this.urn,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauses': pulumi.Input.mapInputValue<List<GetMicrovmsMicroVmAutoPause>, List<Map<String, dynamic>>>(autoPauses, (value) => pulumi.Input.encodeList<GetMicrovmsMicroVmAutoPause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoResume': autoResume,
      'createdAt': createdAt,
      'currentState': currentState,
      'environment': environment,
      'failureReason': failureReason,
      'httpPort': httpPort,
      'httpProtocol': httpProtocol,
      'id': id,
      'name': name,
      'networking': networking,
      'ports': ports,
      'region': region,
      'sizes': pulumi.Input.mapInputValue<List<GetMicrovmsMicroVmSize>, List<Map<String, dynamic>>>(sizes, (value) => pulumi.Input.encodeList<GetMicrovmsMicroVmSize, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': pulumi.Input.mapInputValue<List<GetMicrovmsMicroVmSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetMicrovmsMicroVmSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'tags': tags,
      'urls': pulumi.Input.mapInputValue<List<GetMicrovmsMicroVmUrl>, List<Map<String, dynamic>>>(urls, (value) => pulumi.Input.encodeList<GetMicrovmsMicroVmUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urn': urn,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetMicrovmsMicroVm.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsMicroVm(
      autoPauses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsMicroVmAutoPause>(map['autoPauses']!, (value) => GetMicrovmsMicroVmAutoPause.fromMap((value as Map).cast<String, dynamic>()))),
      autoResume: pulumi.Input.fromValue(map['autoResume'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      currentState: pulumi.Input.fromValue(map['currentState'] as String),
      environment: pulumi.Input.fromValue((map['environment'] as Map).cast<String, String>()),
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      httpPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['httpPort'])),
      httpProtocol: pulumi.Input.fromValue(map['httpProtocol'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networking: pulumi.Input.fromValue(map['networking'] as String),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      region: pulumi.Input.fromValue(map['region'] as String),
      sizes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsMicroVmSize>(map['sizes']!, (value) => GetMicrovmsMicroVmSize.fromMap((value as Map).cast<String, dynamic>()))),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsMicroVmSource>(map['sources']!, (value) => GetMicrovmsMicroVmSource.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      urls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMicrovmsMicroVmUrl>(map['urls']!, (value) => GetMicrovmsMicroVmUrl.fromMap((value as Map).cast<String, dynamic>()))),
      urn: pulumi.Input.fromValue(map['urn'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
