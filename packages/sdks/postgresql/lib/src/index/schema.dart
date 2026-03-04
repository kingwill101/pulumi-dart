import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'schema_state.dart';

class Schema extends pulumi.CustomResource {
  /// The DATABASE in which where this schema will be created. (Default: The database used by your `provider` configuration)
  late final pulumi.Output<String> database;

  /// When true, will also drop all the objects that are contained in the schema. (Default: false)
  late final pulumi.Output<bool?> dropCascade;

  /// When true, use the existing schema if it exists. (Default: true)
  late final pulumi.Output<bool?> ifNotExists;

  /// The name of the schema. Must be unique in the PostgreSQL
  /// database instance where it is configured.
  late final pulumi.Output<String> name;

  /// The ROLE who owns the schema.
  late final pulumi.Output<String> owner;

  /// Can be specified multiple times for each policy.  Each
  /// policy block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> policies;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_index_schema_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(String name, {SchemaArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'postgresql:index/schema:Schema',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    ifNotExists = registerOutput<bool?>('ifNotExists');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
  }

  /// Gets an existing [Schema] resource's state with the given [name] and [id].
  static Schema get(
    String name,
    pulumi.Input<String> id, {
    SchemaState? state,
  }) {
    return Schema._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schema._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'postgresql:index/schema:Schema',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    database = registerOutput<String>('database');
    dropCascade = registerOutput<bool?>('dropCascade');
    ifNotExists = registerOutput<bool?>('ifNotExists');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    policies = registerOutput<List<Map<String, dynamic>>>('policies');
  }
}
