import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_association_args.dart';
import 'private_link_association_state.dart';

/// Manages a Resource Management Private Link Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const example = azure.core.getClientConfig({});
/// const exampleGetGroup = example.then(example => azure.management.getGroup({
///     name: example.tenantId,
/// }));
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const examplePrivateLink = new azure.management.PrivateLink("example", {
///     name: "example",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
/// });
/// const exampleUuid = new random.index.Uuid("example", {});
/// const examplePrivateLinkAssociation = new azure.management.PrivateLinkAssociation("example", {
///     name: exampleUuid.result,
///     managementGroupId: exampleAzurermManagementGroup.id,
///     resourceManagementPrivateLinkId: examplePrivateLink.id,
///     publicNetworkAccessEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// example = azure.core.get_client_config()
/// example_get_group = azure.management.get_group(name=example.tenant_id)
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_private_link = azure.management.PrivateLink("example",
///     name="example",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location)
/// example_uuid = random.index.Uuid("example")
/// example_private_link_association = azure.management.PrivateLinkAssociation("example",
///     name=example_uuid["result"],
///     management_group_id=example_azurerm_management_group["id"],
///     resource_management_private_link_id=example_private_link.id,
///     public_network_access_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGetGroup = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = example.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var examplePrivateLink = new Azure.Management.PrivateLink("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleUuid = new Random.Index.Uuid("example");
///
///     var examplePrivateLinkAssociation = new Azure.Management.PrivateLinkAssociation("example", new()
///     {
///         Name = exampleUuid.Result,
///         ManagementGroupId = exampleAzurermManagementGroup.Id,
///         ResourceManagementPrivateLinkId = examplePrivateLink.Id,
///         PublicNetworkAccessEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef(example.TenantId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePrivateLink, err := management.NewPrivateLink(ctx, "example", &management.PrivateLinkArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUuid, err := random.NewUuid(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewPrivateLinkAssociation(ctx, "example", &management.PrivateLinkAssociationArgs{
/// 			Name:                            exampleUuid.Result,
/// 			ManagementGroupId:               pulumi.Any(exampleAzurermManagementGroup.Id),
/// 			ResourceManagementPrivateLinkId: examplePrivateLink.ID(),
/// 			PublicNetworkAccessEnabled:      pulumi.Bool(true),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.management.PrivateLink;
/// import com.pulumi.azure.management.PrivateLinkArgs;
/// import com.pulumi.random.Uuid;
/// import com.pulumi.azure.management.PrivateLinkAssociation;
/// import com.pulumi.azure.management.PrivateLinkAssociationArgs;
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
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var exampleGetGroup = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name(example.tenantId())
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var examplePrivateLink = new PrivateLink("examplePrivateLink", PrivateLinkArgs.builder()
///             .name("example")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleUuid = new Uuid("exampleUuid");
///
///         var examplePrivateLinkAssociation = new PrivateLinkAssociation("examplePrivateLinkAssociation", PrivateLinkAssociationArgs.builder()
///             .name(exampleUuid.result())
///             .managementGroupId(exampleAzurermManagementGroup.id())
///             .resourceManagementPrivateLinkId(examplePrivateLink.id())
///             .publicNetworkAccessEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example
///       location: West Europe
///   examplePrivateLink:
///     type: azure:management:PrivateLink
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///   exampleUuid:
///     type: random:Uuid
///     name: example
///   examplePrivateLinkAssociation:
///     type: azure:management:PrivateLinkAssociation
///     name: example
///     properties:
///       name: ${exampleUuid.result}
///       managementGroupId: ${exampleAzurermManagementGroup.id}
///       resourceManagementPrivateLinkId: ${examplePrivateLink.id}
///       publicNetworkAccessEnabled: true
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetGroup:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: ${example.tenantId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2020-05-01
///
/// ## Import
///
/// An existing Private Link Association can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/privateLinkAssociation:PrivateLinkAssociation example /providers/Microsoft.Management/managementGroups/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/privateLinkAssociations/00000000-0000-0000-0000-000000000000
/// ```
class PrivateLinkAssociation extends pulumi.CustomResource {
  /// Specifies the Management Group ID within which this Private Link Association should exist. Changing this forces a new Private Link Association to be created.
  ///
  /// &gt; **Note:** For now, `management_group_id` must be the ID of [Root Management Group](https://learn.microsoft.com/en-us/azure/governance/management-groups/overview#root-management-group-for-each-directory).
  late final pulumi.Output<String> managementGroupId;

  /// Specifies the name of this Private Link Association, which should be a UUID. If `name` is not provided, a UUID will be generated, you should use the `ignore_changes` attribute to ignore changes to this field. Changing this forces a new Private Link Association to be created.
  late final pulumi.Output<String> name;

  /// Whether public network access is allowed. Changing this forces a new Private Link Association to be created.
  late final pulumi.Output<bool> publicNetworkAccessEnabled;

  /// The Resource ID of Resource Management Private Link. Changing this forces a new Private Link Association to be created.
  late final pulumi.Output<String> resourceManagementPrivateLinkId;

  /// The Tenant ID.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [PrivateLinkAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkAssociation]. {@macro pulumi_management_private_link_association_private_link_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkAssociation(
    String name, {
    PrivateLinkAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:management/privateLinkAssociation:PrivateLinkAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool>(
      'publicNetworkAccessEnabled',
    );
    resourceManagementPrivateLinkId = registerOutput<String>(
      'resourceManagementPrivateLinkId',
    );
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [PrivateLinkAssociation] resource's state with the given [name] and [id].
  static PrivateLinkAssociation get(
    String name,
    pulumi.Input<String> id, {
    PrivateLinkAssociationState? state,
  }) {
    return PrivateLinkAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateLinkAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:management/privateLinkAssociation:PrivateLinkAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    publicNetworkAccessEnabled = registerOutput<bool>(
      'publicNetworkAccessEnabled',
    );
    resourceManagementPrivateLinkId = registerOutput<String>(
      'resourceManagementPrivateLinkId',
    );
    tenantId = registerOutput<String>('tenantId');
  }
}
