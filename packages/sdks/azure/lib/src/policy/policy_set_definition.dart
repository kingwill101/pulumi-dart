import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_set_definition_args.dart';
import 'policy_set_definition_state.dart';

/// Manages a Policy Set Definition.
///
/// &gt; **Note:** Policy set definitions (also known as policy initiatives) do not take effect until they are assigned to a scope using a Policy Set Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.policy.PolicySetDefinition("example", {
///     name: "example",
///     policyType: "Custom",
///     displayName: "Example",
///     parameters: `    {
///         \\"allowedLocations\\": {
///             \\"type\\": \\"Array\\",
///             \\"metadata\\": {
///                 \\"description\\": \\"The list of allowed locations for resources.\\",
///                 \\"displayName\\": \\"Allowed locations\\",
///                 \\"strongType\\": \\"location\\"
///             }
///         }
///     }
/// `,
///     policyDefinitionReferences: [{
///         version: "1.0.*",
///         policyDefinitionId: "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///         parameterValues: `    {
///       \\"listOfAllowedLocations\\": {\\"value\\": \\"[parameters('allowedLocations')]\\"}
///     }
/// `,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.policy.PolicySetDefinition("example",
///     name="example",
///     policy_type="Custom",
///     display_name="Example",
///     parameters="""    {
///         \"allowedLocations\": {
///             \"type\": \"Array\",
///             \"metadata\": {
///                 \"description\": \"The list of allowed locations for resources.\",
///                 \"displayName\": \"Allowed locations\",
///                 \"strongType\": \"location\"
///             }
///         }
///     }
/// """,
///     policy_definition_references=[{
///         "version": "1.0.*",
///         "policy_definition_id": "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///         "parameter_values": """    {
///       \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///     }
/// """,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Policy.PolicySetDefinition("example", new()
///     {
///         Name = "example",
///         PolicyType = "Custom",
///         DisplayName = "Example",
///         Parameters = @"    {
///         \""allowedLocations\"": {
///             \""type\"": \""Array\"",
///             \""metadata\"": {
///                 \""description\"": \""The list of allowed locations for resources.\"",
///                 \""displayName\"": \""Allowed locations\"",
///                 \""strongType\"": \""location\""
///             }
///         }
///     }
/// ",
///         PolicyDefinitionReferences = new[]
///         {
///             new Azure.Policy.Inputs.PolicySetDefinitionPolicyDefinitionReferenceArgs
///             {
///                 Version = "1.0.*",
///                 PolicyDefinitionId = "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///                 ParameterValues = @"    {
///       \""listOfAllowedLocations\"": {\""value\"": \""[parameters('allowedLocations')]\""}
///     }
/// ",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := policy.NewPolicySetDefinition(ctx, "example", &policy.PolicySetDefinitionArgs{
/// 			Name:        pulumi.String("example"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			DisplayName: pulumi.String("Example"),
/// 			Parameters: pulumi.String(`    {
///         \"allowedLocations\": {
///             \"type\": \"Array\",
///             \"metadata\": {
///                 \"description\": \"The list of allowed locations for resources.\",
///                 \"displayName\": \"Allowed locations\",
///                 \"strongType\": \"location\"
///             }
///         }
///     }
/// `),
/// 			PolicyDefinitionReferences: policy.PolicySetDefinitionPolicyDefinitionReferenceArray{
/// 				&policy.PolicySetDefinitionPolicyDefinitionReferenceArgs{
/// 					Version:            pulumi.String("1.0.*"),
/// 					PolicyDefinitionId: pulumi.String("/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988"),
/// 					ParameterValues:    pulumi.String("    {\n      \\\"listOfAllowedLocations\\\": {\\\"value\\\": \\\"[parameters('allowedLocations')]\\\"}\n    }\n"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_policy_policysetdefinition" "example" {
///   name         = "example"
///   policy_type  = "Custom"
///   display_name = "Example"
///   parameters   = "    {\n        \\\"allowedLocations\\\": {\n            \\\"type\\\": \\\"Array\\\",\n            \\\"metadata\\\": {\n                \\\"description\\\": \\\"The list of allowed locations for resources.\\\",\n                \\\"displayName\\\": \\\"Allowed locations\\\",\n                \\\"strongType\\\": \\\"location\\\"\n            }\n        }\n    }\n"
///   policy_definition_references {
///     version              = "1.0.*"
///     policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988"
///     parameter_values     = "    {\n      \\\"listOfAllowedLocations\\\": {\\\"value\\\": \\\"[parameters('allowedLocations')]\\\"}\n    }\n"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.policy.PolicySetDefinition;
/// import com.pulumi.azure.policy.PolicySetDefinitionArgs;
/// import com.pulumi.azure.policy.inputs.PolicySetDefinitionPolicyDefinitionReferenceArgs;
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
///         var example = new PolicySetDefinition("example", PolicySetDefinitionArgs.builder()
///             .name("example")
///             .policyType("Custom")
///             .displayName("Example")
///             .parameters("""
///     {
///         \"allowedLocations\": {
///             \"type\": \"Array\",
///             \"metadata\": {
///                 \"description\": \"The list of allowed locations for resources.\",
///                 \"displayName\": \"Allowed locations\",
///                 \"strongType\": \"location\"
///             }
///         }
///     }
///             """)
///             .policyDefinitionReferences(PolicySetDefinitionPolicyDefinitionReferenceArgs.builder()
///                 .version("1.0.*")
///                 .policyDefinitionId("/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988")
///                 .parameterValues("""
///     {
///       \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///     }
///                 """)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:policy:PolicySetDefinition
///     properties:
///       name: example
///       policyType: Custom
///       displayName: Example
///       parameters: |2
///             {
///                 \"allowedLocations\": {
///                     \"type\": \"Array\",
///                     \"metadata\": {
///                         \"description\": \"The list of allowed locations for resources.\",
///                         \"displayName\": \"Allowed locations\",
///                         \"strongType\": \"location\"
///                     }
///                 }
///             }
///       policyDefinitionReferences:
///         - version: 1.0.*
///           policyDefinitionId: /providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988
///           parameterValues: |2
///                 {
///                   \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///                 }
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2025-01-01
///
/// * `Microsoft.Management` - 2025-01-01
///
/// ## Import
///
/// Policy Set Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:policy/policySetDefinition:PolicySetDefinition example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/policySetDefinitions/policySetDefinitionName
/// ```
class PolicySetDefinition extends pulumi.CustomResource {
  /// The description of this Policy Set Definition.
  late final pulumi.Output<String?> description;
  /// The display name of this Policy Set Definition.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String?> managementGroupId;
  /// The metadata for the Policy Set Definition in JSON format.
  late final pulumi.Output<String> metadata;
  /// The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  late final pulumi.Output<String> name;
  /// The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  late final pulumi.Output<String?> parameters;
  /// One or more `policyDefinitionGroup` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> policyDefinitionGroups;
  /// One or more `policyDefinitionReference` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> policyDefinitionReferences;
  /// The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  late final pulumi.Output<String> policyType;

  /// Creates a new [PolicySetDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicySetDefinition]. {@macro pulumi_policy_policy_set_definition_policy_set_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicySetDefinition(
    String name, {
    PolicySetDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:policy/policySetDefinition:PolicySetDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String?>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>('policyDefinitionGroups');
    policyDefinitionReferences = registerOutput<List<Map<String, dynamic>>>('policyDefinitionReferences');
    policyType = registerOutput<String>('policyType');
  }

  /// Gets an existing [PolicySetDefinition] resource's state with the given [name] and [id].
  static PolicySetDefinition get(
    String name,
    pulumi.Input<String> id, {
    PolicySetDefinitionState? state,
  }) {
    return PolicySetDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicySetDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:policy/policySetDefinition:PolicySetDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String?>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>('policyDefinitionGroups');
    policyDefinitionReferences = registerOutput<List<Map<String, dynamic>>>('policyDefinitionReferences');
    policyType = registerOutput<String>('policyType');
  }
}
