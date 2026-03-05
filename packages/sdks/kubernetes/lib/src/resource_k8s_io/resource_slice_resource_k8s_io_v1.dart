import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_slice_args.dart';
import 'resource_slice_spec.dart';

/// ResourceSlice represents one or more resources in a pool of similar resources, managed by a common driver. A pool may span more than one ResourceSlice, and exactly how many ResourceSlices comprise a pool is determined by the driver.
///
/// At the moment, the only supported resources are devices with attributes and capacities. Each device in a given pool, regardless of how many ResourceSlices, must have a unique name. The ResourceSlice in which a device gets published may change over time. The unique identifier for a device is the tuple &lt;driver name&gt;, &lt;pool name&gt;, &lt;device name&gt;.
///
/// Whenever a driver needs to update a pool, it increments the pool.Spec.Pool.Generation number and updates all ResourceSlices with that new number and new resource definitions. A consumer must only use ResourceSlices with the highest generation number and ignore all others.
///
/// When allocating all resources in a pool matching certain criteria or when looking for the best solution among several different alternatives, a consumer should check the number of ResourceSlices in a pool (included in each ResourceSlice) to determine whether its view of a pool is complete and if not, should wait until the driver has completed updating the pool.
///
/// For resources that are not local to a node, the node name is not set. Instead, the driver may use a node selector to specify where the devices are available.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceSliceResourceK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Contains the information published by the driver.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  late final pulumi.Output<ResourceSliceSpec> spec;

  /// Creates a new [ResourceSliceResourceK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSliceResourceK8sIoV1]. {@macro pulumi_resource_k8s_io_v1_resource_slice_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSliceResourceK8sIoV1(
    String name, {
    ResourceSliceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1:ResourceSlice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourceSliceSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceSliceSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
