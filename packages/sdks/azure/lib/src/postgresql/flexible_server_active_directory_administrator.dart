import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_active_directory_administrator_args.dart';
import 'flexible_server_active_directory_administrator_state.dart';

/// Allows you to set a user or group as the AD administrator for a PostgreSQL Flexible Server.
///
/// ## Import
///
/// A PostgreSQL Flexible Server Active Directory Administrator can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:postgresql/flexibleServerActiveDirectoryAdministrator:FlexibleServerActiveDirectoryAdministrator example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/myserver/administrators/objectId
/// ```
class FlexibleServerActiveDirectoryAdministrator extends pulumi.CustomResource {
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created.
  late final pulumi.Output<String> objectId;
  /// The name of Azure Active Directory principal. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalName;
  /// The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> principalType;
  /// The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverName;
  /// The Azure Tenant ID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleServerActiveDirectoryAdministrator]. {@macro pulumi_postgresql_flexible_server_active_directory_administrator_flexible_server_active_directory_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleServerActiveDirectoryAdministrator(
    String name, {
    FlexibleServerActiveDirectoryAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerActiveDirectoryAdministrator:FlexibleServerActiveDirectoryAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.objectId = registerOutput<String>('objectId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [FlexibleServerActiveDirectoryAdministrator] resource's state with the given [name] and [id].
  static FlexibleServerActiveDirectoryAdministrator get(
    String name,
    pulumi.Input<String> id, {
    FlexibleServerActiveDirectoryAdministratorState? state,
  }) {
    return FlexibleServerActiveDirectoryAdministrator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlexibleServerActiveDirectoryAdministrator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:postgresql/flexibleServerActiveDirectoryAdministrator:FlexibleServerActiveDirectoryAdministrator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.objectId = registerOutput<String>('objectId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serverName = registerOutput<String>('serverName');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
