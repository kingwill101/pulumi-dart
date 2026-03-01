import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_args.dart';
import 'load_test_encryption.dart';
import 'load_test_identity.dart';
import 'load_test_state.dart';

/// Manages a Load Test Service.
///
/// ## Example Usage
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
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleLoadTest = new azure.loadtest.LoadTest("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_load_test = azure.loadtest.LoadTest("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
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
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleLoadTest = new Azure.LoadTest.LoadTest("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loadtest"
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
/// 		_, err = authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loadtest.NewLoadTest(ctx, "example", &loadtest.LoadTestArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.loadtest.LoadTest;
/// import com.pulumi.azure.loadtest.LoadTestArgs;
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
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleLoadTest = new LoadTest("exampleLoadTest", LoadTestArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
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
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleLoadTest:
///     type: azure:loadtest:LoadTest
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.LoadTestService` - 2022-12-01
///
/// ## Import
///
/// An existing Load Test can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loadtest/loadTest:LoadTest example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LoadTestService/loadTests/{loadTestName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Load Test exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Load Test exists. For example `example-resource-group`.
/// * Where `{loadTestName}` is the name of the Load Test. For example `loadTestValue`.
class LoadTest extends pulumi.CustomResource {
  /// Resource data plane URI.
  late final pulumi.Output<String> dataPlaneUri;
  /// Description of the resource.
  late final pulumi.Output<String?> description;
  /// An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  late final pulumi.Output<LoadTestEncryption?> encryption;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  late final pulumi.Output<LoadTestIdentity?> identity;
  /// The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Load Test.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LoadTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadTest]. {@macro pulumi_loadtest_load_test_load_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadTest(
    String name, {
    LoadTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loadtest/loadTest:LoadTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataPlaneUri = registerOutput<String>('dataPlaneUri');
    this.description = registerOutput<String?>('description');
    this.encryption = registerOutput<LoadTestEncryption?>('encryption');
    this.identity = registerOutput<LoadTestIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [LoadTest] resource's state with the given [name] and [id].
  static LoadTest get(
    String name,
    pulumi.Input<String> id, {
    LoadTestState? state,
  }) {
    return LoadTest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadTest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:loadtest/loadTest:LoadTest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataPlaneUri = registerOutput<String>('dataPlaneUri');
    this.description = registerOutput<String?>('description');
    this.encryption = registerOutput<LoadTestEncryption?>('encryption');
    this.identity = registerOutput<LoadTestIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
