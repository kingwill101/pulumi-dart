import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_association_args.dart';
import 'management_association_properties_response.dart';

/// The container for solution.
///
/// Uses Azure REST API version 2015-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2015-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SolutionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementAssociation = new AzureNative.OperationsManagement.ManagementAssociation("managementAssociation", new()
///     {
///         Location = "East US",
///         ManagementAssociationName = "managementAssociation1",
///         Properties = new AzureNative.OperationsManagement.Inputs.ManagementAssociationPropertiesArgs
///         {
///             ApplicationId = "/subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1",
///         },
///         ProviderName = "providerName",
///         ResourceGroupName = "rg1",
///         ResourceName = "resourceName",
///         ResourceType = "resourceType",
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
/// 	operationsmanagement "github.com/pulumi/pulumi-azure-native-sdk/operationsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationsmanagement.NewManagementAssociation(ctx, "managementAssociation", &operationsmanagement.ManagementAssociationArgs{
/// 			Location:                  pulumi.String("East US"),
/// 			ManagementAssociationName: pulumi.String("managementAssociation1"),
/// 			Properties: &operationsmanagement.ManagementAssociationPropertiesArgs{
/// 				ApplicationId: pulumi.String("/subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1"),
/// 			},
/// 			ProviderName:      pulumi.String("providerName"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("resourceName"),
/// 			ResourceType:      pulumi.String("resourceType"),
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
/// import com.pulumi.azurenative.operationsmanagement.ManagementAssociation;
/// import com.pulumi.azurenative.operationsmanagement.ManagementAssociationArgs;
/// import com.pulumi.azurenative.operationsmanagement.inputs.ManagementAssociationPropertiesArgs;
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
///         var managementAssociation = new ManagementAssociation("managementAssociation", ManagementAssociationArgs.builder()
///             .location("East US")
///             .managementAssociationName("managementAssociation1")
///             .properties(ManagementAssociationPropertiesArgs.builder()
///                 .applicationId("/subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1")
///                 .build())
///             .providerName("providerName")
///             .resourceGroupName("rg1")
///             .resourceName("resourceName")
///             .resourceType("resourceType")
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
/// const managementAssociation = new azure_native.operationsmanagement.ManagementAssociation("managementAssociation", {
///     location: "East US",
///     managementAssociationName: "managementAssociation1",
///     properties: {
///         applicationId: "/subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1",
///     },
///     providerName: "providerName",
///     resourceGroupName: "rg1",
///     resourceName: "resourceName",
///     resourceType: "resourceType",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_association = azure_native.operationsmanagement.ManagementAssociation("managementAssociation",
///     location="East US",
///     management_association_name="managementAssociation1",
///     properties={
///         "application_id": "/subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1",
///     },
///     provider_name="providerName",
///     resource_group_name="rg1",
///     resource_name_="resourceName",
///     resource_type="resourceType")
///
/// ```
///
/// ```yaml
/// resources:
///   managementAssociation:
///     type: azure-native:operationsmanagement:ManagementAssociation
///     properties:
///       location: East US
///       managementAssociationName: managementAssociation1
///       properties:
///         applicationId: /subscriptions/sub1/resourcegroups/rg1/providers/Microsoft.Appliance/Appliances/appliance1
///       providerName: providerName
///       resourceGroupName: rg1
///       resourceName: resourceName
///       resourceType: resourceType
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
/// $ pulumi import azure-native:operationsmanagement:ManagementAssociation managementAssociation1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.OperationsManagement/ManagementAssociations/{managementAssociationName}
/// ```
class ManagementAssociation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource location
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Properties for ManagementAssociation object supported by the OperationsManagement resource provider.
  late final pulumi.Output<ManagementAssociationPropertiesResponse> properties;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementAssociation]. {@macro pulumi_operationsmanagement_management_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementAssociation(
    String name, {
    ManagementAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:operationsmanagement:ManagementAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagementAssociationPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagementAssociationPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
