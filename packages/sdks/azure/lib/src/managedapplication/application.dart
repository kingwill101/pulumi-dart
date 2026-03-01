import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_plan.dart';
import 'application_state.dart';

/// Manages a Managed Application.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const current = azure.core.getClientConfig({});
/// const builtin = azure.authorization.getRoleDefinition({
///     name: "Contributor",
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleDefinition = new azure.managedapplication.Definition("example", {
///     name: "examplemanagedapplicationdefinition",
///     location: example.location,
///     resourceGroupName: example.name,
///     lockLevel: "ReadOnly",
///     packageFileUri: "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///     displayName: "TestManagedAppDefinition",
///     description: "Test Managed App Definition",
///     authorizations: [{
///         servicePrincipalId: current.then(current => current.objectId),
///         roleDefinitionId: pulumi.all([builtin.then(builtin => std.split({
///             separator: "/",
///             text: builtin.id,
///         })), builtin.then(builtin => std.split({
///             separator: "/",
///             text: builtin.id,
///         })).then(invoke => invoke.result).length]).apply(([invoke, length]) => invoke.result[length - 1]),
///     }],
/// });
/// const exampleApplication = new azure.managedapplication.Application("example", {
///     name: "example-managedapplication",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "ServiceCatalog",
///     managedResourceGroupName: "infrastructureGroup",
///     applicationDefinitionId: exampleDefinition.id,
///     parameterValues: pulumi.jsonStringify({
///         location: {
///             value: example.location,
///         },
///         storageAccountNamePrefix: {
///             value: "storeNamePrefix",
///         },
///         storageAccountType: {
///             value: "Standard_LRS",
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// current = azure.core.get_client_config()
/// builtin = azure.authorization.get_role_definition(name="Contributor")
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_definition = azure.managedapplication.Definition("example",
///     name="examplemanagedapplicationdefinition",
///     location=example.location,
///     resource_group_name=example.name,
///     lock_level="ReadOnly",
///     package_file_uri="https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///     display_name="TestManagedAppDefinition",
///     description="Test Managed App Definition",
///     authorizations=[{
///         "service_principal_id": current.object_id,
///         "role_definition_id": len(std.split(separator="/",
///             text=builtin.id).result).apply(lambda length: std.split(separator="/",
///             text=builtin.id).result[length - 1]),
///     }])
/// example_application = azure.managedapplication.Application("example",
///     name="example-managedapplication",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="ServiceCatalog",
///     managed_resource_group_name="infrastructureGroup",
///     application_definition_id=example_definition.id,
///     parameter_values=pulumi.Output.json_dumps({
///         "location": {
///             "value": example.location,
///         },
///         "storageAccountNamePrefix": {
///             "value": "storeNamePrefix",
///         },
///         "storageAccountType": {
///             "value": "Standard_LRS",
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var builtin = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Contributor",
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleDefinition = new Azure.ManagedApplication.Definition("example", new()
///     {
///         Name = "examplemanagedapplicationdefinition",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LockLevel = "ReadOnly",
///         PackageFileUri = "https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip",
///         DisplayName = "TestManagedAppDefinition",
///         Description = "Test Managed App Definition",
///         Authorizations = new[]
///         {
///             new Azure.ManagedApplication.Inputs.DefinitionAuthorizationArgs
///             {
///                 ServicePrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 RoleDefinitionId = Output.Tuple(Std.Split.Invoke(new()
///                 {
///                     Separator = "/",
///                     Text = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///                 }), Std.Split.Invoke(new()
///                 {
///                     Separator = "/",
///                     Text = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.Id),
///                 }).Apply(invoke => invoke.Result).Length).Apply(values =>
///                 {
///                     var invoke = values.Item1;
///                     var length = values.Item2;
///                     return invoke.Result[length - 1];
///                 }),
///             },
///         },
///     });
///
///     var exampleApplication = new Azure.ManagedApplication.Application("example", new()
///     {
///         Name = "example-managedapplication",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "ServiceCatalog",
///         ManagedResourceGroupName = "infrastructureGroup",
///         ApplicationDefinitionId = exampleDefinition.Id,
///         ParameterValues = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["location"] = new Dictionary<string, object?>
///             {
///                 ["value"] = example.Location,
///             },
///             ["storageAccountNamePrefix"] = new Dictionary<string, object?>
///             {
///                 ["value"] = "storeNamePrefix",
///             },
///             ["storageAccountType"] = new Dictionary<string, object?>
///             {
///                 ["value"] = "Standard_LRS",
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/managedapplication"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := core.GetClientConfig(ctx, map[string]interface{}{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// builtin, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// Name: pulumi.StringRef("Contributor"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// Name: pulumi.String("example-resources"),
/// Location: pulumi.String("West Europe"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeSplit, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: builtin.Id,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeSplit1, err := std.Split(ctx, &std.SplitArgs{
/// Separator: "/",
/// Text: builtin.Id,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleDefinition, err := managedapplication.NewDefinition(ctx, "example", &managedapplication.DefinitionArgs{
/// Name: pulumi.String("examplemanagedapplicationdefinition"),
/// Location: example.Location,
/// ResourceGroupName: example.Name,
/// LockLevel: pulumi.String("ReadOnly"),
/// PackageFileUri: pulumi.String("https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip"),
/// DisplayName: pulumi.String("TestManagedAppDefinition"),
/// Description: pulumi.String("Test Managed App Definition"),
/// Authorizations: managedapplication.DefinitionAuthorizationArray{
/// &managedapplication.DefinitionAuthorizationArgs{
/// ServicePrincipalId: pulumi.String(current.ObjectId),
/// RoleDefinitionId: len(invokeSplit.Result).ApplyT(func(length int) (string, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(pulumi.StringOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = managedapplication.NewApplication(ctx, "example", &managedapplication.ApplicationArgs{
/// Name: pulumi.String("example-managedapplication"),
/// Location: example.Location,
/// ResourceGroupName: example.Name,
/// Kind: pulumi.String("ServiceCatalog"),
/// ManagedResourceGroupName: pulumi.String("infrastructureGroup"),
/// ApplicationDefinitionId: exampleDefinition.ID(),
/// ParameterValues: example.Location.ApplyT(func(location string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "location": map[string]interface{}{
/// "value": location,
/// },
/// "storageAccountNamePrefix": map[string]interface{}{
/// "value": "storeNamePrefix",
/// },
/// "storageAccountType": map[string]interface{}{
/// "value": "Standard_LRS",
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.managedapplication.Definition;
/// import com.pulumi.azure.managedapplication.DefinitionArgs;
/// import com.pulumi.azure.managedapplication.inputs.DefinitionAuthorizationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
/// import com.pulumi.azure.managedapplication.Application;
/// import com.pulumi.azure.managedapplication.ApplicationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var builtin = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Contributor")
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleDefinition = new Definition("exampleDefinition", DefinitionArgs.builder()
///             .name("examplemanagedapplicationdefinition")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .lockLevel("ReadOnly")
///             .packageFileUri("https://github.com/Azure/azure-managedapp-samples/raw/master/Managed Application Sample Packages/201-managed-storage-account/managedstorage.zip")
///             .displayName("TestManagedAppDefinition")
///             .description("Test Managed App Definition")
///             .authorizations(DefinitionAuthorizationArgs.builder()
///                 .servicePrincipalId(current.objectId())
///                 .roleDefinitionId(StdFunctions.split(SplitArgs.builder()
///                     .separator("/")
///                     .text(builtin.id())
///                     .build()).result().length().applyValue(_length -> StdFunctions.split(SplitArgs.builder()
///                     .separator("/")
///                     .text(builtin.id())
///                     .build()).result()[_length.applyValue(___convert -> ___convert - 1)]))
///                 .build())
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example-managedapplication")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("ServiceCatalog")
///             .managedResourceGroupName("infrastructureGroup")
///             .applicationDefinitionId(exampleDefinition.id())
///             .parameterValues(example.location().applyValue(_location -> serializeJson(
///                 jsonObject(
///                     jsonProperty("location", jsonObject(
///                         jsonProperty("value", _location)
///                     )),
///                     jsonProperty("storageAccountNamePrefix", jsonObject(
///                         jsonProperty("value", "storeNamePrefix")
///                     )),
///                     jsonProperty("storageAccountType", jsonObject(
///                         jsonProperty("value", "Standard_LRS")
///                     ))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Solutions` - 2021-07-01
///
/// ## Import
///
/// Managed Application can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:managedapplication/application:Application example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Solutions/applications/app1
/// ```
class Application extends pulumi.CustomResource {
  /// The application definition ID to deploy.
  late final pulumi.Output<String?> applicationDefinitionId;
  /// The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedResourceGroupName;
  /// Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name and value pairs that define the managed application outputs.
  late final pulumi.Output<Map<String, String>> outputs;
  /// The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  late final pulumi.Output<String> parameterValues;
  /// One `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ApplicationPlan?> plan;
  /// The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_managedapplication_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedapplication/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationDefinitionId = registerOutput<String?>('applicationDefinitionId');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<Map<String, String>>('outputs');
    this.parameterValues = registerOutput<String>('parameterValues');
    this.plan = registerOutput<ApplicationPlan?>('plan');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:managedapplication/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationDefinitionId = registerOutput<String?>('applicationDefinitionId');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.managedResourceGroupName = registerOutput<String>('managedResourceGroupName');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<Map<String, String>>('outputs');
    this.parameterValues = registerOutput<String>('parameterValues');
    this.plan = registerOutput<ApplicationPlan?>('plan');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
