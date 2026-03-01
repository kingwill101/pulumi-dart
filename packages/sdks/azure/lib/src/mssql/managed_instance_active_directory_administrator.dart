import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_active_directory_administrator_args.dart';
import 'managed_instance_active_directory_administrator_state.dart';

/// Allows you to set a user, group or service principal as the AAD Administrator for an Azure SQL Managed Instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleManagedInstance = new azure.mssql.ManagedInstance("example", {
///     name: "managedsqlinstance",
///     resourceGroupName: example.name,
///     location: example.location,
///     licenseType: "BasePrice",
///     skuName: "GP_Gen5",
///     storageSizeInGb: 32,
///     subnetId: exampleSubnet.id,
///     vcores: 4,
///     administratorLogin: "msadministrator",
///     administratorLoginPassword: "thisIsDog11",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const reader = new azuread.DirectoryRole("reader", {displayName: "Directory Readers"});
/// const exampleDirectoryRoleMember = new azuread.DirectoryRoleMember("example", {
///     roleObjectId: reader.objectId,
///     memberObjectId: exampleManagedInstance.identity.apply(identity => identity?.principalId),
/// });
/// const admin = new azuread.User("admin", {
///     userPrincipalName: "ms.admin@example.com",
///     displayName: "Ms Admin",
///     mailNickname: "ms.admin",
///     password: "SecretP@sswd99!",
/// });
/// const exampleManagedInstanceActiveDirectoryAdministrator = new azure.mssql.ManagedInstanceActiveDirectoryAdministrator("example", {
///     managedInstanceId: exampleManagedInstance.id,
///     loginUsername: "msadmin",
///     objectId: admin.objectId,
///     tenantId: current.then(current => current.tenantId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_managed_instance = azure.mssql.ManagedInstance("example",
///     name="managedsqlinstance",
///     resource_group_name=example.name,
///     location=example.location,
///     license_type="BasePrice",
///     sku_name="GP_Gen5",
///     storage_size_in_gb=32,
///     subnet_id=example_subnet.id,
///     vcores=4,
///     administrator_login="msadministrator",
///     administrator_login_password="thisIsDog11",
///     identity={
///         "type": "SystemAssigned",
///     })
/// reader = azuread.DirectoryRole("reader", display_name="Directory Readers")
/// example_directory_role_member = azuread.DirectoryRoleMember("example",
///     role_object_id=reader.object_id,
///     member_object_id=example_managed_instance.identity.principal_id)
/// admin = azuread.User("admin",
///     user_principal_name="ms.admin@example.com",
///     display_name="Ms Admin",
///     mail_nickname="ms.admin",
///     password="SecretP@sswd99!")
/// example_managed_instance_active_directory_administrator = azure.mssql.ManagedInstanceActiveDirectoryAdministrator("example",
///     managed_instance_id=example_managed_instance.id,
///     login_username="msadmin",
///     object_id=admin.object_id,
///     tenant_id=current.tenant_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleManagedInstance = new Azure.MSSql.ManagedInstance("example", new()
///     {
///         Name = "managedsqlinstance",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         LicenseType = "BasePrice",
///         SkuName = "GP_Gen5",
///         StorageSizeInGb = 32,
///         SubnetId = exampleSubnet.Id,
///         Vcores = 4,
///         AdministratorLogin = "msadministrator",
///         AdministratorLoginPassword = "thisIsDog11",
///         Identity = new Azure.MSSql.Inputs.ManagedInstanceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var reader = new AzureAD.DirectoryRole("reader", new()
///     {
///         DisplayName = "Directory Readers",
///     });
///
///     var exampleDirectoryRoleMember = new AzureAD.DirectoryRoleMember("example", new()
///     {
///         RoleObjectId = reader.ObjectId,
///         MemberObjectId = exampleManagedInstance.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var admin = new AzureAD.User("admin", new()
///     {
///         UserPrincipalName = "ms.admin@example.com",
///         DisplayName = "Ms Admin",
///         MailNickname = "ms.admin",
///         Password = "SecretP@sswd99!",
///     });
///
///     var exampleManagedInstanceActiveDirectoryAdministrator = new Azure.MSSql.ManagedInstanceActiveDirectoryAdministrator("example", new()
///     {
///         ManagedInstanceId = exampleManagedInstance.Id,
///         LoginUsername = "msadmin",
///         ObjectId = admin.ObjectId,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mssql"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleManagedInstance, err := mssql.NewManagedInstance(ctx, "example", &mssql.ManagedInstanceArgs{
/// 			Name:                       pulumi.String("managedsqlinstance"),
/// 			ResourceGroupName:          example.Name,
/// 			Location:                   example.Location,
/// 			LicenseType:                pulumi.String("BasePrice"),
/// 			SkuName:                    pulumi.String("GP_Gen5"),
/// 			StorageSizeInGb:            pulumi.Int(32),
/// 			SubnetId:                   exampleSubnet.ID(),
/// 			Vcores:                     pulumi.Int(4),
/// 			AdministratorLogin:         pulumi.String("msadministrator"),
/// 			AdministratorLoginPassword: pulumi.String("thisIsDog11"),
/// 			Identity: &mssql.ManagedInstanceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		reader, err := azuread.NewDirectoryRole(ctx, "reader", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Directory Readers"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleMember(ctx, "example", &azuread.DirectoryRoleMemberArgs{
/// 			RoleObjectId: reader.ObjectId,
/// 			MemberObjectId: pulumi.String(exampleManagedInstance.Identity.ApplyT(func(identity mssql.ManagedInstanceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		admin, err := azuread.NewUser(ctx, "admin", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("ms.admin@example.com"),
/// 			DisplayName:       pulumi.String("Ms Admin"),
/// 			MailNickname:      pulumi.String("ms.admin"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mssql.NewManagedInstanceActiveDirectoryAdministrator(ctx, "example", &mssql.ManagedInstanceActiveDirectoryAdministratorArgs{
/// 			ManagedInstanceId: exampleManagedInstance.ID(),
/// 			LoginUsername:     pulumi.String("msadmin"),
/// 			ObjectId:          admin.ObjectId,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.mssql.ManagedInstance;
/// import com.pulumi.azure.mssql.ManagedInstanceArgs;
/// import com.pulumi.azure.mssql.inputs.ManagedInstanceIdentityArgs;
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.DirectoryRoleMember;
/// import com.pulumi.azuread.DirectoryRoleMemberArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azure.mssql.ManagedInstanceActiveDirectoryAdministrator;
/// import com.pulumi.azure.mssql.ManagedInstanceActiveDirectoryAdministratorArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleManagedInstance = new ManagedInstance("exampleManagedInstance", ManagedInstanceArgs.builder()
///             .name("managedsqlinstance")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .licenseType("BasePrice")
///             .skuName("GP_Gen5")
///             .storageSizeInGb(32)
///             .subnetId(exampleSubnet.id())
///             .vcores(4)
///             .administratorLogin("msadministrator")
///             .administratorLoginPassword("thisIsDog11")
///             .identity(ManagedInstanceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var reader = new DirectoryRole("reader", DirectoryRoleArgs.builder()
///             .displayName("Directory Readers")
///             .build());
///
///         var exampleDirectoryRoleMember = new DirectoryRoleMember("exampleDirectoryRoleMember", DirectoryRoleMemberArgs.builder()
///             .roleObjectId(reader.objectId())
///             .memberObjectId(exampleManagedInstance.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var admin = new User("admin", UserArgs.builder()
///             .userPrincipalName("ms.admin@example.com")
///             .displayName("Ms Admin")
///             .mailNickname("ms.admin")
///             .password("SecretP@sswd99!")
///             .build());
///
///         var exampleManagedInstanceActiveDirectoryAdministrator = new ManagedInstanceActiveDirectoryAdministrator("exampleManagedInstanceActiveDirectoryAdministrator", ManagedInstanceActiveDirectoryAdministratorArgs.builder()
///             .managedInstanceId(exampleManagedInstance.id())
///             .loginUsername("msadmin")
///             .objectId(admin.objectId())
///             .tenantId(current.tenantId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: rg-example
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleManagedInstance:
///     type: azure:mssql:ManagedInstance
///     name: example
///     properties:
///       name: managedsqlinstance
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       licenseType: BasePrice
///       skuName: GP_Gen5
///       storageSizeInGb: 32
///       subnetId: ${exampleSubnet.id}
///       vcores: 4
///       administratorLogin: msadministrator
///       administratorLoginPassword: thisIsDog11
///       identity:
///         type: SystemAssigned
///   reader:
///     type: azuread:DirectoryRole
///     properties:
///       displayName: Directory Readers
///   exampleDirectoryRoleMember:
///     type: azuread:DirectoryRoleMember
///     name: example
///     properties:
///       roleObjectId: ${reader.objectId}
///       memberObjectId: ${exampleManagedInstance.identity.principalId}
///   admin:
///     type: azuread:User
///     properties:
///       userPrincipalName: ms.admin@example.com
///       displayName: Ms Admin
///       mailNickname: ms.admin
///       password: SecretP@sswd99!
///   exampleManagedInstanceActiveDirectoryAdministrator:
///     type: azure:mssql:ManagedInstanceActiveDirectoryAdministrator
///     name: example
///     properties:
///       managedInstanceId: ${exampleManagedInstance.id}
///       loginUsername: msadmin
///       objectId: ${admin.objectId}
///       tenantId: ${current.tenantId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Sql` - 2023-08-01-preview
///
/// ## Import
///
/// An Azure SQL Active Directory Administrator can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:mssql/managedInstanceActiveDirectoryAdministrator:ManagedInstanceActiveDirectoryAdministrator administrator /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myresourcegroup/providers/Microsoft.Sql/managedInstances/mymanagedinstance/administrators/activeDirectory
/// ```
class ManagedInstanceActiveDirectoryAdministrator extends pulumi.CustomResource {
  /// When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users.
  late final pulumi.Output<bool?> azureadAuthenticationOnly;
  /// The login name of the principal to set as the Managed Instance Administrator.
  late final pulumi.Output<String> loginUsername;
  /// The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedInstanceId;
  /// The Object ID of the principal to set as the Managed Instance Administrator.
  late final pulumi.Output<String> objectId;
  /// The Azure Active Directory Tenant ID.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [ManagedInstanceActiveDirectoryAdministrator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedInstanceActiveDirectoryAdministrator]. {@macro pulumi_mssql_managed_instance_active_directory_administrator_managed_instance_active_directory_administrator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedInstanceActiveDirectoryAdministrator(
    String name, {
    ManagedInstanceActiveDirectoryAdministratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceActiveDirectoryAdministrator:ManagedInstanceActiveDirectoryAdministrator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureadAuthenticationOnly = registerOutput<bool?>('azureadAuthenticationOnly');
    this.loginUsername = registerOutput<String>('loginUsername');
    this.managedInstanceId = registerOutput<String>('managedInstanceId');
    this.objectId = registerOutput<String>('objectId');
    this.tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [ManagedInstanceActiveDirectoryAdministrator] resource's state with the given [name] and [id].
  static ManagedInstanceActiveDirectoryAdministrator get(
    String name,
    pulumi.Input<String> id, {
    ManagedInstanceActiveDirectoryAdministratorState? state,
  }) {
    return ManagedInstanceActiveDirectoryAdministrator._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedInstanceActiveDirectoryAdministrator._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:mssql/managedInstanceActiveDirectoryAdministrator:ManagedInstanceActiveDirectoryAdministrator',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureadAuthenticationOnly = registerOutput<bool?>('azureadAuthenticationOnly');
    this.loginUsername = registerOutput<String>('loginUsername');
    this.managedInstanceId = registerOutput<String>('managedInstanceId');
    this.objectId = registerOutput<String>('objectId');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
