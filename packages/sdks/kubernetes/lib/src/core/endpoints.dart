// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'endpoint_subset.dart';

/// Endpoints is a collection of endpoints that implement the actual service. Example:
///
/// Name: "mysvc",
/// Subsets: [
/// {
/// Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// },
/// {
/// Addresses: [{"ip": "10.10.3.3"}],
/// Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
/// },
/// ]
///
/// Endpoints is a legacy API and does not contain information about all Service features. Use discoveryv1.EndpointSlice for complete information about Service endpoints.
///
/// Deprecated: This API is deprecated in v1.33+. Use discoveryv1.EndpointSlice.
class Endpoints {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  final pulumi.Input<List<EndpointSubset>?>? subsets;

  /// Creates a new [Endpoints].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [subsets] The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  const Endpoints({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.subsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'subsets': ?pulumi.Input.mapOptionalInputValue<List<EndpointSubset>, List<Map<String, dynamic>>>(subsets, (value) => pulumi.Input.encodeList<EndpointSubset, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Endpoints.fromMap(Map<String, dynamic> map) {
    return Endpoints(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subsets: (() { final guardedValue = map['subsets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointSubset>(guardedValue, (value) => EndpointSubset.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
