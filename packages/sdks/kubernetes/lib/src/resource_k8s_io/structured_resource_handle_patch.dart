// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_allocation_result_patch.dart';

/// StructuredResourceHandle is the in-tree representation of the allocation result.
class StructuredResourceHandlePatch {
  /// NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  final pulumi.Input<String>? nodeName;
  /// Results lists all allocated driver resources.
  final pulumi.Input<List<DriverAllocationResultPatch>>? results;
  /// VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  final pulumi.Input<dynamic>? vendorClaimParameters;
  /// VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  final pulumi.Input<dynamic>? vendorClassParameters;

  /// Creates a new [StructuredResourceHandlePatch].
  /// [nodeName] NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  /// [results] Results lists all allocated driver resources.
  /// [vendorClaimParameters] VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  /// [vendorClassParameters] VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  StructuredResourceHandlePatch({
    this.nodeName,
    this.results,
    this.vendorClaimParameters,
    this.vendorClassParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
      'results': ?pulumi.Input.mapOptionalInputValue<List<DriverAllocationResultPatch>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<DriverAllocationResultPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vendorClaimParameters': ?vendorClaimParameters,
      'vendorClassParameters': ?vendorClassParameters,
    };
  }

  factory StructuredResourceHandlePatch.fromMap(Map<String, dynamic> map) {
    return StructuredResourceHandlePatch(
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DriverAllocationResultPatch>(guardedValue, (value) => DriverAllocationResultPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vendorClaimParameters: (() { final guardedValue = map['vendorClaimParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vendorClassParameters: (() { final guardedValue = map['vendorClassParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

