import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// REST model used to encapsulate the user visible state of a PrivateEndpoint.
///
/// Uses Azure REST API version 2020-07-07. In version 2.x of the Azure Native provider, it used API version 2020-07-07.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put privateEndpointConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.OffAzure.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PeConnectionName = "privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f",
///         ResourceGroupName = "ayagrawrg",
///         SiteName = "privateendpt1938mastersite",
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
/// 	offazure "github.com/pulumi/pulumi-azure-native-sdk/offazure/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazure.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &offazure.PrivateEndpointConnectionArgs{
/// 			PeConnectionName:  pulumi.String("privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f"),
/// 			ResourceGroupName: pulumi.String("ayagrawrg"),
/// 			SiteName:          pulumi.String("privateendpt1938mastersite"),
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
/// resource "azure-native_offazure_privateendpointconnection" "privateEndpointConnection" {
///   pe_connection_name  = "privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f"
///   resource_group_name = "ayagrawrg"
///   site_name           = "privateendpt1938mastersite"
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
/// import com.pulumi.azurenative.offazure.PrivateEndpointConnection;
/// import com.pulumi.azurenative.offazure.PrivateEndpointConnectionArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .peConnectionName("privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f")
///             .resourceGroupName("ayagrawrg")
///             .siteName("privateendpt1938mastersite")
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
/// const privateEndpointConnection = new azure_native.offazure.PrivateEndpointConnection("privateEndpointConnection", {
///     peConnectionName: "privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f",
///     resourceGroupName: "ayagrawrg",
///     siteName: "privateendpt1938mastersite",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.offazure.PrivateEndpointConnection("privateEndpointConnection",
///     pe_connection_name="privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f",
///     resource_group_name="ayagrawrg",
///     site_name="privateendpt1938mastersite")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:offazure:PrivateEndpointConnection
///     properties:
///       peConnectionName: privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f
///       resourceGroupName: ayagrawrg
///       siteName: privateendpt1938mastersite
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
/// $ pulumi import azure-native:offazure:PrivateEndpointConnection privateendpt1938mastersit9007pe.4f2f2970-0bfa-45d4-9ee1-d9f79502fc6f /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzure/masterSites/{siteName}/privateEndpointConnections/{peConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the tag for optimistic concurrency control.
  late final pulumi.Output<String> eTag;
  /// Gets the name of the resource.
  late final pulumi.Output<String> name;
  /// Gets the properties of the object.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_offazure_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazure:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointConnectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
