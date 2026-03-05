import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

class Database extends pulumi.CustomResource {
  /// If `false` then no one can connect to this
  /// database. The default is `true`, allowing connections (except as restricted by
  /// other mechanisms, such as `GRANT` or `REVOKE CONNECT`).
  late final pulumi.Output<bool?> allowConnections;
  /// If `true`, the change of the database
  /// `owner` will also include a reassignment of the ownership of preexisting
  /// objects like tables or sequences from the previous owner to the new one.
  /// If set to `false` (the default), then the previous database `owner` will still
  /// hold the ownership of the objects in that database. To alter existing objects in
  /// the database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider must be superuser.
  late final pulumi.Output<bool?> alterObjectOwnership;
  /// How many concurrent connections can be
  /// established to this database. `-1` (the default) means no limit.
  late final pulumi.Output<int?> connectionLimit;
  /// Character set encoding to use in the new database
  late final pulumi.Output<String> encoding;
  /// If `true`, then this database can be cloned by any
  /// user with `CREATEDB` privileges; if `false` (the default), then only
  /// superusers or the owner of the database can clone it.
  late final pulumi.Output<bool> isTemplate;
  /// Collation order (LC_COLLATE) to use in the new database
  late final pulumi.Output<String> lcCollate;
  /// Character classification (LC_CTYPE) to use in the new database
  late final pulumi.Output<String> lcCtype;
  /// The name of the database. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  late final pulumi.Output<String> name;
  /// The role name of the user who will own the database, or
  /// `DEFAULT` to use the default (namely, the user executing the command). To
  /// create a database owned by another role or to change the owner of an existing
  /// database, you must be a direct or indirect member of the specified role, or
  /// the username in the provider is a superuser.
  late final pulumi.Output<String> owner;
  /// The name of the tablespace that will be
  /// associated with the database, or `DEFAULT` to use the template database's
  /// tablespace.  This tablespace will be the default tablespace used for objects
  /// created in this database.
  late final pulumi.Output<String> tablespaceName;
  /// The name of the template from which to create the new database
  late final pulumi.Output<String> template;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_index_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowConnections = registerOutput<bool?>('allowConnections');
    alterObjectOwnership = registerOutput<bool?>('alterObjectOwnership');
    connectionLimit = registerOutput<int?>('connectionLimit');
    encoding = registerOutput<String>('encoding');
    isTemplate = registerOutput<bool>('isTemplate');
    lcCollate = registerOutput<String>('lcCollate');
    lcCtype = registerOutput<String>('lcCtype');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    tablespaceName = registerOutput<String>('tablespaceName');
    template = registerOutput<String>('template');
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowConnections = registerOutput<bool?>('allowConnections');
    alterObjectOwnership = registerOutput<bool?>('alterObjectOwnership');
    connectionLimit = registerOutput<int?>('connectionLimit');
    encoding = registerOutput<String>('encoding');
    isTemplate = registerOutput<bool>('isTemplate');
    lcCollate = registerOutput<String>('lcCollate');
    lcCtype = registerOutput<String>('lcCtype');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    tablespaceName = registerOutput<String>('tablespaceName');
    template = registerOutput<String>('template');
  }
}
