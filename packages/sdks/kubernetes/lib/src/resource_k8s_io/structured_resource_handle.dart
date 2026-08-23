// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_allocation_result.dart';

/// StructuredResourceHandle is the in-tree representation of the allocation result.
class StructuredResourceHandle {
  /// NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  final pulumi.Input<String>? nodeName;
  /// Results lists all allocated driver resources.
  final pulumi.Input<List<DriverAllocationResult>> results;
  /// VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  final pulumi.Input<dynamic>? vendorClaimParameters;
  /// VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  final pulumi.Input<dynamic>? vendorClassParameters;

  /// Creates a new [StructuredResourceHandle].
  /// [nodeName] NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  /// [results] Results lists all allocated driver resources.
  /// [vendorClaimParameters] VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  /// [vendorClassParameters] VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  const StructuredResourceHandle({
    this.nodeName,
    required this.results,
    this.vendorClaimParameters,
    this.vendorClassParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
      'results': pulumi.Input.mapInputValue<List<DriverAllocationResult>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DriverAllocationResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vendorClaimParameters': ?vendorClaimParameters,
      'vendorClassParameters': ?vendorClassParameters,
    };
  }

  factory StructuredResourceHandle.fromMap(Map<String, dynamic> map) {
    return StructuredResourceHandle(
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      results: pulumi.Input.fromValue(pulumi.Input.decodeList<DriverAllocationResult>(map['results']!, (value) => DriverAllocationResult.fromMap((value as Map).cast<String, dynamic>()))),
      vendorClaimParameters: (() { final guardedValue = map['vendorClaimParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vendorClassParameters: (() { final guardedValue = map['vendorClassParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
