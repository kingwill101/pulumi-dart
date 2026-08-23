import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_args.dart';
import 'organization_policy_boolean_policy.dart';
import 'organization_policy_list_policy.dart';
import 'organization_policy_restore_policy.dart';
import 'organization_policy_state.dart';

/// Allows management of Organization Policies for a Google Cloud Project.
///
/// &gt; **Warning:** This resource has been superseded by `gcp.orgpolicy.Policy`. `gcp.orgpolicy.Policy` uses Organization Policy API V2 instead of Cloud Resource Manager API V1 and it supports additional features such as tags and conditions.
///
/// To get more information about Organization Policies, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setOrgPolicy)
/// * How-to Guides
/// * [Introduction to the Organization Policy Service](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
/// To set policy with a [boolean constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-boolean-constraints):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serialPortPolicy = new gcp.projects.OrganizationPolicy("serial_port_policy", {
///     project: "your-project-id",
///     constraint: "compute.disableSerialPortAccess",
///     booleanPolicy: {
///         enforced: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// serial_port_policy = gcp.projects.OrganizationPolicy("serial_port_policy",
///     project="your-project-id",
///     constraint="compute.disableSerialPortAccess",
///     boolean_policy={
///         "enforced": True,
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
///     var serialPortPolicy = new Gcp.Projects.OrganizationPolicy("serial_port_policy", new()
///     {
///         Project = "your-project-id",
///         Constraint = "compute.disableSerialPortAccess",
///         BooleanPolicy = new Gcp.Projects.Inputs.OrganizationPolicyBooleanPolicyArgs
///         {
///             Enforced = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewOrganizationPolicy(ctx, "serial_port_policy", &projects.OrganizationPolicyArgs{
/// 			Project:    pulumi.String("your-project-id"),
/// 			Constraint: pulumi.String("compute.disableSerialPortAccess"),
/// 			BooleanPolicy: &projects.OrganizationPolicyBooleanPolicyArgs{
/// 				Enforced: pulumi.Bool(true),
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
/// resource "gcp_projects_organizationpolicy" "serial_port_policy" {
///   project    = "your-project-id"
///   constraint = "compute.disableSerialPortAccess"
///   boolean_policy = {
///     enforced = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyBooleanPolicyArgs;
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
///         var serialPortPolicy = new OrganizationPolicy("serialPortPolicy", OrganizationPolicyArgs.builder()
///             .project("your-project-id")
///             .constraint("compute.disableSerialPortAccess")
///             .booleanPolicy(OrganizationPolicyBooleanPolicyArgs.builder()
///                 .enforced(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serialPortPolicy:
///     type: gcp:projects:OrganizationPolicy
///     name: serial_port_policy
///     properties:
///       project: your-project-id
///       constraint: compute.disableSerialPortAccess
///       booleanPolicy:
///         enforced: true
/// ```
///
///
///
/// To set a policy with a [list constraint](https://docs.cloud.google.com/resource-manager/docs/organization-policy/quickstart-list-constraints):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
///     project: "your-project-id",
///     constraint: "serviceuser.services",
///     listPolicy: {
///         allow: {
///             all: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
///     project="your-project-id",
///     constraint="serviceuser.services",
///     list_policy={
///         "allow": {
///             "all": True,
///         },
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
///     var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
///     {
///         Project = "your-project-id",
///         Constraint = "serviceuser.services",
///         ListPolicy = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyArgs
///         {
///             Allow = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyAllowArgs
///             {
///                 All = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// 			Project:    pulumi.String("your-project-id"),
/// 			Constraint: pulumi.String("serviceuser.services"),
/// 			ListPolicy: &projects.OrganizationPolicyListPolicyArgs{
/// 				Allow: &projects.OrganizationPolicyListPolicyAllowArgs{
/// 					All: pulumi.Bool(true),
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
/// resource "gcp_projects_organizationpolicy" "services_policy" {
///   project    = "your-project-id"
///   constraint = "serviceuser.services"
///   list_policy = {
///     allow = {
///       all = true
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyAllowArgs;
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
///         var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
///             .project("your-project-id")
///             .constraint("serviceuser.services")
///             .listPolicy(OrganizationPolicyListPolicyArgs.builder()
///                 .allow(OrganizationPolicyListPolicyAllowArgs.builder()
///                     .all(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicesPolicy:
///     type: gcp:projects:OrganizationPolicy
///     name: services_policy
///     properties:
///       project: your-project-id
///       constraint: serviceuser.services
///       listPolicy:
///         allow:
///           all: true
/// ```
///
///
///
/// Or to deny some services, use the following instead:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
///     project: "your-project-id",
///     constraint: "serviceuser.services",
///     listPolicy: {
///         suggestedValue: "compute.googleapis.com",
///         deny: {
///             values: ["cloudresourcemanager.googleapis.com"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
///     project="your-project-id",
///     constraint="serviceuser.services",
///     list_policy={
///         "suggested_value": "compute.googleapis.com",
///         "deny": {
///             "values": ["cloudresourcemanager.googleapis.com"],
///         },
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
///     var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
///     {
///         Project = "your-project-id",
///         Constraint = "serviceuser.services",
///         ListPolicy = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyArgs
///         {
///             SuggestedValue = "compute.googleapis.com",
///             Deny = new Gcp.Projects.Inputs.OrganizationPolicyListPolicyDenyArgs
///             {
///                 Values = new[]
///                 {
///                     "cloudresourcemanager.googleapis.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// 			Project:    pulumi.String("your-project-id"),
/// 			Constraint: pulumi.String("serviceuser.services"),
/// 			ListPolicy: &projects.OrganizationPolicyListPolicyArgs{
/// 				SuggestedValue: pulumi.String("compute.googleapis.com"),
/// 				Deny: &projects.OrganizationPolicyListPolicyDenyArgs{
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("cloudresourcemanager.googleapis.com"),
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
/// resource "gcp_projects_organizationpolicy" "services_policy" {
///   project    = "your-project-id"
///   constraint = "serviceuser.services"
///   list_policy = {
///     suggested_value = "compute.googleapis.com"
///     deny = {
///       values = ["cloudresourcemanager.googleapis.com"]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyListPolicyDenyArgs;
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
///         var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
///             .project("your-project-id")
///             .constraint("serviceuser.services")
///             .listPolicy(OrganizationPolicyListPolicyArgs.builder()
///                 .suggestedValue("compute.googleapis.com")
///                 .deny(OrganizationPolicyListPolicyDenyArgs.builder()
///                     .values("cloudresourcemanager.googleapis.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicesPolicy:
///     type: gcp:projects:OrganizationPolicy
///     name: services_policy
///     properties:
///       project: your-project-id
///       constraint: serviceuser.services
///       listPolicy:
///         suggestedValue: compute.googleapis.com
///         deny:
///           values:
///             - cloudresourcemanager.googleapis.com
/// ```
///
///
/// To restore the default project organization policy, use the following instead:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const servicesPolicy = new gcp.projects.OrganizationPolicy("services_policy", {
///     project: "your-project-id",
///     constraint: "serviceuser.services",
///     restorePolicy: {
///         "default": true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// services_policy = gcp.projects.OrganizationPolicy("services_policy",
///     project="your-project-id",
///     constraint="serviceuser.services",
///     restore_policy={
///         "default": True,
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
///     var servicesPolicy = new Gcp.Projects.OrganizationPolicy("services_policy", new()
///     {
///         Project = "your-project-id",
///         Constraint = "serviceuser.services",
///         RestorePolicy = new Gcp.Projects.Inputs.OrganizationPolicyRestorePolicyArgs
///         {
///             Default = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewOrganizationPolicy(ctx, "services_policy", &projects.OrganizationPolicyArgs{
/// 			Project:    pulumi.String("your-project-id"),
/// 			Constraint: pulumi.String("serviceuser.services"),
/// 			RestorePolicy: &projects.OrganizationPolicyRestorePolicyArgs{
/// 				Default: pulumi.Bool(true),
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
/// resource "gcp_projects_organizationpolicy" "services_policy" {
///   project    = "your-project-id"
///   constraint = "serviceuser.services"
///   restore_policy = {
///     default = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.OrganizationPolicy;
/// import com.pulumi.gcp.projects.OrganizationPolicyArgs;
/// import com.pulumi.gcp.projects.inputs.OrganizationPolicyRestorePolicyArgs;
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
///         var servicesPolicy = new OrganizationPolicy("servicesPolicy", OrganizationPolicyArgs.builder()
///             .project("your-project-id")
///             .constraint("serviceuser.services")
///             .restorePolicy(OrganizationPolicyRestorePolicyArgs.builder()
///                 .default_(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   servicesPolicy:
///     type: gcp:projects:OrganizationPolicy
///     name: services_policy
///     properties:
///       project: your-project-id
///       constraint: serviceuser.services
///       restorePolicy:
///         default: true
/// ```
///
///
/// ## Import
///
/// Project organization policies can be imported using any of the follow formats:
///
/// * `projects/{{project_id}}:constraints/{{constraint}}`
/// * `{{project_id}}:constraints/{{constraint}}`
/// * `{{project_id}}:{{constraint}}`
///
///
/// When using the `pulumi import` command, project organization policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default projects/{{project_id}}:constraints/{{constraint}}
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:constraints/{{constraint}}
/// $ pulumi import gcp:projects/organizationPolicy:OrganizationPolicy default {{project_id}}:{{constraint}}
/// ```
class OrganizationPolicy extends pulumi.CustomResource {
  /// A boolean policy is a constraint that is either enforced or not. Structure is documented below.
  late final pulumi.Output<OrganizationPolicyBooleanPolicy?> booleanPolicy;
  /// The name of the Constraint the Policy is configuring, for example, `serviceuser.services`. Check out the [complete list of available constraints](https://docs.cloud.google.com/resource-manager/docs/organization-policy/understanding-constraints#available_constraints).
  ///
  /// - - -
  late final pulumi.Output<String> constraint;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  late final pulumi.Output<String> deletionPolicy;
  /// (Computed) The etag of the organization policy. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other.
  late final pulumi.Output<String> etag;
  /// A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values. Structure is documented below.
  late final pulumi.Output<OrganizationPolicyListPolicy?> listPolicy;
  /// The project id of the project to set the policy for.
  late final pulumi.Output<String> project;
  /// A restore policy is a constraint to restore the default policy. Structure is documented below.
  ///
  /// &gt; **Note:** If none of [`booleanPolicy`, `listPolicy`, `restorePolicy`] are defined the policy for a given constraint will
  /// effectively be unset. This is represented in the UI as the constraint being 'Inherited'.
  late final pulumi.Output<OrganizationPolicyRestorePolicy?> restorePolicy;
  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds, representing when the variable was last updated. Example: "2016-10-09T12:33:37.578138407Z".
  late final pulumi.Output<String> updateTime;
  /// Version of the Policy. Default version is 0.
  late final pulumi.Output<int> version;

  /// Creates a new [OrganizationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationPolicy]. {@macro pulumi_projects_organization_policy_organization_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationPolicy(
    String name, {
    OrganizationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/organizationPolicy:OrganizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    booleanPolicy = registerOutput<OrganizationPolicyBooleanPolicy?>('booleanPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyBooleanPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    constraint = registerOutput<String>('constraint');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    listPolicy = registerOutput<OrganizationPolicyListPolicy?>('listPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyListPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    restorePolicy = registerOutput<OrganizationPolicyRestorePolicy?>('restorePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyRestorePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [OrganizationPolicy] resource's state with the given [name] and [id].
  static OrganizationPolicy get(
    String name,
    pulumi.Input<String> id, {
    OrganizationPolicyState? state,
  }) {
    return OrganizationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/organizationPolicy:OrganizationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    booleanPolicy = registerOutput<OrganizationPolicyBooleanPolicy?>('booleanPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyBooleanPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    constraint = registerOutput<String>('constraint');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    listPolicy = registerOutput<OrganizationPolicyListPolicy?>('listPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyListPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    restorePolicy = registerOutput<OrganizationPolicyRestorePolicy?>('restorePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationPolicyRestorePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
    version = registerOutput<int>('version');
  }
}
