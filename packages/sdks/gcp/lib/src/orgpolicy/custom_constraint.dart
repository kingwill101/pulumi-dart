import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_constraint_args.dart';
import 'custom_constraint_state.dart';

/// Custom constraints are created by administrators to provide more granular and customizable control over the specific fields that are restricted by your organization policies.
///
///
/// To get more information about CustomConstraint, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/orgpolicy/rest/v2/organizations.constraints)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints)
/// * [Supported Services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services)
///
/// ## Example Usage
///
/// ### Org Policy Custom Constraint Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const constraint = new gcp.orgpolicy.CustomConstraint("constraint", {
///     name: "custom.disableGkeAutoUpgrade",
///     parent: "organizations/123456789",
///     actionType: "ALLOW",
///     condition: "resource.management.autoUpgrade == false",
///     methodTypes: [
///         "CREATE",
///         "UPDATE",
///     ],
///     resourceTypes: ["container.googleapis.com/NodePool"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// constraint = gcp.orgpolicy.CustomConstraint("constraint",
///     name="custom.disableGkeAutoUpgrade",
///     parent="organizations/123456789",
///     action_type="ALLOW",
///     condition="resource.management.autoUpgrade == false",
///     method_types=[
///         "CREATE",
///         "UPDATE",
///     ],
///     resource_types=["container.googleapis.com/NodePool"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var constraint = new Gcp.OrgPolicy.CustomConstraint("constraint", new()
///     {
///         Name = "custom.disableGkeAutoUpgrade",
///         Parent = "organizations/123456789",
///         ActionType = "ALLOW",
///         Condition = "resource.management.autoUpgrade == false",
///         MethodTypes = new[]
///         {
///             "CREATE",
///             "UPDATE",
///         },
///         ResourceTypes = new[]
///         {
///             "container.googleapis.com/NodePool",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orgpolicy.NewCustomConstraint(ctx, "constraint", &orgpolicy.CustomConstraintArgs{
/// 			Name:       pulumi.String("custom.disableGkeAutoUpgrade"),
/// 			Parent:     pulumi.String("organizations/123456789"),
/// 			ActionType: pulumi.String("ALLOW"),
/// 			Condition:  pulumi.String("resource.management.autoUpgrade == false"),
/// 			MethodTypes: pulumi.StringArray{
/// 				pulumi.String("CREATE"),
/// 				pulumi.String("UPDATE"),
/// 			},
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("container.googleapis.com/NodePool"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_orgpolicy_customconstraint" "constraint" {
///   name           = "custom.disableGkeAutoUpgrade"
///   parent         = "organizations/123456789"
///   action_type    = "ALLOW"
///   condition      = "resource.management.autoUpgrade == false"
///   method_types   = ["CREATE", "UPDATE"]
///   resource_types = ["container.googleapis.com/NodePool"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.orgpolicy.CustomConstraint;
/// import com.pulumi.gcp.orgpolicy.CustomConstraintArgs;
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
///         var constraint = new CustomConstraint("constraint", CustomConstraintArgs.builder()
///             .name("custom.disableGkeAutoUpgrade")
///             .parent("organizations/123456789")
///             .actionType("ALLOW")
///             .condition("resource.management.autoUpgrade == false")
///             .methodTypes(
///                 "CREATE",
///                 "UPDATE")
///             .resourceTypes("container.googleapis.com/NodePool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   constraint:
///     type: gcp:orgpolicy:CustomConstraint
///     properties:
///       name: custom.disableGkeAutoUpgrade
///       parent: organizations/123456789
///       actionType: ALLOW
///       condition: resource.management.autoUpgrade == false
///       methodTypes:
///         - CREATE
///         - UPDATE
///       resourceTypes:
///         - container.googleapis.com/NodePool
/// ```
///
/// ### Org Policy Custom Constraint Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const constraint = new gcp.orgpolicy.CustomConstraint("constraint", {
///     name: "custom.disableGkeAutoUpgrade",
///     parent: "organizations/123456789",
///     displayName: "Disable GKE auto upgrade",
///     description: "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///     actionType: "ALLOW",
///     condition: "resource.management.autoUpgrade == false",
///     methodTypes: [
///         "CREATE",
///         "UPDATE",
///     ],
///     resourceTypes: ["container.googleapis.com/NodePool"],
/// });
/// const bool = new gcp.orgpolicy.Policy("bool", {
///     name: pulumi.interpolate`organizations/123456789/policies/${constraint.name}`,
///     parent: "organizations/123456789",
///     spec: {
///         rules: [{
///             enforce: "TRUE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// constraint = gcp.orgpolicy.CustomConstraint("constraint",
///     name="custom.disableGkeAutoUpgrade",
///     parent="organizations/123456789",
///     display_name="Disable GKE auto upgrade",
///     description="Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///     action_type="ALLOW",
///     condition="resource.management.autoUpgrade == false",
///     method_types=[
///         "CREATE",
///         "UPDATE",
///     ],
///     resource_types=["container.googleapis.com/NodePool"])
/// bool = gcp.orgpolicy.Policy("bool",
///     name=constraint.name.apply(lambda name: f"organizations/123456789/policies/{name}"),
///     parent="organizations/123456789",
///     spec={
///         "rules": [{
///             "enforce": "TRUE",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var constraint = new Gcp.OrgPolicy.CustomConstraint("constraint", new()
///     {
///         Name = "custom.disableGkeAutoUpgrade",
///         Parent = "organizations/123456789",
///         DisplayName = "Disable GKE auto upgrade",
///         Description = "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.",
///         ActionType = "ALLOW",
///         Condition = "resource.management.autoUpgrade == false",
///         MethodTypes = new[]
///         {
///             "CREATE",
///             "UPDATE",
///         },
///         ResourceTypes = new[]
///         {
///             "container.googleapis.com/NodePool",
///         },
///     });
///
///     var @bool = new Gcp.OrgPolicy.Policy("bool", new()
///     {
///         Name = constraint.Name.Apply(name => $"organizations/123456789/policies/{name}"),
///         Parent = "organizations/123456789",
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Enforce = "TRUE",
///                 },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		constraint, err := orgpolicy.NewCustomConstraint(ctx, "constraint", &orgpolicy.CustomConstraintArgs{
/// 			Name:        pulumi.String("custom.disableGkeAutoUpgrade"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			DisplayName: pulumi.String("Disable GKE auto upgrade"),
/// 			Description: pulumi.String("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced."),
/// 			ActionType:  pulumi.String("ALLOW"),
/// 			Condition:   pulumi.String("resource.management.autoUpgrade == false"),
/// 			MethodTypes: pulumi.StringArray{
/// 				pulumi.String("CREATE"),
/// 				pulumi.String("UPDATE"),
/// 			},
/// 			ResourceTypes: pulumi.StringArray{
/// 				pulumi.String("container.googleapis.com/NodePool"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = orgpolicy.NewPolicy(ctx, "bool", &orgpolicy.PolicyArgs{
/// 			Name: constraint.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/policies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Enforce: pulumi.String("TRUE"),
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_orgpolicy_customconstraint" "constraint" {
///   name           = "custom.disableGkeAutoUpgrade"
///   parent         = "organizations/123456789"
///   display_name   = "Disable GKE auto upgrade"
///   description    = "Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced."
///   action_type    = "ALLOW"
///   condition      = "resource.management.autoUpgrade == false"
///   method_types   = ["CREATE", "UPDATE"]
///   resource_types = ["container.googleapis.com/NodePool"]
/// }
/// resource "gcp_orgpolicy_policy" "bool" {
///   name   ="organizations/123456789/policies/${gcp_orgpolicy_customconstraint.constraint.name}"
///   parent = "organizations/123456789"
///   spec = {
///     rules = [{
///       "enforce" = "TRUE"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.orgpolicy.CustomConstraint;
/// import com.pulumi.gcp.orgpolicy.CustomConstraintArgs;
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecRuleArgs;
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
///         var constraint = new CustomConstraint("constraint", CustomConstraintArgs.builder()
///             .name("custom.disableGkeAutoUpgrade")
///             .parent("organizations/123456789")
///             .displayName("Disable GKE auto upgrade")
///             .description("Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.")
///             .actionType("ALLOW")
///             .condition("resource.management.autoUpgrade == false")
///             .methodTypes(
///                 "CREATE",
///                 "UPDATE")
///             .resourceTypes("container.googleapis.com/NodePool")
///             .build());
///
///         var bool = new Policy("bool", PolicyArgs.builder()
///             .name(constraint.name().applyValue(_name -> String.format("organizations/123456789/policies/%s", _name)))
///             .parent("organizations/123456789")
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("TRUE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   constraint:
///     type: gcp:orgpolicy:CustomConstraint
///     properties:
///       name: custom.disableGkeAutoUpgrade
///       parent: organizations/123456789
///       displayName: Disable GKE auto upgrade
///       description: Only allow GKE NodePool resource to be created or updated if AutoUpgrade is not enabled where this custom constraint is enforced.
///       actionType: ALLOW
///       condition: resource.management.autoUpgrade == false
///       methodTypes:
///         - CREATE
///         - UPDATE
///       resourceTypes:
///         - container.googleapis.com/NodePool
///   bool:
///     type: gcp:orgpolicy:Policy
///     properties:
///       name: organizations/123456789/policies/${constraint.name}
///       parent: organizations/123456789
///       spec:
///         rules:
///           - enforce: TRUE
/// ```
///
///
/// ## Import
///
/// CustomConstraint can be imported using any of these accepted formats:
///
/// * `{{parent}}/customConstraints/{{name}}`
///
///
/// When using the `pulumi import` command, CustomConstraint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:orgpolicy/customConstraint:CustomConstraint default {{parent}}/customConstraints/{{name}}
/// ```
class CustomConstraint extends pulumi.CustomResource {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> actionType;
  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  late final pulumi.Output<String> condition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  late final pulumi.Output<String?> description;
  /// A human-friendly name for the constraint.
  late final pulumi.Output<String?> displayName;
  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  late final pulumi.Output<List<String>> methodTypes;
  /// Immutable. The name of the custom constraint. This is unique within the organization.
  late final pulumi.Output<String> name;
  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  late final pulumi.Output<String> parent;
  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  late final pulumi.Output<List<String>> resourceTypes;
  /// Output only. The timestamp representing when the constraint was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomConstraint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomConstraint]. {@macro pulumi_orgpolicy_custom_constraint_custom_constraint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomConstraint(
    String name, {
    CustomConstraintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:orgpolicy/customConstraint:CustomConstraint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionType = registerOutput<String>('actionType');
    condition = registerOutput<String>('condition');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    methodTypes = registerOutput<List<String>>('methodTypes');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    resourceTypes = registerOutput<List<String>>('resourceTypes');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CustomConstraint] resource's state with the given [name] and [id].
  static CustomConstraint get(
    String name,
    pulumi.Input<String> id, {
    CustomConstraintState? state,
  }) {
    return CustomConstraint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomConstraint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:orgpolicy/customConstraint:CustomConstraint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actionType = registerOutput<String>('actionType');
    condition = registerOutput<String>('condition');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    methodTypes = registerOutput<List<String>>('methodTypes');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    resourceTypes = registerOutput<List<String>>('resourceTypes');
    updateTime = registerOutput<String>('updateTime');
  }
}
