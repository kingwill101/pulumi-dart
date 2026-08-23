import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_args.dart';
import 'definition_state.dart';

/// Manages a policy rule definition on a management group or your provider subscription.
///
/// Policy definitions do not take effect until they are assigned to a scope using a Policy Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const policy = new azure.policy.Definition("policy", {
///     name: "accTestPolicy",
///     policyType: "Custom",
///     mode: "Indexed",
///     displayName: "acceptance test policy definition",
///     metadata: `    {
///     \\"category\\": \\"General\\"
///     }
///
/// `,
///     policyRule: ` {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// `,
///     parameters: ` {
///     \\"allowedLocations\\": {
///       \\"type\\": \\"Array\\",
///       \\"metadata\\": {
///         \\"description\\": \\"The list of allowed locations for resources.\\",
///         \\"displayName\\": \\"Allowed locations\\",
///         \\"strongType\\": \\"location\\"
///       }
///     }
///   }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// policy = azure.policy.Definition("policy",
///     name="accTestPolicy",
///     policy_type="Custom",
///     mode="Indexed",
///     display_name="acceptance test policy definition",
///     metadata="""    {
///     \"category\": \"General\"
///     }
///
/// """,
///     policy_rule=""" {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// """,
///     parameters=""" {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Azure.Policy.Definition("policy", new()
///     {
///         Name = "accTestPolicy",
///         PolicyType = "Custom",
///         Mode = "Indexed",
///         DisplayName = "acceptance test policy definition",
///         Metadata = @"    {
///     \""category\"": \""General\""
///     }
///
/// ",
///         PolicyRule = @" {
///     ""if"": {
///       ""not"": {
///         ""field"": ""location"",
///         ""in"": ""[parameters('allowedLocations')]""
///       }
///     },
///     ""then"": {
///       ""effect"": ""audit""
///     }
///   }
/// ",
///         Parameters = @" {
///     \""allowedLocations\"": {
///       \""type\"": \""Array\"",
///       \""metadata\"": {
///         \""description\"": \""The list of allowed locations for resources.\"",
///         \""displayName\"": \""Allowed locations\"",
///         \""strongType\"": \""location\""
///       }
///     }
///   }
/// ",
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
/// 		_, err := policy.NewDefinition(ctx, "policy", &policy.DefinitionArgs{
/// 			Name:        pulumi.String("accTestPolicy"),
/// 			PolicyType:  pulumi.String("Custom"),
/// 			Mode:        pulumi.String("Indexed"),
/// 			DisplayName: pulumi.String("acceptance test policy definition"),
/// 			Metadata:    pulumi.String("    {\n    \\\"category\\\": \\\"General\\\"\n    }\n\n"),
/// 			PolicyRule: pulumi.String(` {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
/// `),
/// 			Parameters: pulumi.String(` {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
/// `),
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
/// resource "azure_policy_definition" "policy" {
///   name         = "accTestPolicy"
///   policy_type  = "Custom"
///   mode         = "Indexed"
///   display_name = "acceptance test policy definition"
///   metadata     = "    {\n    \\\"category\\\": \\\"General\\\"\n    }\n\n"
///   policy_rule  = " {\n    \"if\": {\n      \"not\": {\n        \"field\": \"location\",\n        \"in\": \"[parameters('allowedLocations')]\"\n      }\n    },\n    \"then\": {\n      \"effect\": \"audit\"\n    }\n  }\n"
///   parameters   = " {\n    \\\"allowedLocations\\\": {\n      \\\"type\\\": \\\"Array\\\",\n      \\\"metadata\\\": {\n        \\\"description\\\": \\\"The list of allowed locations for resources.\\\",\n        \\\"displayName\\\": \\\"Allowed locations\\\",\n        \\\"strongType\\\": \\\"location\\\"\n      }\n    }\n  }\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.policy.Definition;
/// import com.pulumi.azure.policy.DefinitionArgs;
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
///         var policy = new Definition("policy", DefinitionArgs.builder()
///             .name("accTestPolicy")
///             .policyType("Custom")
///             .mode("Indexed")
///             .displayName("acceptance test policy definition")
///             .metadata("""
///     {
///     \"category\": \"General\"
///     }
///
///             """)
///             .policyRule("""
///  {
///     "if": {
///       "not": {
///         "field": "location",
///         "in": "[parameters('allowedLocations')]"
///       }
///     },
///     "then": {
///       "effect": "audit"
///     }
///   }
///             """)
///             .parameters("""
///  {
///     \"allowedLocations\": {
///       \"type\": \"Array\",
///       \"metadata\": {
///         \"description\": \"The list of allowed locations for resources.\",
///         \"displayName\": \"Allowed locations\",
///         \"strongType\": \"location\"
///       }
///     }
///   }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: azure:policy:Definition
///     properties:
///       name: accTestPolicy
///       policyType: Custom
///       mode: Indexed
///       displayName: acceptance test policy definition
///       metadata: |2+
///             {
///             \"category\": \"General\"
///             }
///
///       policyRule: |2
///          {
///             "if": {
///               "not": {
///                 "field": "location",
///                 "in": "[parameters('allowedLocations')]"
///               }
///             },
///             "then": {
///               "effect": "audit"
///             }
///           }
///       parameters: |2
///          {
///             \"allowedLocations\": {
///               \"type\": \"Array\",
///               \"metadata\": {
///                 \"description\": \"The list of allowed locations for resources.\",
///                 \"displayName\": \"Allowed locations\",
///                 \"strongType\": \"location\"
///               }
///             }
///           }
/// ```
///
///
/// ## Import
///
/// Policy Definitions can be imported using the `policy name`, e.g.
///
/// ```sh
/// $ pulumi import azure:policy/definition:Definition examplePolicy /subscriptions/<SUBSCRIPTION_ID>/providers/Microsoft.Authorization/policyDefinitions/<POLICY_NAME>
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import azure:policy/definition:Definition examplePolicy /providers/Microsoft.Management/managementgroups/<MANGAGEMENT_GROUP_ID>/providers/Microsoft.Authorization/policyDefinitions/<POLICY_NAME>
/// ```
class Definition extends pulumi.CustomResource {
  /// The description of the policy definition.
  late final pulumi.Output<String?> description;
  /// The display name of the policy definition.
  late final pulumi.Output<String> displayName;
  /// The id of the Management Group where this policy should be defined. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> managementGroupId;
  /// The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition.
  late final pulumi.Output<String> metadata;
  /// The policy resource manager mode that allows you to specify which resource types will be evaluated. Possible values are `All`, `Indexed`, `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`.
  ///
  /// &gt; **Note:** Other resource provider modes only support built-in policy definitions but may later become available in custom definitions, these include; `Microsoft.ContainerService.Data`, `Microsoft.CustomerLockbox.Data`, `Microsoft.DataCatalog.Data`, `Microsoft.KeyVault.Data`, `Microsoft.Kubernetes.Data`, `Microsoft.MachineLearningServices.Data`, `Microsoft.Network.Data` and `Microsoft.Synapse.Data`. [See here](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/definition-structure#resource-provider-modes) for more details.
  late final pulumi.Output<String> mode;
  /// The name of the policy definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created.
  late final pulumi.Output<String?> parameters;
  /// The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block.
  late final pulumi.Output<String?> policyRule;
  /// The policy type. Possible values are `BuiltIn`, `Custom`, `NotSpecified` and `Static`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> policyType;
  /// A list of role definition id extracted from `policyRule` required for remediation.
  late final pulumi.Output<List<String>> roleDefinitionIds;

  /// Creates a new [Definition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Definition]. {@macro pulumi_policy_definition_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Definition(
    String name, {
    DefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:policy/definition:Definition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String?>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyRule = registerOutput<String?>('policyRule');
    policyType = registerOutput<String>('policyType');
    roleDefinitionIds = registerOutput<List<String>>('roleDefinitionIds');
  }

  /// Gets an existing [Definition] resource's state with the given [name] and [id].
  static Definition get(
    String name,
    pulumi.Input<String> id, {
    DefinitionState? state,
  }) {
    return Definition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Definition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:policy/definition:Definition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String?>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyRule = registerOutput<String?>('policyRule');
    policyType = registerOutput<String>('policyType');
    roleDefinitionIds = registerOutput<List<String>>('roleDefinitionIds');
  }
}
