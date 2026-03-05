import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_project_security_health_analytics_custom_module_args.dart';
import 'management_project_security_health_analytics_custom_module_custom_config.dart';
import 'management_project_security_health_analytics_custom_module_state.dart';

/// Represents an instance of a Security Health Analytics custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization, folder, or project level.
/// Custom modules that you create at the organization or folder level are inherited
/// by the child folders and projects.
///
///
/// To get more information about ProjectSecurityHealthAnalyticsCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/security-center-management/rest/v1/projects.locations.securityHealthAnalyticsCustomModules)
/// * How-to Guides
/// * [Overview of custom modules for Security Health Analytics](https://cloud.google.com/security-command-center/docs/custom-modules-sha-overview)
///
/// ## Example Usage
///
/// ### Scc Management Organization Project Security Health Analytics Custom Module Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example", {
///     location: "global",
///     displayName: "basic_custom_module",
///     enablementState: "ENABLED",
///     customConfig: {
///         predicate: {
///             expression: "resource.rotationPeriod > duration(\"2592000s\")",
///         },
///         resourceSelector: {
///             resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         description: "The rotation period of the identified cryptokey resource exceeds 30 days.",
///         recommendation: "Set the rotation period to at most 30 days.",
///         severity: "MEDIUM",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example",
///     location="global",
///     display_name="basic_custom_module",
///     enablement_state="ENABLED",
///     custom_config={
///         "predicate": {
///             "expression": "resource.rotationPeriod > duration(\"2592000s\")",
///         },
///         "resource_selector": {
///             "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         "description": "The rotation period of the identified cryptokey resource exceeds 30 days.",
///         "recommendation": "Set the rotation period to at most 30 days.",
///         "severity": "MEDIUM",
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
///     var example = new Gcp.SecurityCenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example", new()
///     {
///         Location = "global",
///         DisplayName = "basic_custom_module",
///         EnablementState = "ENABLED",
///         CustomConfig = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs
///         {
///             Predicate = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs
///             {
///                 Expression = "resource.rotationPeriod > duration(\"2592000s\")",
///             },
///             ResourceSelector = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs
///             {
///                 ResourceTypes = new[]
///                 {
///                     "cloudkms.googleapis.com/CryptoKey",
///                 },
///             },
///             Description = "The rotation period of the identified cryptokey resource exceeds 30 days.",
///             Recommendation = "Set the rotation period to at most 30 days.",
///             Severity = "MEDIUM",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewManagementProjectSecurityHealthAnalyticsCustomModule(ctx, "example", &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleArgs{
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("basic_custom_module"),
/// 			EnablementState: pulumi.String("ENABLED"),
/// 			CustomConfig: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs{
/// 				Predicate: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs{
/// 					Expression: pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// 				},
/// 				ResourceSelector: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs{
/// 					ResourceTypes: pulumi.StringArray{
/// 						pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// 					},
/// 				},
/// 				Description:    pulumi.String("The rotation period of the identified cryptokey resource exceeds 30 days."),
/// 				Recommendation: pulumi.String("Set the rotation period to at most 30 days."),
/// 				Severity:       pulumi.String("MEDIUM"),
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
/// import com.pulumi.gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule;
/// import com.pulumi.gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs;
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
///         var example = new ManagementProjectSecurityHealthAnalyticsCustomModule("example", ManagementProjectSecurityHealthAnalyticsCustomModuleArgs.builder()
///             .location("global")
///             .displayName("basic_custom_module")
///             .enablementState("ENABLED")
///             .customConfig(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs.builder()
///                 .predicate(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs.builder()
///                     .expression("resource.rotationPeriod > duration(\"2592000s\")")
///                     .build())
///                 .resourceSelector(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs.builder()
///                     .resourceTypes("cloudkms.googleapis.com/CryptoKey")
///                     .build())
///                 .description("The rotation period of the identified cryptokey resource exceeds 30 days.")
///                 .recommendation("Set the rotation period to at most 30 days.")
///                 .severity("MEDIUM")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:securitycenter:ManagementProjectSecurityHealthAnalyticsCustomModule
///     properties:
///       location: global
///       displayName: basic_custom_module
///       enablementState: ENABLED
///       customConfig:
///         predicate:
///           expression: resource.rotationPeriod > duration("2592000s")
///         resourceSelector:
///           resourceTypes:
///             - cloudkms.googleapis.com/CryptoKey
///         description: The rotation period of the identified cryptokey resource exceeds 30 days.
///         recommendation: Set the rotation period to at most 30 days.
///         severity: MEDIUM
/// ```
///
/// ### Scc Management Organization Project Security Health Analytics Custom Module Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example", {
///     location: "global",
///     displayName: "full_custom_module",
///     enablementState: "ENABLED",
///     customConfig: {
///         predicate: {
///             expression: "resource.rotationPeriod > duration(\"2592000s\")",
///             title: "Purpose of the expression",
///             description: "description of the expression",
///             location: "location of the expression",
///         },
///         customOutput: {
///             properties: [{
///                 name: "duration",
///                 valueExpression: {
///                     expression: "resource.rotationPeriod",
///                     title: "Purpose of the expression",
///                     description: "description of the expression",
///                     location: "location of the expression",
///                 },
///             }],
///         },
///         resourceSelector: {
///             resourceTypes: ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         severity: "LOW",
///         description: "Description of the custom module",
///         recommendation: "Steps to resolve violation",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example",
///     location="global",
///     display_name="full_custom_module",
///     enablement_state="ENABLED",
///     custom_config={
///         "predicate": {
///             "expression": "resource.rotationPeriod > duration(\"2592000s\")",
///             "title": "Purpose of the expression",
///             "description": "description of the expression",
///             "location": "location of the expression",
///         },
///         "custom_output": {
///             "properties": [{
///                 "name": "duration",
///                 "value_expression": {
///                     "expression": "resource.rotationPeriod",
///                     "title": "Purpose of the expression",
///                     "description": "description of the expression",
///                     "location": "location of the expression",
///                 },
///             }],
///         },
///         "resource_selector": {
///             "resource_types": ["cloudkms.googleapis.com/CryptoKey"],
///         },
///         "severity": "LOW",
///         "description": "Description of the custom module",
///         "recommendation": "Steps to resolve violation",
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
///     var example = new Gcp.SecurityCenter.ManagementProjectSecurityHealthAnalyticsCustomModule("example", new()
///     {
///         Location = "global",
///         DisplayName = "full_custom_module",
///         EnablementState = "ENABLED",
///         CustomConfig = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs
///         {
///             Predicate = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs
///             {
///                 Expression = "resource.rotationPeriod > duration(\"2592000s\")",
///                 Title = "Purpose of the expression",
///                 Description = "description of the expression",
///                 Location = "location of the expression",
///             },
///             CustomOutput = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs
///             {
///                 Properties = new[]
///                 {
///                     new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs
///                     {
///                         Name = "duration",
///                         ValueExpression = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs
///                         {
///                             Expression = "resource.rotationPeriod",
///                             Title = "Purpose of the expression",
///                             Description = "description of the expression",
///                             Location = "location of the expression",
///                         },
///                     },
///                 },
///             },
///             ResourceSelector = new Gcp.SecurityCenter.Inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs
///             {
///                 ResourceTypes = new[]
///                 {
///                     "cloudkms.googleapis.com/CryptoKey",
///                 },
///             },
///             Severity = "LOW",
///             Description = "Description of the custom module",
///             Recommendation = "Steps to resolve violation",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewManagementProjectSecurityHealthAnalyticsCustomModule(ctx, "example", &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleArgs{
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("full_custom_module"),
/// 			EnablementState: pulumi.String("ENABLED"),
/// 			CustomConfig: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs{
/// 				Predicate: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs{
/// 					Expression:  pulumi.String("resource.rotationPeriod > duration(\"2592000s\")"),
/// 					Title:       pulumi.String("Purpose of the expression"),
/// 					Description: pulumi.String("description of the expression"),
/// 					Location:    pulumi.String("location of the expression"),
/// 				},
/// 				CustomOutput: securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs{
/// 					Properties: securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArray{
/// 						&securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs{
/// 							Name: pulumi.String("duration"),
/// 							ValueExpression: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs{
/// 								Expression:  pulumi.String("resource.rotationPeriod"),
/// 								Title:       pulumi.String("Purpose of the expression"),
/// 								Description: pulumi.String("description of the expression"),
/// 								Location:    pulumi.String("location of the expression"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ResourceSelector: &securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs{
/// 					ResourceTypes: pulumi.StringArray{
/// 						pulumi.String("cloudkms.googleapis.com/CryptoKey"),
/// 					},
/// 				},
/// 				Severity:       pulumi.String("LOW"),
/// 				Description:    pulumi.String("Description of the custom module"),
/// 				Recommendation: pulumi.String("Steps to resolve violation"),
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
/// import com.pulumi.gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModule;
/// import com.pulumi.gcp.securitycenter.ManagementProjectSecurityHealthAnalyticsCustomModuleArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs;
/// import com.pulumi.gcp.securitycenter.inputs.ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs;
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
///         var example = new ManagementProjectSecurityHealthAnalyticsCustomModule("example", ManagementProjectSecurityHealthAnalyticsCustomModuleArgs.builder()
///             .location("global")
///             .displayName("full_custom_module")
///             .enablementState("ENABLED")
///             .customConfig(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigArgs.builder()
///                 .predicate(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicateArgs.builder()
///                     .expression("resource.rotationPeriod > duration(\"2592000s\")")
///                     .title("Purpose of the expression")
///                     .description("description of the expression")
///                     .location("location of the expression")
///                     .build())
///                 .customOutput(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputArgs.builder()
///                     .properties(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyArgs.builder()
///                         .name("duration")
///                         .valueExpression(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpressionArgs.builder()
///                             .expression("resource.rotationPeriod")
///                             .title("Purpose of the expression")
///                             .description("description of the expression")
///                             .location("location of the expression")
///                             .build())
///                         .build())
///                     .build())
///                 .resourceSelector(ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelectorArgs.builder()
///                     .resourceTypes("cloudkms.googleapis.com/CryptoKey")
///                     .build())
///                 .severity("LOW")
///                 .description("Description of the custom module")
///                 .recommendation("Steps to resolve violation")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:securitycenter:ManagementProjectSecurityHealthAnalyticsCustomModule
///     properties:
///       location: global
///       displayName: full_custom_module
///       enablementState: ENABLED
///       customConfig:
///         predicate:
///           expression: resource.rotationPeriod > duration("2592000s")
///           title: Purpose of the expression
///           description: description of the expression
///           location: location of the expression
///         customOutput:
///           properties:
///             - name: duration
///               valueExpression:
///                 expression: resource.rotationPeriod
///                 title: Purpose of the expression
///                 description: description of the expression
///                 location: location of the expression
///         resourceSelector:
///           resourceTypes:
///             - cloudkms.googleapis.com/CryptoKey
///         severity: LOW
///         description: Description of the custom module
///         recommendation: Steps to resolve violation
/// ```
///
///
/// ## Import
///
/// ProjectSecurityHealthAnalyticsCustomModule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ProjectSecurityHealthAnalyticsCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementProjectSecurityHealthAnalyticsCustomModule:ManagementProjectSecurityHealthAnalyticsCustomModule default projects/{{project}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementProjectSecurityHealthAnalyticsCustomModule:ManagementProjectSecurityHealthAnalyticsCustomModule default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementProjectSecurityHealthAnalyticsCustomModule:ManagementProjectSecurityHealthAnalyticsCustomModule default {{location}}/{{name}}
/// ```
class ManagementProjectSecurityHealthAnalyticsCustomModule
    extends pulumi.CustomResource {
  /// If empty, indicates that the custom module was created in the organization,folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  late final pulumi.Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  late final pulumi.Output<
    ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig?
  >
  customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  late final pulumi.Output<String?> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String?> enablementState;

  /// The editor that last updated the custom module.
  late final pulumi.Output<String> lastEditor;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  late final pulumi.Output<String?> location;

  /// The resource name of the custom module. Its format is "projects/{project}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// The id {securityHealthAnalyticsCustomModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ManagementProjectSecurityHealthAnalyticsCustomModule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementProjectSecurityHealthAnalyticsCustomModule]. {@macro pulumi_securitycenter_management_project_security_health_analytics_custom_module_management_project_security_health_analytics_custom_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementProjectSecurityHealthAnalyticsCustomModule(
    String name, {
    ManagementProjectSecurityHealthAnalyticsCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/managementProjectSecurityHealthAnalyticsCustomModule:ManagementProjectSecurityHealthAnalyticsCustomModule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ancestorModule = registerOutput<String>('ancestorModule');
    customConfig =
        registerOutput<
          ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig?
        >(
          'customConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    displayName = registerOutput<String?>('displayName');
    enablementState = registerOutput<String?>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ManagementProjectSecurityHealthAnalyticsCustomModule] resource's state with the given [name] and [id].
  static ManagementProjectSecurityHealthAnalyticsCustomModule get(
    String name,
    pulumi.Input<String> id, {
    ManagementProjectSecurityHealthAnalyticsCustomModuleState? state,
  }) {
    return ManagementProjectSecurityHealthAnalyticsCustomModule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagementProjectSecurityHealthAnalyticsCustomModule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:securitycenter/managementProjectSecurityHealthAnalyticsCustomModule:ManagementProjectSecurityHealthAnalyticsCustomModule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ancestorModule = registerOutput<String>('ancestorModule');
    customConfig =
        registerOutput<
          ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig?
        >(
          'customConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    displayName = registerOutput<String?>('displayName');
    enablementState = registerOutput<String?>('enablementState');
    lastEditor = registerOutput<String>('lastEditor');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
