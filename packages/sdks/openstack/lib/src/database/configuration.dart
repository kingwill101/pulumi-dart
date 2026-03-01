import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_args.dart';
import 'configuration_configuration.dart';
import 'configuration_datastore.dart';
import 'configuration_state.dart';

class Configuration extends pulumi.CustomResource {
  /// An array of configuration parameter name and value. Can be specified multiple times. The configuration object structure is documented below.
  late final pulumi.Output<List<ConfigurationConfiguration>?> configurations;
  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates resource.
  late final pulumi.Output<ConfigurationDatastore> datastore;
  /// Description of the resource.
  late final pulumi.Output<String> description;
  /// A unique name for the resource.
  late final pulumi.Output<String> name;
  /// The region in which to create the db instance. Changing this
  /// creates a new instance.
  late final pulumi.Output<String> region;

  /// Creates a new [Configuration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configuration]. {@macro pulumi_database_configuration_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configuration(
    String name, {
    ConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:database/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configurations = registerOutput<List<ConfigurationConfiguration>?>('configurations');
    this.datastore = registerOutput<ConfigurationDatastore>('datastore');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [Configuration] resource's state with the given [name] and [id].
  static Configuration get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationState? state,
  }) {
    return Configuration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Configuration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:database/configuration:Configuration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configurations = registerOutput<List<ConfigurationConfiguration>?>('configurations');
    this.datastore = registerOutput<ConfigurationDatastore>('datastore');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
