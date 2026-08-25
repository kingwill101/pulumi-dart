import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_attributes.dart';
import 'application_scope.dart';
import 'application_state.dart';

/// Application is a functional grouping of Services and Workloads that helps achieve a desired end-to-end business functionality. Services and Workloads are owned by the Application.
///
///
///
/// ## Example Usage
///
/// ### Apphub Application Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.apphub.Application("example", {
///     location: "us-east1",
///     applicationId: "example-application",
///     scope: {
///         type: "REGIONAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.apphub.Application("example",
///     location="us-east1",
///     application_id="example-application",
///     scope={
///         "type": "REGIONAL",
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
///     var example = new Gcp.Apphub.Application("example", new()
///     {
///         Location = "us-east1",
///         ApplicationId = "example-application",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.NewApplication(ctx, "example", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-east1"),
/// 			ApplicationId: pulumi.String("example-application"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
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
/// resource "gcp_apphub_application" "example" {
///   location       = "us-east1"
///   application_id = "example-application"
///   scope = {
///     type = "REGIONAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .location("us-east1")
///             .applicationId("example-application")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:apphub:Application
///     properties:
///       location: us-east1
///       applicationId: example-application
///       scope:
///         type: REGIONAL
/// ```
///
/// ### Apphub Application Global Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.apphub.Application("example", {
///     location: "global",
///     applicationId: "example-application",
///     scope: {
///         type: "GLOBAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.apphub.Application("example",
///     location="global",
///     application_id="example-application",
///     scope={
///         "type": "GLOBAL",
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
///     var example = new Gcp.Apphub.Application("example", new()
///     {
///         Location = "global",
///         ApplicationId = "example-application",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "GLOBAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.NewApplication(ctx, "example", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("global"),
/// 			ApplicationId: pulumi.String("example-application"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("GLOBAL"),
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
/// resource "gcp_apphub_application" "example" {
///   location       = "global"
///   application_id = "example-application"
///   scope = {
///     type = "GLOBAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .location("global")
///             .applicationId("example-application")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("GLOBAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:apphub:Application
///     properties:
///       location: global
///       applicationId: example-application
///       scope:
///         type: GLOBAL
/// ```
///
/// ### Apphub Application Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example2 = new gcp.apphub.Application("example2", {
///     location: "us-east1",
///     applicationId: "example-application",
///     displayName: "Application Full",
///     scope: {
///         type: "REGIONAL",
///     },
///     description: "Application for testing",
///     attributes: {
///         environment: {
///             type: "STAGING",
///         },
///         criticality: {
///             type: "MISSION_CRITICAL",
///         },
///         businessOwners: [{
///             displayName: "Alice",
///             email: "alice@google.com",
///         }],
///         developerOwners: [{
///             displayName: "Bob",
///             email: "bob@google.com",
///         }],
///         operatorOwners: [{
///             displayName: "Charlie",
///             email: "charlie@google.com",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example2 = gcp.apphub.Application("example2",
///     location="us-east1",
///     application_id="example-application",
///     display_name="Application Full",
///     scope={
///         "type": "REGIONAL",
///     },
///     description="Application for testing",
///     attributes={
///         "environment": {
///             "type": "STAGING",
///         },
///         "criticality": {
///             "type": "MISSION_CRITICAL",
///         },
///         "business_owners": [{
///             "display_name": "Alice",
///             "email": "alice@google.com",
///         }],
///         "developer_owners": [{
///             "display_name": "Bob",
///             "email": "bob@google.com",
///         }],
///         "operator_owners": [{
///             "display_name": "Charlie",
///             "email": "charlie@google.com",
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
///     var example2 = new Gcp.Apphub.Application("example2", new()
///     {
///         Location = "us-east1",
///         ApplicationId = "example-application",
///         DisplayName = "Application Full",
///         Scope = new Gcp.Apphub.Inputs.ApplicationScopeArgs
///         {
///             Type = "REGIONAL",
///         },
///         Description = "Application for testing",
///         Attributes = new Gcp.Apphub.Inputs.ApplicationAttributesArgs
///         {
///             Environment = new Gcp.Apphub.Inputs.ApplicationAttributesEnvironmentArgs
///             {
///                 Type = "STAGING",
///             },
///             Criticality = new Gcp.Apphub.Inputs.ApplicationAttributesCriticalityArgs
///             {
///                 Type = "MISSION_CRITICAL",
///             },
///             BusinessOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ApplicationAttributesBusinessOwnerArgs
///                 {
///                     DisplayName = "Alice",
///                     Email = "alice@google.com",
///                 },
///             },
///             DeveloperOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ApplicationAttributesDeveloperOwnerArgs
///                 {
///                     DisplayName = "Bob",
///                     Email = "bob@google.com",
///                 },
///             },
///             OperatorOwners = new[]
///             {
///                 new Gcp.Apphub.Inputs.ApplicationAttributesOperatorOwnerArgs
///                 {
///                     DisplayName = "Charlie",
///                     Email = "charlie@google.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apphub.NewApplication(ctx, "example2", &apphub.ApplicationArgs{
/// 			Location:      pulumi.String("us-east1"),
/// 			ApplicationId: pulumi.String("example-application"),
/// 			DisplayName:   pulumi.String("Application Full"),
/// 			Scope: &apphub.ApplicationScopeArgs{
/// 				Type: pulumi.String("REGIONAL"),
/// 			},
/// 			Description: pulumi.String("Application for testing"),
/// 			Attributes: &apphub.ApplicationAttributesArgs{
/// 				Environment: &apphub.ApplicationAttributesEnvironmentArgs{
/// 					Type: pulumi.String("STAGING"),
/// 				},
/// 				Criticality: &apphub.ApplicationAttributesCriticalityArgs{
/// 					Type: pulumi.String("MISSION_CRITICAL"),
/// 				},
/// 				BusinessOwners: apphub.ApplicationAttributesBusinessOwnerArray{
/// 					&apphub.ApplicationAttributesBusinessOwnerArgs{
/// 						DisplayName: pulumi.String("Alice"),
/// 						Email:       pulumi.String("alice@google.com"),
/// 					},
/// 				},
/// 				DeveloperOwners: apphub.ApplicationAttributesDeveloperOwnerArray{
/// 					&apphub.ApplicationAttributesDeveloperOwnerArgs{
/// 						DisplayName: pulumi.String("Bob"),
/// 						Email:       pulumi.String("bob@google.com"),
/// 					},
/// 				},
/// 				OperatorOwners: apphub.ApplicationAttributesOperatorOwnerArray{
/// 					&apphub.ApplicationAttributesOperatorOwnerArgs{
/// 						DisplayName: pulumi.String("Charlie"),
/// 						Email:       pulumi.String("charlie@google.com"),
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
/// resource "gcp_apphub_application" "example2" {
///   location       = "us-east1"
///   application_id = "example-application"
///   display_name   = "Application Full"
///   scope = {
///     type = "REGIONAL"
///   }
///   description = "Application for testing"
///   attributes = {
///     environment = {
///       type = "STAGING"
///     }
///     criticality = {
///       type = "MISSION_CRITICAL"
///     }
///     business_owners = [{
///       "displayName" = "Alice"
///       "email"       = "alice@google.com"
///     }]
///     developer_owners = [{
///       "displayName" = "Bob"
///       "email"       = "bob@google.com"
///     }]
///     operator_owners = [{
///       "displayName" = "Charlie"
///       "email"       = "charlie@google.com"
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
/// import com.pulumi.gcp.apphub.Application;
/// import com.pulumi.gcp.apphub.ApplicationArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationScopeArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesEnvironmentArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesCriticalityArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesBusinessOwnerArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesDeveloperOwnerArgs;
/// import com.pulumi.gcp.apphub.inputs.ApplicationAttributesOperatorOwnerArgs;
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
///         var example2 = new Application("example2", ApplicationArgs.builder()
///             .location("us-east1")
///             .applicationId("example-application")
///             .displayName("Application Full")
///             .scope(ApplicationScopeArgs.builder()
///                 .type("REGIONAL")
///                 .build())
///             .description("Application for testing")
///             .attributes(ApplicationAttributesArgs.builder()
///                 .environment(ApplicationAttributesEnvironmentArgs.builder()
///                     .type("STAGING")
///                     .build())
///                 .criticality(ApplicationAttributesCriticalityArgs.builder()
///                     .type("MISSION_CRITICAL")
///                     .build())
///                 .businessOwners(ApplicationAttributesBusinessOwnerArgs.builder()
///                     .displayName("Alice")
///                     .email("alice@google.com")
///                     .build())
///                 .developerOwners(ApplicationAttributesDeveloperOwnerArgs.builder()
///                     .displayName("Bob")
///                     .email("bob@google.com")
///                     .build())
///                 .operatorOwners(ApplicationAttributesOperatorOwnerArgs.builder()
///                     .displayName("Charlie")
///                     .email("charlie@google.com")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example2:
///     type: gcp:apphub:Application
///     properties:
///       location: us-east1
///       applicationId: example-application
///       displayName: Application Full
///       scope:
///         type: REGIONAL
///       description: Application for testing
///       attributes:
///         environment:
///           type: STAGING
///         criticality:
///           type: MISSION_CRITICAL
///         businessOwners:
///           - displayName: Alice
///             email: alice@google.com
///         developerOwners:
///           - displayName: Bob
///             email: bob@google.com
///         operatorOwners:
///           - displayName: Charlie
///             email: charlie@google.com
/// ```
///
///
/// ## Import
///
/// Application can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}`
/// * `{{project}}/{{location}}/{{application_id}}`
/// * `{{location}}/{{application_id}}`
///
///
/// When using the `pulumi import` command, Application can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/application:Application default projects/{{project}}/locations/{{location}}/applications/{{application_id}}
/// $ pulumi import gcp:apphub/application:Application default {{project}}/{{location}}/{{application_id}}
/// $ pulumi import gcp:apphub/application:Application default {{location}}/{{application_id}}
/// ```
class Application extends pulumi.CustomResource {
  /// Required. The Application identifier.
  late final pulumi.Output<String> applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationAttributes?> attributes;
  /// Output only. Create time.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. User-defined description of an Application.
  late final pulumi.Output<String?> description;
  /// Optional. User-defined name for the Application.
  late final pulumi.Output<String?> displayName;
  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of an Application. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Scope of an application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationScope> scope;
  /// Output only. Application state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  late final pulumi.Output<String> state;
  /// Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  late final pulumi.Output<String> uid;
  /// Output only. Update time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_apphub_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Application] resource.
  Application.reference(String urn)
    : super(
        'gcp:apphub/application:Application',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    attributes = registerOutput<ApplicationAttributes?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    scope = registerOutput<ApplicationScope>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
