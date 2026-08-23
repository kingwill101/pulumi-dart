import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_args.dart';
import 'assignment_state.dart';

/// Manages a [Lighthouse](https://docs.microsoft.com/azure/lighthouse) Assignment to a subscription, or to a resource group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = new azure.lighthouse.Assignment("example", {
///     scope: primary.then(primary => primary.id),
///     lighthouseDefinitionId: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.lighthouse.Assignment("example",
///     scope=primary.id,
///     lighthouse_definition_id="/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Lighthouse.Assignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         LighthouseDefinitionId = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lighthouse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lighthouse.NewAssignment(ctx, "example", &lighthouse.AssignmentArgs{
/// 			Scope:                  pulumi.String(primary.Id),
/// 			LighthouseDefinitionId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000"),
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
/// data "azure_core_getsubscription" "primary" {
/// }
///
/// resource "azure_lighthouse_assignment" "example" {
///   scope                    = data.azure_core_getsubscription.primary.id
///   lighthouse_definition_id = "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.lighthouse.Assignment;
/// import com.pulumi.azure.lighthouse.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new Assignment("example", AssignmentArgs.builder()
///             .scope(primary.id())
///             .lighthouseDefinitionId("/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:lighthouse:Assignment
///     properties:
///       scope: ${primary.id}
///       lighthouseDefinitionId: /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationDefinitions/00000000-0000-0000-0000-000000000000
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ManagedServices` - 2022-10-01
///
/// ## Import
///
/// Lighthouse Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:lighthouse/assignment:Assignment example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.ManagedServices/registrationAssignments/00000000-0000-0000-0000-000000000000
/// ```
class Assignment extends pulumi.CustomResource {
  /// A Fully qualified path of the lighthouse definition, such as `/subscriptions/0afefe50-734e-4610-8c82-a144aff49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-8e081c90ada2`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> lighthouseDefinitionId;
  /// A unique UUID/GUID which identifies this lighthouse assignment- one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The scope at which the Lighthouse Assignment applies too, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333` or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;

  /// Creates a new [Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assignment]. {@macro pulumi_lighthouse_assignment_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assignment(
    String name, {
    AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lighthouse/assignment:Assignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lighthouseDefinitionId = registerOutput<String>('lighthouseDefinitionId');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
  }

  /// Gets an existing [Assignment] resource's state with the given [name] and [id].
  static Assignment get(
    String name,
    pulumi.Input<String> id, {
    AssignmentState? state,
  }) {
    return Assignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Assignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:lighthouse/assignment:Assignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lighthouseDefinitionId = registerOutput<String>('lighthouseDefinitionId');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
  }
}
