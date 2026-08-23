import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_resource_properties_response.dart';

/// This type describes a secret resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateSecret
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret = new AzureNative.ServiceFabricMesh.Secret("secret", new()
///     {
///         Location = "EastUS",
///         Properties = null,
///         ResourceGroupName = "sbz_demo",
///         SecretResourceName = "dbConnectionString",
///         Tags = null,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	servicefabricmesh "github.com/pulumi/pulumi-azure-native-sdk/servicefabricmesh/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabricmesh.NewSecret(ctx, "secret", &servicefabricmesh.SecretArgs{
/// 			Location:           pulumi.String("EastUS"),
/// 			Properties:         &servicefabricmesh.SecretResourcePropertiesArgs{},
/// 			ResourceGroupName:  pulumi.String("sbz_demo"),
/// 			SecretResourceName: pulumi.String("dbConnectionString"),
/// 			Tags:               pulumi.StringMap{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_servicefabricmesh_secret" "secret" {
///   location             = "EastUS"
///   properties           = {}
///   resource_group_name  = "sbz_demo"
///   secret_resource_name = "dbConnectionString"
///   tags                 = {}
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicefabricmesh.Secret;
/// import com.pulumi.azurenative.servicefabricmesh.SecretArgs;
/// import com.pulumi.azurenative.servicefabricmesh.inputs.SecretResourcePropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var secret = new Secret("secret", SecretArgs.builder()
///             .location("EastUS")
///             .properties(SecretResourcePropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("sbz_demo")
///             .secretResourceName("dbConnectionString")
///             .tags(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const secret = new azure_native.servicefabricmesh.Secret("secret", {
///     location: "EastUS",
///     properties: {},
///     resourceGroupName: "sbz_demo",
///     secretResourceName: "dbConnectionString",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret = azure_native.servicefabricmesh.Secret("secret",
///     location="EastUS",
///     properties={},
///     resource_group_name="sbz_demo",
///     secret_resource_name="dbConnectionString",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   secret:
///     type: azure-native:servicefabricmesh:Secret
///     properties:
///       location: EastUS
///       properties: {}
///       resourceGroupName: sbz_demo
///       secretResourceName: dbConnectionString
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:servicefabricmesh:Secret dbConnectionString /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/secrets/{secretResourceName}
/// ```
class Secret extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Describes the properties of a secret resource.
  late final pulumi.Output<SecretResourcePropertiesResponse> properties;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_servicefabricmesh_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabricmesh:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SecretResourcePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecretResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
