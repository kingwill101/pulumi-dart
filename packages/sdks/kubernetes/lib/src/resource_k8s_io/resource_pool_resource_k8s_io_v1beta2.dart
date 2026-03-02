// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourcePool describes the pool that ResourceSlices belong to.
class ResourcePoolResourceK8sIoV1beta2 {
  /// Generation tracks the change in a pool over time. Whenever a driver changes something about one or more of the resources in a pool, it must change the generation in all ResourceSlices which are part of that pool. Consumers of ResourceSlices should only consider resources from the pool with the highest generation number. The generation may be reset by drivers, which should be fine for consumers, assuming that all ResourceSlices in a pool are updated to match or deleted.
  ///
  /// Combined with ResourceSliceCount, this mechanism enables consumers to detect pools which are comprised of multiple ResourceSlices and are in an incomplete state.
  final pulumi.Input<int> generation;
  /// Name is used to identify the pool. For node-local devices, this is often the node name, but this is not required.
  ///
  /// It must not be longer than 253 characters and must consist of one or more DNS sub-domains separated by slashes. This field is immutable.
  final pulumi.Input<String> name;
  /// ResourceSliceCount is the total number of ResourceSlices in the pool at this generation number. Must be greater than zero.
  ///
  /// Consumers can use this to check whether they have seen all ResourceSlices belonging to the same pool.
  final pulumi.Input<int> resourceSliceCount;

  /// Creates a new [ResourcePoolResourceK8sIoV1beta2].
  /// [generation] Generation tracks the change in a pool over time. Whenever a driver changes something about one or more of the resources in a pool, it must change the generation in all ResourceSlices which are part of that pool. Consumers of ResourceSlices should only consider resources from the pool with the highest generation number. The generation may be reset by drivers, which should be fine for consumers, assuming that all ResourceSlices in a pool are updated to match or deleted.
  /// [name] Name is used to identify the pool. For node-local devices, this is often the node name, but this is not required.
  /// [resourceSliceCount] ResourceSliceCount is the total number of ResourceSlices in the pool at this generation number. Must be greater than zero.
  ResourcePoolResourceK8sIoV1beta2({
    required this.generation,
    required this.name,
    required this.resourceSliceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': generation,
      'name': name,
      'resourceSliceCount': resourceSliceCount,
    };
  }

  factory ResourcePoolResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourcePoolResourceK8sIoV1beta2(
      generation: (map['generation'] as int).input(),
      name: (map['name'] as String).input(),
      resourceSliceCount: (map['resourceSliceCount'] as int).input(),
    );
  }
}

