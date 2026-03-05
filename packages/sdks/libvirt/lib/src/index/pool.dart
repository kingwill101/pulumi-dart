import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_args.dart';
import 'pool_features.dart';
import 'pool_refresh.dart';
import 'pool_source.dart';
import 'pool_state.dart';
import 'pool_target.dart';
import '../internal/package_registration.dart' as package_registration;

/// Storage pool for managing storage volumes
class Pool extends pulumi.CustomResource {
  /// Configures the amount of storage allocated to the pool, determining capacity usage.
  late final pulumi.Output<double> allocation;

  /// Specifies the unit type for the pool's allocated storage, defining measurement standards.
  late final pulumi.Output<String?> allocationUnit;

  /// Indicates the amount of available storage within the pool for new allocations.
  late final pulumi.Output<double> available;

  /// Sets the unit type for measuring available storage within the pool.
  late final pulumi.Output<String?> availableUnit;

  /// Configures the total capacity of the storage pool, defining its maximum size.
  late final pulumi.Output<double> capacity;

  /// Specifies the unit type for measuring the total capacity of the storage pool.
  late final pulumi.Output<String?> capacityUnit;

  /// Defines optional features supported by the storage pool, enhancing functional capabilities.
  late final pulumi.Output<PoolFeatures?> features;

  /// Sets the unique name for the storage pool, required for identification on the host.
  late final pulumi.Output<String> name;

  /// Controls the refresh behavior of the storage pool and associated volumes.
  late final pulumi.Output<PoolRefresh?> refresh;

  /// Source location for the storage pool
  late final pulumi.Output<PoolSource?> source;

  /// Target path and permissions for the storage pool
  late final pulumi.Output<PoolTarget?> target;

  /// Specifies the type of the storage pool being defined.
  late final pulumi.Output<String> type;

  /// Sets the universally unique identifier for the storage pool.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_index_pool_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'libvirt:index/pool:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
        registerPackageRequest: package_registration.registerPackageRequest,
      ) {
    allocation = registerOutput<double>('allocation');
    allocationUnit = registerOutput<String?>('allocationUnit');
    available = registerOutput<double>('available');
    availableUnit = registerOutput<String?>('availableUnit');
    capacity = registerOutput<double>('capacity');
    capacityUnit = registerOutput<String?>('capacityUnit');
    features = registerOutput<PoolFeatures?>(
      'features',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolFeatures.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    refresh = registerOutput<PoolRefresh?>(
      'refresh',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolRefresh.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    source = registerOutput<PoolSource?>(
      'source',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    target = registerOutput<PoolTarget?>(
      'target',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [Pool] resource's state with the given [name] and [id].
  static Pool get(String name, pulumi.Input<String> id, {PoolState? state}) {
    return Pool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'libvirt:index/pool:Pool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocation = registerOutput<double>('allocation');
    allocationUnit = registerOutput<String?>('allocationUnit');
    available = registerOutput<double>('available');
    availableUnit = registerOutput<String?>('availableUnit');
    capacity = registerOutput<double>('capacity');
    capacityUnit = registerOutput<String?>('capacityUnit');
    features = registerOutput<PoolFeatures?>(
      'features',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolFeatures.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    refresh = registerOutput<PoolRefresh?>(
      'refresh',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolRefresh.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    source = registerOutput<PoolSource?>(
      'source',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    target = registerOutput<PoolTarget?>(
      'target',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PoolTarget.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
