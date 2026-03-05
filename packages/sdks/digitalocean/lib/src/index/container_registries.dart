import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registries_args.dart';
import 'container_registries_state.dart';

class ContainerRegistries extends pulumi.CustomResource {
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> endpoint;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> serverUrl;
  late final pulumi.Output<int> storageUsageBytes;
  late final pulumi.Output<String> subscriptionTierSlug;

  /// Creates a new [ContainerRegistries].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerRegistries]. {@macro pulumi_index_container_registries_container_registries_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerRegistries(
    String name, {
    ContainerRegistriesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistries:ContainerRegistries',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverUrl = registerOutput<String>('serverUrl');
    storageUsageBytes = registerOutput<int>('storageUsageBytes');
    subscriptionTierSlug = registerOutput<String>('subscriptionTierSlug');
  }

  /// Gets an existing [ContainerRegistries] resource's state with the given [name] and [id].
  static ContainerRegistries get(
    String name,
    pulumi.Input<String> id, {
    ContainerRegistriesState? state,
  }) {
    return ContainerRegistries._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerRegistries._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/containerRegistries:ContainerRegistries',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverUrl = registerOutput<String>('serverUrl');
    storageUsageBytes = registerOutput<int>('storageUsageBytes');
    subscriptionTierSlug = registerOutput<String>('subscriptionTierSlug');
  }
}
