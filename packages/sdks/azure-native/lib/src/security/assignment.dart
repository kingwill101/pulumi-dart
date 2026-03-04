import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_component_item_response.dart';
import 'assigned_standard_item_response.dart';
import 'assignment_args.dart';
import 'assignment_properties_response_additional_data.dart';
import 'system_data_response.dart';

/// Security Assignment on a resource group over a given scope
///
/// Uses Azure REST API version 2021-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Define a default standard assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Security.Assignment("assignment", new()
///     {
///         AssignedStandard = new AzureNative.Security.Inputs.AssignedStandardItemArgs
///         {
///             Id = "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         },
///         AssignmentId = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         Description = "Set of policies monitored by Azure Security Center for cross cloud",
///         DisplayName = "ASC Default",
///         Effect = "audit",
///         ResourceGroupName = "myResourceGroup",
///         Scope = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAssignment(ctx, "assignment", &security.AssignmentArgs{
/// 			AssignedStandard: &security.AssignedStandardItemArgs{
/// 				Id: pulumi.String("/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			},
/// 			AssignmentId:      pulumi.String("1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			Description:       pulumi.String("Set of policies monitored by Azure Security Center for cross cloud"),
/// 			DisplayName:       pulumi.String("ASC Default"),
/// 			Effect:            pulumi.String("audit"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Scope:             pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg"),
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
/// import com.pulumi.azurenative.security.Assignment;
/// import com.pulumi.azurenative.security.AssignmentArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedStandardItemArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .assignedStandard(AssignedStandardItemArgs.builder()
///                 .id("/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///                 .build())
///             .assignmentId("1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///             .description("Set of policies monitored by Azure Security Center for cross cloud")
///             .displayName("ASC Default")
///             .effect("audit")
///             .resourceGroupName("myResourceGroup")
///             .scope("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg")
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
/// const assignment = new azure_native.security.Assignment("assignment", {
///     assignedStandard: {
///         id: "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     assignmentId: "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     description: "Set of policies monitored by Azure Security Center for cross cloud",
///     displayName: "ASC Default",
///     effect: "audit",
///     resourceGroupName: "myResourceGroup",
///     scope: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.security.Assignment("assignment",
///     assigned_standard={
///         "id": "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     assignment_id="1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     description="Set of policies monitored by Azure Security Center for cross cloud",
///     display_name="ASC Default",
///     effect="audit",
///     resource_group_name="myResourceGroup",
///     scope="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:security:Assignment
///     properties:
///       assignedStandard:
///         id: /providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       assignmentId: 1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       description: Set of policies monitored by Azure Security Center for cross cloud
///       displayName: ASC Default
///       effect: audit
///       resourceGroupName: myResourceGroup
///       scope: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Exempt Recommendation From standard and resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assignment = new AzureNative.Security.Assignment("assignment", new()
///     {
///         AdditionalData = new AzureNative.Security.Inputs.AssignmentPropertiesAdditionalDataArgs
///         {
///             ExemptionCategory = "waiver",
///         },
///         AssignedComponent = new AzureNative.Security.Inputs.AssignedComponentItemArgs
///         {
///             Key = "1195afff-c881-495e-9bc5-1486211ae03f",
///         },
///         AssignedStandard = new AzureNative.Security.Inputs.AssignedStandardItemArgs
///         {
///             Id = "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         },
///         AssignmentId = "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///         Description = "Set of policies monitored by Azure Security Center for cross cloud",
///         DisplayName = "ASC Default",
///         Effect = "Exempt",
///         ExpiresOn = "2022-05-01T19:50:47.083633Z",
///         Metadata = new Dictionary<string, object?>
///         {
///             ["ticketId"] = 12345,
///         },
///         ResourceGroupName = "myResourceGroup",
///         Scope = "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewAssignment(ctx, "assignment", &security.AssignmentArgs{
/// 			AdditionalData: &security.AssignmentPropertiesAdditionalDataArgs{
/// 				ExemptionCategory: pulumi.String("waiver"),
/// 			},
/// 			AssignedComponent: &security.AssignedComponentItemArgs{
/// 				Key: pulumi.String("1195afff-c881-495e-9bc5-1486211ae03f"),
/// 			},
/// 			AssignedStandard: &security.AssignedStandardItemArgs{
/// 				Id: pulumi.String("/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			},
/// 			AssignmentId: pulumi.String("1f3afdf9-d0c9-4c3d-847f-89da613e70a8"),
/// 			Description:  pulumi.String("Set of policies monitored by Azure Security Center for cross cloud"),
/// 			DisplayName:  pulumi.String("ASC Default"),
/// 			Effect:       pulumi.String("Exempt"),
/// 			ExpiresOn:    pulumi.String("2022-05-01T19:50:47.083633Z"),
/// 			Metadata: pulumi.Any(map[string]interface{}{
/// 				"ticketId": 12345,
/// 			}),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Scope:             pulumi.String("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg"),
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
/// import com.pulumi.azurenative.security.Assignment;
/// import com.pulumi.azurenative.security.AssignmentArgs;
/// import com.pulumi.azurenative.security.inputs.AssignmentPropertiesAdditionalDataArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedComponentItemArgs;
/// import com.pulumi.azurenative.security.inputs.AssignedStandardItemArgs;
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
///         var assignment = new Assignment("assignment", AssignmentArgs.builder()
///             .additionalData(AssignmentPropertiesAdditionalDataArgs.builder()
///                 .exemptionCategory("waiver")
///                 .build())
///             .assignedComponent(AssignedComponentItemArgs.builder()
///                 .key("1195afff-c881-495e-9bc5-1486211ae03f")
///                 .build())
///             .assignedStandard(AssignedStandardItemArgs.builder()
///                 .id("/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///                 .build())
///             .assignmentId("1f3afdf9-d0c9-4c3d-847f-89da613e70a8")
///             .description("Set of policies monitored by Azure Security Center for cross cloud")
///             .displayName("ASC Default")
///             .effect("Exempt")
///             .expiresOn("2022-05-01T19:50:47.083633Z")
///             .metadata(Map.of("ticketId", 12345))
///             .resourceGroupName("myResourceGroup")
///             .scope("/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg")
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
/// const assignment = new azure_native.security.Assignment("assignment", {
///     additionalData: {
///         exemptionCategory: "waiver",
///     },
///     assignedComponent: {
///         key: "1195afff-c881-495e-9bc5-1486211ae03f",
///     },
///     assignedStandard: {
///         id: "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     assignmentId: "1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     description: "Set of policies monitored by Azure Security Center for cross cloud",
///     displayName: "ASC Default",
///     effect: "Exempt",
///     expiresOn: "2022-05-01T19:50:47.083633Z",
///     metadata: {
///         ticketId: 12345,
///     },
///     resourceGroupName: "myResourceGroup",
///     scope: "/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assignment = azure_native.security.Assignment("assignment",
///     additional_data={
///         "exemption_category": "waiver",
///     },
///     assigned_component={
///         "key": "1195afff-c881-495e-9bc5-1486211ae03f",
///     },
///     assigned_standard={
///         "id": "/providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     },
///     assignment_id="1f3afdf9-d0c9-4c3d-847f-89da613e70a8",
///     description="Set of policies monitored by Azure Security Center for cross cloud",
///     display_name="ASC Default",
///     effect="Exempt",
///     expires_on="2022-05-01T19:50:47.083633Z",
///     metadata={
///         "ticketId": 12345,
///     },
///     resource_group_name="myResourceGroup",
///     scope="/subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg")
///
/// ```
///
/// ```yaml
/// resources:
///   assignment:
///     type: azure-native:security:Assignment
///     properties:
///       additionalData:
///         exemptionCategory: waiver
///       assignedComponent:
///         key: 1195afff-c881-495e-9bc5-1486211ae03f
///       assignedStandard:
///         id: /providers/Microsoft.Security/Standards/1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       assignmentId: 1f3afdf9-d0c9-4c3d-847f-89da613e70a8
///       description: Set of policies monitored by Azure Security Center for cross cloud
///       displayName: ASC Default
///       effect: Exempt
///       expiresOn: 2022-05-01T19:50:47.083633Z
///       metadata:
///         ticketId: 12345
///       resourceGroupName: myResourceGroup
///       scope: /subscriptions/ae640e6b-ba3e-4256-9d62-2993eecfa6f2/ResourceGroup/rg
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
/// $ pulumi import azure-native:security:Assignment 1f3afdf9-d0c9-4c3d-847f-89da613e70a8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/assignments/{assignmentId}
/// ```
class Assignment extends pulumi.CustomResource {
  /// Additional data about the assignment
  late final pulumi.Output<AssignmentPropertiesResponseAdditionalData?>
  additionalData;

  /// Component item with key as applied to this standard assignment over the given scope
  late final pulumi.Output<AssignedComponentItemResponse?> assignedComponent;

  /// Standard item with key as applied to this standard assignment over the given scope
  late final pulumi.Output<AssignedStandardItemResponse?> assignedStandard;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// description of the standardAssignment
  late final pulumi.Output<String?> description;

  /// display name of the standardAssignment
  late final pulumi.Output<String?> displayName;

  /// expected effect of this assignment (Disable/Exempt/etc)
  late final pulumi.Output<String?> effect;

  /// Entity tag is used for comparing two or more entities from the same requested resource.
  late final pulumi.Output<String?> etag;

  /// Expiration date of this assignment as a full ISO date
  late final pulumi.Output<String?> expiresOn;

  /// Kind of the resource
  late final pulumi.Output<String?> kind;

  /// Location where the resource is stored
  late final pulumi.Output<String?> location;

  /// The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  late final pulumi.Output<dynamic> metadata;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  late final pulumi.Output<String?> scope;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// A list of key value pairs that describe the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assignment]. {@macro pulumi_security_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assignment(
    String name, {
    AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:Assignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalData =
        registerOutput<AssignmentPropertiesResponseAdditionalData?>(
          'additionalData',
        );
    assignedComponent = registerOutput<AssignedComponentItemResponse?>(
      'assignedComponent',
    );
    assignedStandard = registerOutput<AssignedStandardItemResponse?>(
      'assignedStandard',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    effect = registerOutput<String?>('effect');
    etag = registerOutput<String?>('etag');
    expiresOn = registerOutput<String?>('expiresOn');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
