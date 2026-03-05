// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/object_reference.dart';
import 'endpoint_conditions_discovery_k8s_io_v1beta1.dart';

/// Endpoint represents a single logical "backend" implementing a service.
class EndpointDiscoveryK8sIoV1beta1 {
  /// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
  final pulumi.Input<List<String>> addresses;
  /// conditions contains information about the current status of the endpoint.
  final pulumi.Input<EndpointConditionsDiscoveryK8sIoV1beta1>? conditions;
  /// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must pass DNS Label (RFC 1123) validation.
  final pulumi.Input<String>? hostname;
  /// nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
  final pulumi.Input<String>? nodeName;
  /// targetRef is a reference to a Kubernetes object that represents this endpoint.
  final pulumi.Input<ObjectReference>? targetRef;
  /// topology contains arbitrary topology information associated with the endpoint. These key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node
  /// where the endpoint is located. This should match the corresponding
  /// node label.
  /// * topology.kubernetes.io/zone: the value indicates the zone where the
  /// endpoint is located. This should match the corresponding node label.
  /// * topology.kubernetes.io/region: the value indicates the region where the
  /// endpoint is located. This should match the corresponding node label.
  final pulumi.Input<Map<String, String>>? topology;

  /// Creates a new [EndpointDiscoveryK8sIoV1beta1].
  /// [addresses] addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
  /// [conditions] conditions contains information about the current status of the endpoint.
  /// [hostname] hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must pass DNS Label (RFC 1123) validation.
  /// [nodeName] nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
  /// [targetRef] targetRef is a reference to a Kubernetes object that represents this endpoint.
  /// [topology] topology contains arbitrary topology information associated with the endpoint. These key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node
  EndpointDiscoveryK8sIoV1beta1({
    required this.addresses,
    this.conditions,
    this.hostname,
    this.nodeName,
    this.targetRef,
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'conditions': ?pulumi.Input.mapOptionalInputValue<EndpointConditionsDiscoveryK8sIoV1beta1, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'hostname': ?hostname,
      'nodeName': ?nodeName,
      'targetRef': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(targetRef, (value) => value.toMap()),
      'topology': ?topology,
    };
  }

  factory EndpointDiscoveryK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EndpointDiscoveryK8sIoV1beta1(
      addresses: pulumi.Input.fromValue((map['addresses'] as List).cast<String>()),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointConditionsDiscoveryK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRef: (() { final guardedValue = map['targetRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

