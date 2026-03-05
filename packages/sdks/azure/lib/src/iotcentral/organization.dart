import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_args.dart';
import 'organization_state.dart';

/// Manages an IoT Central Organization
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource",
///     location: "West Europe",
/// });
/// const exampleApplication = new azure.iotcentral.Application("example", {
///     name: "example-iotcentral-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     subDomain: "example-iotcentral-app-subdomain",
///     displayName: "example-iotcentral-app-display-name",
///     sku: "ST1",
///     template: "iotc-default@1.0.0",
///     tags: {
///         Foo: "Bar",
///     },
/// });
/// const exampleParent = new azure.iotcentral.Organization("example_parent", {
///     iotcentralApplicationId: exampleApplication.id,
///     organizationId: "example-parent-organization-id",
///     displayName: "Org example parent",
/// });
/// const exampleOrganization = new azure.iotcentral.Organization("example", {
///     iotcentralApplicationId: exampleApplication.id,
///     organizationId: "example-child-organization-id",
///     displayName: "Org example",
///     parentOrganizationId: exampleParent.organizationId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource",
///     location="West Europe")
/// example_application = azure.iotcentral.Application("example",
///     name="example-iotcentral-app",
///     resource_group_name=example.name,
///     location=example.location,
///     sub_domain="example-iotcentral-app-subdomain",
///     display_name="example-iotcentral-app-display-name",
///     sku="ST1",
///     template="iotc-default@1.0.0",
///     tags={
///         "Foo": "Bar",
///     })
/// example_parent = azure.iotcentral.Organization("example_parent",
///     iotcentral_application_id=example_application.id,
///     organization_id="example-parent-organization-id",
///     display_name="Org example parent")
/// example_organization = azure.iotcentral.Organization("example",
///     iotcentral_application_id=example_application.id,
///     organization_id="example-child-organization-id",
///     display_name="Org example",
///     parent_organization_id=example_parent.organization_id)
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
///         Name = "example-resource",
///         Location = "West Europe",
///     });
///
///     var exampleApplication = new Azure.IotCentral.Application("example", new()
///     {
///         Name = "example-iotcentral-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubDomain = "example-iotcentral-app-subdomain",
///         DisplayName = "example-iotcentral-app-display-name",
///         Sku = "ST1",
///         Template = "iotc-default@1.0.0",
///         Tags =
///         {
///             { "Foo", "Bar" },
///         },
///     });
///
///     var exampleParent = new Azure.IotCentral.Organization("example_parent", new()
///     {
///         IotcentralApplicationId = exampleApplication.Id,
///         OrganizationId = "example-parent-organization-id",
///         DisplayName = "Org example parent",
///     });
///
///     var exampleOrganization = new Azure.IotCentral.Organization("example", new()
///     {
///         IotcentralApplicationId = exampleApplication.Id,
///         OrganizationId = "example-child-organization-id",
///         DisplayName = "Org example",
///         ParentOrganizationId = exampleParent.OrganizationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/iotcentral"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := iotcentral.NewApplication(ctx, "example", &iotcentral.ApplicationArgs{
/// 			Name:              pulumi.String("example-iotcentral-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubDomain:         pulumi.String("example-iotcentral-app-subdomain"),
/// 			DisplayName:       pulumi.String("example-iotcentral-app-display-name"),
/// 			Sku:               pulumi.String("ST1"),
/// 			Template:          pulumi.String("iotc-default@1.0.0"),
/// 			Tags: pulumi.StringMap{
/// 				"Foo": pulumi.String("Bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleParent, err := iotcentral.NewOrganization(ctx, "example_parent", &iotcentral.OrganizationArgs{
/// 			IotcentralApplicationId: exampleApplication.ID(),
/// 			OrganizationId:          pulumi.String("example-parent-organization-id"),
/// 			DisplayName:             pulumi.String("Org example parent"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iotcentral.NewOrganization(ctx, "example", &iotcentral.OrganizationArgs{
/// 			IotcentralApplicationId: exampleApplication.ID(),
/// 			OrganizationId:          pulumi.String("example-child-organization-id"),
/// 			DisplayName:             pulumi.String("Org example"),
/// 			ParentOrganizationId:    exampleParent.OrganizationId,
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
/// import com.pulumi.azure.iotcentral.Application;
/// import com.pulumi.azure.iotcentral.ApplicationArgs;
/// import com.pulumi.azure.iotcentral.Organization;
/// import com.pulumi.azure.iotcentral.OrganizationArgs;
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
///             .name("example-resource")
///             .location("West Europe")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-iotcentral-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subDomain("example-iotcentral-app-subdomain")
///             .displayName("example-iotcentral-app-display-name")
///             .sku("ST1")
///             .template("iotc-default@1.0.0")
///             .tags(Map.of("Foo", "Bar"))
///             .build());
///
///         var exampleParent = new Organization("exampleParent", OrganizationArgs.builder()
///             .iotcentralApplicationId(exampleApplication.id())
///             .organizationId("example-parent-organization-id")
///             .displayName("Org example parent")
///             .build());
///
///         var exampleOrganization = new Organization("exampleOrganization", OrganizationArgs.builder()
///             .iotcentralApplicationId(exampleApplication.id())
///             .organizationId("example-child-organization-id")
///             .displayName("Org example")
///             .parentOrganizationId(exampleParent.organizationId())
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
///       name: example-resource
///       location: West Europe
///   exampleApplication:
///     type: azure:iotcentral:Application
///     name: example
///     properties:
///       name: example-iotcentral-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subDomain: example-iotcentral-app-subdomain
///       displayName: example-iotcentral-app-display-name
///       sku: ST1
///       template: iotc-default@1.0.0
///       tags:
///         Foo: Bar
///   exampleParent:
///     type: azure:iotcentral:Organization
///     name: example_parent
///     properties:
///       iotcentralApplicationId: ${exampleApplication.id}
///       organizationId: example-parent-organization-id
///       displayName: Org example parent
///   exampleOrganization:
///     type: azure:iotcentral:Organization
///     name: example
///     properties:
///       iotcentralApplicationId: ${exampleApplication.id}
///       organizationId: example-child-organization-id
///       displayName: Org example
///       parentOrganizationId: ${exampleParent.organizationId}
/// ```
///
///
/// ## Import
///
/// The IoT Central Organization can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azure:iotcentral/organization:Organization example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.IoTCentral/iotApps/example/organizations/example
/// ```
class Organization extends pulumi.CustomResource {
  /// Custom `display_name` for the organization.
  late final pulumi.Output<String> displayName;
  /// The application `id`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> iotcentralApplicationId;
  /// The ID of the organization. Changing this forces a new resource to be created.
  late final pulumi.Output<String> organizationId;
  /// The `organization_id` of the parent organization. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> parentOrganizationId;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_iotcentral_organization_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iotcentral/organization:Organization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    iotcentralApplicationId = registerOutput<String>('iotcentralApplicationId');
    organizationId = registerOutput<String>('organizationId');
    parentOrganizationId = registerOutput<String?>('parentOrganizationId');
  }

  /// Gets an existing [Organization] resource's state with the given [name] and [id].
  static Organization get(
    String name,
    pulumi.Input<String> id, {
    OrganizationState? state,
  }) {
    return Organization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Organization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:iotcentral/organization:Organization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    iotcentralApplicationId = registerOutput<String>('iotcentralApplicationId');
    organizationId = registerOutput<String>('organizationId');
    parentOrganizationId = registerOutput<String?>('parentOrganizationId');
  }
}
