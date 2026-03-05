import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_set_definition_args.dart';
import 'group_policy_set_definition_state.dart';

/// Manages a Policy Set Definition for a Management Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.management.Group("example", {displayName: "Example"});
/// const exampleGroupPolicySetDefinition = new azure.management.GroupPolicySetDefinition("example", {
///     name: "example",
///     policyType: "Custom",
///     displayName: "Example",
///     managementGroupId: example.id,
///     parameters: `   {
///        \\"allowedLocations\\": {
///            \\"type\\": \\"Array\\",
///            \\"metadata\\": {
///                \\"description\\": \\"The list of allowed locations for resources.\\",
///                \\"displayName\\": \\"Allowed locations\\",
///                \\"strongType\\": \\"location\\"
///            }
///        }
///    }
/// `,
///     policyDefinitionReferences: [{
///         version: "1.0.*",
///         policyDefinitionId: "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///         parameterValues: `   {
///      \\"listOfAllowedLocations\\": {\\"value\\": \\"[parameters('allowedLocations')]\\"}
///    }
/// `,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.Group("example", display_name="Example")
/// example_group_policy_set_definition = azure.management.GroupPolicySetDefinition("example",
///     name="example",
///     policy_type="Custom",
///     display_name="Example",
///     management_group_id=example.id,
///     parameters="""   {
///        \"allowedLocations\": {
///            \"type\": \"Array\",
///            \"metadata\": {
///                \"description\": \"The list of allowed locations for resources.\",
///                \"displayName\": \"Allowed locations\",
///                \"strongType\": \"location\"
///            }
///        }
///    }
/// """,
///     policy_definition_references=[{
///         "version": "1.0.*",
///         "policy_definition_id": "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///         "parameter_values": """   {
///      \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///    }
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
///     var example = new Azure.Management.Group("example", new()
///     {
///         DisplayName = "Example",
///     });
///
///     var exampleGroupPolicySetDefinition = new Azure.Management.GroupPolicySetDefinition("example", new()
///     {
///         Name = "example",
///         PolicyType = "Custom",
///         DisplayName = "Example",
///         ManagementGroupId = example.Id,
///         Parameters = @"   {
///        \""allowedLocations\"": {
///            \""type\"": \""Array\"",
///            \""metadata\"": {
///                \""description\"": \""The list of allowed locations for resources.\"",
///                \""displayName\"": \""Allowed locations\"",
///                \""strongType\"": \""location\""
///            }
///        }
///    }
/// ",
///         PolicyDefinitionReferences = new[]
///         {
///             new Azure.Management.Inputs.GroupPolicySetDefinitionPolicyDefinitionReferenceArgs
///             {
///                 Version = "1.0.*",
///                 PolicyDefinitionId = "/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988",
///                 ParameterValues = @"   {
///      \""listOfAllowedLocations\"": {\""value\"": \""[parameters('allowedLocations')]\""}
///    }
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.NewGroup(ctx, "example", &management.GroupArgs{
/// 			DisplayName: pulumi.String("Example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupPolicySetDefinition(ctx, "example", &management.GroupPolicySetDefinitionArgs{
/// 			Name:              pulumi.String("example"),
/// 			PolicyType:        pulumi.String("Custom"),
/// 			DisplayName:       pulumi.String("Example"),
/// 			ManagementGroupId: example.ID(),
/// 			Parameters: pulumi.String(`   {
///        \"allowedLocations\": {
///            \"type\": \"Array\",
///            \"metadata\": {
///                \"description\": \"The list of allowed locations for resources.\",
///                \"displayName\": \"Allowed locations\",
///                \"strongType\": \"location\"
///            }
///        }
///    }
/// `),
/// 			PolicyDefinitionReferences: management.GroupPolicySetDefinitionPolicyDefinitionReferenceArray{
/// 				&management.GroupPolicySetDefinitionPolicyDefinitionReferenceArgs{
/// 					Version:            pulumi.String("1.0.*"),
/// 					PolicyDefinitionId: pulumi.String("/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988"),
/// 					ParameterValues:    pulumi.String("   {\n     \\\"listOfAllowedLocations\\\": {\\\"value\\\": \\\"[parameters('allowedLocations')]\\\"}\n   }\n"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
/// import com.pulumi.azure.management.GroupPolicySetDefinition;
/// import com.pulumi.azure.management.GroupPolicySetDefinitionArgs;
/// import com.pulumi.azure.management.inputs.GroupPolicySetDefinitionPolicyDefinitionReferenceArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("Example")
///             .build());
///
///         var exampleGroupPolicySetDefinition = new GroupPolicySetDefinition("exampleGroupPolicySetDefinition", GroupPolicySetDefinitionArgs.builder()
///             .name("example")
///             .policyType("Custom")
///             .displayName("Example")
///             .managementGroupId(example.id())
///             .parameters("""
///    {
///        \"allowedLocations\": {
///            \"type\": \"Array\",
///            \"metadata\": {
///                \"description\": \"The list of allowed locations for resources.\",
///                \"displayName\": \"Allowed locations\",
///                \"strongType\": \"location\"
///            }
///        }
///    }
///             """)
///             .policyDefinitionReferences(GroupPolicySetDefinitionPolicyDefinitionReferenceArgs.builder()
///                 .version("1.0.*")
///                 .policyDefinitionId("/providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988")
///                 .parameterValues("""
///    {
///      \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///    }
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
///     type: azure:management:Group
///     properties:
///       displayName: Example
///   exampleGroupPolicySetDefinition:
///     type: azure:management:GroupPolicySetDefinition
///     name: example
///     properties:
///       name: example
///       policyType: Custom
///       displayName: Example
///       managementGroupId: ${example.id}
///       parameters: |2
///            {
///                \"allowedLocations\": {
///                    \"type\": \"Array\",
///                    \"metadata\": {
///                        \"description\": \"The list of allowed locations for resources.\",
///                        \"displayName\": \"Allowed locations\",
///                        \"strongType\": \"location\"
///                    }
///                }
///            }
///       policyDefinitionReferences:
///         - version: 1.0.*
///           policyDefinitionId: /providers/Microsoft.Authorization/policyDefinitions/e765b5de-1225-4ba3-bd56-1ac6695af988
///           parameterValues: |2
///                {
///                  \"listOfAllowedLocations\": {\"value\": \"[parameters('allowedLocations')]\"}
///                }
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2025-01-01
///
/// ## Import
///
/// Policy Set Definitions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/groupPolicySetDefinition:GroupPolicySetDefinition example /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/policySetDefinitions/policySetDefinitionName
/// ```
class GroupPolicySetDefinition extends pulumi.CustomResource {
  /// The description of this Policy Set Definition.
  late final pulumi.Output<String?> description;
  /// The display name of this Policy Set Definition.
  late final pulumi.Output<String> displayName;
  /// The ID of the Management Group where this Policy Set Definition should be created. Changing this forces a new Policy Set Definition to be created.
  late final pulumi.Output<String> managementGroupId;
  /// The metadata for the Policy Set Definition in JSON format.
  late final pulumi.Output<String> metadata;
  /// The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  late final pulumi.Output<String> name;
  /// The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  late final pulumi.Output<String?> parameters;
  /// One or more `policy_definition_group` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> policyDefinitionGroups;
  /// One or more `policy_definition_reference` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> policyDefinitionReferences;
  /// The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  late final pulumi.Output<String> policyType;

  /// Creates a new [GroupPolicySetDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicySetDefinition]. {@macro pulumi_management_group_policy_set_definition_group_policy_set_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicySetDefinition(
    String name, {
    GroupPolicySetDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicySetDefinition:GroupPolicySetDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>('policyDefinitionGroups');
    policyDefinitionReferences = registerOutput<List<Map<String, dynamic>>>('policyDefinitionReferences');
    policyType = registerOutput<String>('policyType');
  }

  /// Gets an existing [GroupPolicySetDefinition] resource's state with the given [name] and [id].
  static GroupPolicySetDefinition get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicySetDefinitionState? state,
  }) {
    return GroupPolicySetDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupPolicySetDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupPolicySetDefinition:GroupPolicySetDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    managementGroupId = registerOutput<String>('managementGroupId');
    metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<String?>('parameters');
    policyDefinitionGroups = registerOutput<List<Map<String, dynamic>>?>('policyDefinitionGroups');
    policyDefinitionReferences = registerOutput<List<Map<String, dynamic>>>('policyDefinitionReferences');
    policyType = registerOutput<String>('policyType');
  }
}
