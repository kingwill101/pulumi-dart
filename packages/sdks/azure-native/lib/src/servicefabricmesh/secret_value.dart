import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_value_args.dart';

/// This type describes a value of a secret resource. The name of this resource is the version identifier corresponding to this secret value.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateSecretValue
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secretValue = new AzureNative.ServiceFabricMesh.SecretValue("secretValue", new()
///     {
///         Location = "West US",
///         ResourceGroupName = "sbz_demo",
///         SecretResourceName = "dbConnectionString",
///         SecretValueResourceName = "v1",
///         Value = "mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true",
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
/// 		_, err := servicefabricmesh.NewSecretValue(ctx, "secretValue", &servicefabricmesh.SecretValueArgs{
/// 			Location:                pulumi.String("West US"),
/// 			ResourceGroupName:       pulumi.String("sbz_demo"),
/// 			SecretResourceName:      pulumi.String("dbConnectionString"),
/// 			SecretValueResourceName: pulumi.String("v1"),
/// 			Value:                   pulumi.String("mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.servicefabricmesh.SecretValue;
/// import com.pulumi.azurenative.servicefabricmesh.SecretValueArgs;
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
///         var secretValue = new SecretValue("secretValue", SecretValueArgs.builder()
///             .location("West US")
///             .resourceGroupName("sbz_demo")
///             .secretResourceName("dbConnectionString")
///             .secretValueResourceName("v1")
///             .value("mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true")
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
/// const secretValue = new azure_native.servicefabricmesh.SecretValue("secretValue", {
///     location: "West US",
///     resourceGroupName: "sbz_demo",
///     secretResourceName: "dbConnectionString",
///     secretValueResourceName: "v1",
///     value: "mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// secret_value = azure_native.servicefabricmesh.SecretValue("secretValue",
///     location="West US",
///     resource_group_name="sbz_demo",
///     secret_resource_name="dbConnectionString",
///     secret_value_resource_name="v1",
///     value="mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true")
///
/// ```
///
/// ```yaml
/// resources:
///   secretValue:
///     type: azure-native:servicefabricmesh:SecretValue
///     properties:
///       location: West US
///       resourceGroupName: sbz_demo
///       secretResourceName: dbConnectionString
///       secretValueResourceName: v1
///       value: mongodb://contoso123:0Fc3IolnL12312asdfawejunASDF@asdfYXX2t8a97kghVcUzcDv98hawelufhawefafnoQRGwNj2nMPL1Y9qsIr9Srdw==@contoso123.documents.azure.com:10255/mydatabase?ssl=true
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
/// $ pulumi import azure-native:servicefabricmesh:SecretValue v1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabricMesh/secrets/{secretResourceName}/values/{secretValueResourceName}
/// ```
class SecretValue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// The actual value of the secret.
  late final pulumi.Output<String?> value;

  /// Creates a new [SecretValue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretValue]. {@macro pulumi_servicefabricmesh_secret_value_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretValue(
    String name, {
    SecretValueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:servicefabricmesh:SecretValue',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
