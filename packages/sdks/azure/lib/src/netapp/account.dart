import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_active_directory.dart';
import 'account_args.dart';
import 'account_identity.dart';
import 'account_state.dart';

/// Manages a NetApp Account.
///
/// > **Note:** Azure allows only one active directory can be joined to a single subscription at a time for NetApp Account.
///
/// ## NetApp Account Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "anf-user-assigned-identity",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleAccount = new azure.netapp.Account("example", {
///     name: "netappaccount",
///     location: example.location,
///     resourceGroupName: example.name,
///     activeDirectory: {
///         username: "aduser",
///         password: "aduserpwd",
///         smbServerName: "SMBSERVER",
///         dnsServers: ["1.2.3.4"],
///         domain: "westcentralus.com",
///         organizationalUnit: "OU=FirstLevel",
///     },
///     identity: {
///         type: "UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="anf-user-assigned-identity",
///     location=example.location,
///     resource_group_name=example.name)
/// example_account = azure.netapp.Account("example",
///     name="netappaccount",
///     location=example.location,
///     resource_group_name=example.name,
///     active_directory={
///         "username": "aduser",
///         "password": "aduserpwd",
///         "smb_server_name": "SMBSERVER",
///         "dns_servers": ["1.2.3.4"],
///         "domain": "westcentralus.com",
///         "organizational_unit": "OU=FirstLevel",
///     },
///     identity={
///         "type": "UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "anf-user-assigned-identity",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleAccount = new Azure.NetApp.Account("example", new()
///     {
///         Name = "netappaccount",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ActiveDirectory = new Azure.NetApp.Inputs.AccountActiveDirectoryArgs
///         {
///             Username = "aduser",
///             Password = "aduserpwd",
///             SmbServerName = "SMBSERVER",
///             DnsServers = new[]
///             {
///                 "1.2.3.4",
///             },
///             Domain = "westcentralus.com",
///             OrganizationalUnit = "OU=FirstLevel",
///         },
///         Identity = new Azure.NetApp.Inputs.AccountIdentityArgs
///         {
///             Type = "UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/netapp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("anf-user-assigned-identity"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = netapp.NewAccount(ctx, "example", &netapp.AccountArgs{
/// 			Name:              pulumi.String("netappaccount"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ActiveDirectory: &netapp.AccountActiveDirectoryArgs{
/// 				Username:      pulumi.String("aduser"),
/// 				Password:      pulumi.String("aduserpwd"),
/// 				SmbServerName: pulumi.String("SMBSERVER"),
/// 				DnsServers: pulumi.StringArray{
/// 					pulumi.String("1.2.3.4"),
/// 				},
/// 				Domain:             pulumi.String("westcentralus.com"),
/// 				OrganizationalUnit: pulumi.String("OU=FirstLevel"),
/// 			},
/// 			Identity: &netapp.AccountIdentityArgs{
/// 				Type: pulumi.String("UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.netapp.Account;
/// import com.pulumi.azure.netapp.AccountArgs;
/// import com.pulumi.azure.netapp.inputs.AccountActiveDirectoryArgs;
/// import com.pulumi.azure.netapp.inputs.AccountIdentityArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("anf-user-assigned-identity")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("netappaccount")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .activeDirectory(AccountActiveDirectoryArgs.builder()
///                 .username("aduser")
///                 .password("aduserpwd")
///                 .smbServerName("SMBSERVER")
///                 .dnsServers("1.2.3.4")
///                 .domain("westcentralus.com")
///                 .organizationalUnit("OU=FirstLevel")
///                 .build())
///             .identity(AccountIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
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
///       name: example-resources
///       location: West Europe
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       name: anf-user-assigned-identity
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleAccount:
///     type: azure:netapp:Account
///     name: example
///     properties:
///       name: netappaccount
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       activeDirectory:
///         username: aduser
///         password: aduserpwd
///         smbServerName: SMBSERVER
///         dnsServers:
///           - 1.2.3.4
///         domain: westcentralus.com
///         organizationalUnit: OU=FirstLevel
///       identity:
///         type: UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
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
/// * `Microsoft.NetApp` - 2025-06-01
///
/// ## Import
///
/// NetApp Accounts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/account:Account example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1
/// ```
///
/// > **Note:** When importing a NetApp account, the `active_directory.password` and `active_directory.server_root_ca_certificate` values *cannot* be retrieved from the Azure API and will need to be redeclared within the resource.
class Account extends pulumi.CustomResource {
  /// A `active_directory` block as defined below.
  late final pulumi.Output<AccountActiveDirectory?> activeDirectory;
  /// The `identity` block where it is used when customer managed keys based encryption will be enabled as defined below.
  late final pulumi.Output<AccountIdentity?> identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the NetApp Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group where the NetApp Account should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_netapp_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectory = registerOutput<AccountActiveDirectory?>('activeDirectory');
    this.identity = registerOutput<AccountIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectory = registerOutput<AccountActiveDirectory?>('activeDirectory');
    this.identity = registerOutput<AccountIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
