import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_template_deployment_args.dart';
import 'group_template_deployment_state.dart';

/// Manages a Template Deployment at a Management Group Scope.
///
/// &gt; **Note:** Deleting a Deployment at the Management Group Scope will not delete any resources created by the deployment.
///
/// &gt; **Note:** Deployments to a Management Group are always Incrementally applied. Existing resources that are not part of the template will not be removed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.management.getGroup({
///     name: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleGroupTemplateDeployment = new azure.management.GroupTemplateDeployment("example", {
///     name: "example",
///     location: "West Europe",
///     managementGroupId: example.then(example => example.id),
///     templateContent: `{
///   \\"schema\\": \\"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\\",
///   \\"contentVersion\\": \\"1.0.0.0\\",
///   \\"parameters\\": {
///     \\"policyAssignmentName\\": {
///       \\"type\\": \\"string\\",
///       \\"defaultValue\\": \\"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\\",
///       \\"metadata\\": {
///         \\"description\\": \\"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\\"
///       }
///     },
///     \\"policyDefinitionID\\": {
///       \\"type\\": \\"string\\",
///       \\"metadata\\": {
///         \\"description\\": \\"Specifies the ID of the policy definition or policy set definition being assigned.\\"
///       }
///     }
///   },
///   \\"resources\\": [
///     {
///       \\"type\\": \\"Microsoft.Authorization/policyAssignments\\",
///       \\"name\\": \\"[parameters('policyAssignmentName')]\\",
///       \\"apiVersion\\": \\"2019-09-01\\",
///       \\"properties\\": {
///         \\"scope\\": \\"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\\",
///         \\"policyDefinitionId\\": \\"[parameters('policyDefinitionID')]\\"
///       }
///     }
///   ]
/// }
/// `,
///     parametersContent: `{
///   \\"schema\\": \\"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\\",
///   \\"contentVersion\\": \\"1.0.0.0\\",
///   \\"parameters\\": {
///     \\"policyDefinitionID\\": {
///       \\"value\\": \\"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\\"
///     }
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.get_group(name="00000000-0000-0000-0000-000000000000")
/// example_group_template_deployment = azure.management.GroupTemplateDeployment("example",
///     name="example",
///     location="West Europe",
///     management_group_id=example.id,
///     template_content="""{
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyAssignmentName\": {
///       \"type\": \"string\",
///       \"defaultValue\": \"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\",
///       \"metadata\": {
///         \"description\": \"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\"
///       }
///     },
///     \"policyDefinitionID\": {
///       \"type\": \"string\",
///       \"metadata\": {
///         \"description\": \"Specifies the ID of the policy definition or policy set definition being assigned.\"
///       }
///     }
///   },
///   \"resources\": [
///     {
///       \"type\": \"Microsoft.Authorization/policyAssignments\",
///       \"name\": \"[parameters('policyAssignmentName')]\",
///       \"apiVersion\": \"2019-09-01\",
///       \"properties\": {
///         \"scope\": \"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\",
///         \"policyDefinitionId\": \"[parameters('policyDefinitionID')]\"
///       }
///     }
///   ]
/// }
/// """,
///     parameters_content="""{
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyDefinitionID\": {
///       \"value\": \"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\"
///     }
///   }
/// }
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
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///     });
///
///     var exampleGroupTemplateDeployment = new Azure.Management.GroupTemplateDeployment("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         ManagementGroupId = example.Apply(getGroupResult => getGroupResult.Id),
///         TemplateContent = @"{
///   \""$schema\"": \""https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\"",
///   \""contentVersion\"": \""1.0.0.0\"",
///   \""parameters\"": {
///     \""policyAssignmentName\"": {
///       \""type\"": \""string\"",
///       \""defaultValue\"": \""[guid(parameters('policyDefinitionID'), resourceGroup().name)]\"",
///       \""metadata\"": {
///         \""description\"": \""Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\""
///       }
///     },
///     \""policyDefinitionID\"": {
///       \""type\"": \""string\"",
///       \""metadata\"": {
///         \""description\"": \""Specifies the ID of the policy definition or policy set definition being assigned.\""
///       }
///     }
///   },
///   \""resources\"": [
///     {
///       \""type\"": \""Microsoft.Authorization/policyAssignments\"",
///       \""name\"": \""[parameters('policyAssignmentName')]\"",
///       \""apiVersion\"": \""2019-09-01\"",
///       \""properties\"": {
///         \""scope\"": \""[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\"",
///         \""policyDefinitionId\"": \""[parameters('policyDefinitionID')]\""
///       }
///     }
///   ]
/// }
/// ",
///         ParametersContent = @"{
///   \""$schema\"": \""https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\"",
///   \""contentVersion\"": \""1.0.0.0\"",
///   \""parameters\"": {
///     \""policyDefinitionID\"": {
///       \""value\"": \""/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\""
///     }
///   }
/// }
/// ",
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
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupTemplateDeployment(ctx, "example", &management.GroupTemplateDeploymentArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 			ManagementGroupId: pulumi.String(example.Id),
/// 			TemplateContent: pulumi.String(`{
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyAssignmentName\": {
///       \"type\": \"string\",
///       \"defaultValue\": \"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\",
///       \"metadata\": {
///         \"description\": \"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\"
///       }
///     },
///     \"policyDefinitionID\": {
///       \"type\": \"string\",
///       \"metadata\": {
///         \"description\": \"Specifies the ID of the policy definition or policy set definition being assigned.\"
///       }
///     }
///   },
///   \"resources\": [
///     {
///       \"type\": \"Microsoft.Authorization/policyAssignments\",
///       \"name\": \"[parameters('policyAssignmentName')]\",
///       \"apiVersion\": \"2019-09-01\",
///       \"properties\": {
///         \"scope\": \"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\",
///         \"policyDefinitionId\": \"[parameters('policyDefinitionID')]\"
///       }
///     }
///   ]
/// }
/// `),
/// 			ParametersContent: pulumi.String(`{
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyDefinitionID\": {
///       \"value\": \"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\"
///     }
///   }
/// }
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
/// data "azure_management_getgroup" "example" {
///   name = "00000000-0000-0000-0000-000000000000"
/// }
///
/// resource "azure_management_grouptemplatedeployment" "example" {
///   name                = "example"
///   location            = "West Europe"
///   management_group_id = data.azure_management_getgroup.example.id
///   template_content    = "{\n  \\\"$schema\\\": \\\"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\\\",\n  \\\"contentVersion\\\": \\\"1.0.0.0\\\",\n  \\\"parameters\\\": {\n    \\\"policyAssignmentName\\\": {\n      \\\"type\\\": \\\"string\\\",\n      \\\"defaultValue\\\": \\\"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\\\",\n      \\\"metadata\\\": {\n        \\\"description\\\": \\\"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\\\"\n      }\n    },\n    \\\"policyDefinitionID\\\": {\n      \\\"type\\\": \\\"string\\\",\n      \\\"metadata\\\": {\n        \\\"description\\\": \\\"Specifies the ID of the policy definition or policy set definition being assigned.\\\"\n      }\n    }\n  },\n  \\\"resources\\\": [\n    {\n      \\\"type\\\": \\\"Microsoft.Authorization/policyAssignments\\\",\n      \\\"name\\\": \\\"[parameters('policyAssignmentName')]\\\",\n      \\\"apiVersion\\\": \\\"2019-09-01\\\",\n      \\\"properties\\\": {\n        \\\"scope\\\": \\\"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\\\",\n        \\\"policyDefinitionId\\\": \\\"[parameters('policyDefinitionID')]\\\"\n      }\n    }\n  ]\n}\n"
///   parameters_content  = "{\n  \\\"$schema\\\": \\\"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\\\",\n  \\\"contentVersion\\\": \\\"1.0.0.0\\\",\n  \\\"parameters\\\": {\n    \\\"policyDefinitionID\\\": {\n      \\\"value\\\": \\\"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\\\"\n    }\n  }\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.management.GroupTemplateDeployment;
/// import com.pulumi.azure.management.GroupTemplateDeploymentArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         var exampleGroupTemplateDeployment = new GroupTemplateDeployment("exampleGroupTemplateDeployment", GroupTemplateDeploymentArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .managementGroupId(example.id())
///             .templateContent("""
/// {
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyAssignmentName\": {
///       \"type\": \"string\",
///       \"defaultValue\": \"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\",
///       \"metadata\": {
///         \"description\": \"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\"
///       }
///     },
///     \"policyDefinitionID\": {
///       \"type\": \"string\",
///       \"metadata\": {
///         \"description\": \"Specifies the ID of the policy definition or policy set definition being assigned.\"
///       }
///     }
///   },
///   \"resources\": [
///     {
///       \"type\": \"Microsoft.Authorization/policyAssignments\",
///       \"name\": \"[parameters('policyAssignmentName')]\",
///       \"apiVersion\": \"2019-09-01\",
///       \"properties\": {
///         \"scope\": \"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\",
///         \"policyDefinitionId\": \"[parameters('policyDefinitionID')]\"
///       }
///     }
///   ]
/// }
///             """)
///             .parametersContent("""
/// {
///   \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\",
///   \"contentVersion\": \"1.0.0.0\",
///   \"parameters\": {
///     \"policyDefinitionID\": {
///       \"value\": \"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\"
///     }
///   }
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroupTemplateDeployment:
///     type: azure:management:GroupTemplateDeployment
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       managementGroupId: ${example.id}
///       templateContent: |
///         {
///           \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#\",
///           \"contentVersion\": \"1.0.0.0\",
///           \"parameters\": {
///             \"policyAssignmentName\": {
///               \"type\": \"string\",
///               \"defaultValue\": \"[guid(parameters('policyDefinitionID'), resourceGroup().name)]\",
///               \"metadata\": {
///                 \"description\": \"Specifies the name of the policy assignment, can be used defined or an idempotent name as the defaultValue provides.\"
///               }
///             },
///             \"policyDefinitionID\": {
///               \"type\": \"string\",
///               \"metadata\": {
///                 \"description\": \"Specifies the ID of the policy definition or policy set definition being assigned.\"
///               }
///             }
///           },
///           \"resources\": [
///             {
///               \"type\": \"Microsoft.Authorization/policyAssignments\",
///               \"name\": \"[parameters('policyAssignmentName')]\",
///               \"apiVersion\": \"2019-09-01\",
///               \"properties\": {
///                 \"scope\": \"[subscriptionResourceId('Microsoft.Resources/resourceGroups', resourceGroup().name)]\",
///                 \"policyDefinitionId\": \"[parameters('policyDefinitionID')]\"
///               }
///             }
///           ]
///         }
///       parametersContent: |
///         {
///           \"$schema\": \"https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#\",
///           \"contentVersion\": \"1.0.0.0\",
///           \"parameters\": {
///             \"policyDefinitionID\": {
///               \"value\": \"/providers/Microsoft.Authorization/policyDefinitions/0a914e76-4921-4c19-b460-a2d36003525a\"
///             }
///           }
///         }
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: 00000000-0000-0000-0000-000000000000
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.management.getGroup({
///     name: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleGroupTemplateDeployment = new azure.management.GroupTemplateDeployment("example", {
///     name: "example",
///     location: "West Europe",
///     managementGroupId: example.then(example => example.id),
///     templateContent: std.file({
///         input: "templates/example-deploy-template.json",
///     }).then(invoke => invoke.result),
///     parametersContent: std.file({
///         input: "templates/example-deploy-params.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.management.get_group(name="00000000-0000-0000-0000-000000000000")
/// example_group_template_deployment = azure.management.GroupTemplateDeployment("example",
///     name="example",
///     location="West Europe",
///     management_group_id=example.id,
///     template_content=std.file(input="templates/example-deploy-template.json").result,
///     parameters_content=std.file(input="templates/example-deploy-params.json").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///     });
///
///     var exampleGroupTemplateDeployment = new Azure.Management.GroupTemplateDeployment("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         ManagementGroupId = example.Apply(getGroupResult => getGroupResult.Id),
///         TemplateContent = Std.File.Invoke(new()
///         {
///             Input = "templates/example-deploy-template.json",
///         }).Apply(invoke => invoke.Result),
///         ParametersContent = Std.File.Invoke(new()
///         {
///             Input = "templates/example-deploy-params.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "templates/example-deploy-template.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "templates/example-deploy-params.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupTemplateDeployment(ctx, "example", &management.GroupTemplateDeploymentArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
/// 			ManagementGroupId: pulumi.String(example.Id),
/// 			TemplateContent:   pulumi.String(invokeFile.Result),
/// 			ParametersContent: pulumi.String(invokeFile1.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_management_getgroup" "example" {
///   name = "00000000-0000-0000-0000-000000000000"
/// }
///
/// resource "azure_management_grouptemplatedeployment" "example" {
///   name                = "example"
///   location            = "West Europe"
///   management_group_id = data.azure_management_getgroup.example.id
///   template_content    = file("templates/example-deploy-template.json")
///   parameters_content  = file("templates/example-deploy-params.json")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.management.GroupTemplateDeployment;
/// import com.pulumi.azure.management.GroupTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         var exampleGroupTemplateDeployment = new GroupTemplateDeployment("exampleGroupTemplateDeployment", GroupTemplateDeploymentArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .managementGroupId(example.id())
///             .templateContent(StdFunctions.file(FileArgs.builder()
///                 .input("templates/example-deploy-template.json")
///                 .build()).result())
///             .parametersContent(StdFunctions.file(FileArgs.builder()
///                 .input("templates/example-deploy-params.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroupTemplateDeployment:
///     type: azure:management:GroupTemplateDeployment
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       managementGroupId: ${example.id}
///       templateContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: templates/example-deploy-template.json
///           return: result
///       parametersContent:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: templates/example-deploy-params.json
///           return: result
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: 00000000-0000-0000-0000-000000000000
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.management.getGroup({
///     name: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleGetTemplateSpecVersion = azure.core.getTemplateSpecVersion({
///     name: "exampleTemplateForManagementGroup",
///     resourceGroupName: "exampleResourceGroup",
///     version: "v1.0.9",
/// });
/// const exampleGroupTemplateDeployment = new azure.management.GroupTemplateDeployment("example", {
///     name: "example",
///     location: "West Europe",
///     managementGroupId: example.then(example => example.id),
///     templateSpecVersionId: exampleGetTemplateSpecVersion.then(exampleGetTemplateSpecVersion => exampleGetTemplateSpecVersion.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.get_group(name="00000000-0000-0000-0000-000000000000")
/// example_get_template_spec_version = azure.core.get_template_spec_version(name="exampleTemplateForManagementGroup",
///     resource_group_name="exampleResourceGroup",
///     version="v1.0.9")
/// example_group_template_deployment = azure.management.GroupTemplateDeployment("example",
///     name="example",
///     location="West Europe",
///     management_group_id=example.id,
///     template_spec_version_id=example_get_template_spec_version.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///     });
///
///     var exampleGetTemplateSpecVersion = Azure.Core.GetTemplateSpecVersion.Invoke(new()
///     {
///         Name = "exampleTemplateForManagementGroup",
///         ResourceGroupName = "exampleResourceGroup",
///         Version = "v1.0.9",
///     });
///
///     var exampleGroupTemplateDeployment = new Azure.Management.GroupTemplateDeployment("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///         ManagementGroupId = example.Apply(getGroupResult => getGroupResult.Id),
///         TemplateSpecVersionId = exampleGetTemplateSpecVersion.Apply(getTemplateSpecVersionResult => getTemplateSpecVersionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetTemplateSpecVersion, err := core.GetTemplateSpecVersion(ctx, &core.GetTemplateSpecVersionArgs{
/// 			Name:              "exampleTemplateForManagementGroup",
/// 			ResourceGroupName: "exampleResourceGroup",
/// 			Version:           "v1.0.9",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroupTemplateDeployment(ctx, "example", &management.GroupTemplateDeploymentArgs{
/// 			Name:                  pulumi.String("example"),
/// 			Location:              pulumi.String("West Europe"),
/// 			ManagementGroupId:     pulumi.String(example.Id),
/// 			TemplateSpecVersionId: pulumi.String(exampleGetTemplateSpecVersion.Id),
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
/// data "azure_management_getgroup" "example" {
///   name = "00000000-0000-0000-0000-000000000000"
/// }
/// data "azure_core_gettemplatespecversion" "exampleGetTemplateSpecVersion" {
///   name                = "exampleTemplateForManagementGroup"
///   resource_group_name = "exampleResourceGroup"
///   version             = "v1.0.9"
/// }
///
/// resource "azure_management_grouptemplatedeployment" "example" {
///   name                     = "example"
///   location                 = "West Europe"
///   management_group_id      = data.azure_management_getgroup.example.id
///   template_spec_version_id = data.azure_core_gettemplatespecversion.exampleGetTemplateSpecVersion.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetTemplateSpecVersionArgs;
/// import com.pulumi.azure.management.GroupTemplateDeployment;
/// import com.pulumi.azure.management.GroupTemplateDeploymentArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         final var exampleGetTemplateSpecVersion = CoreFunctions.getTemplateSpecVersion(GetTemplateSpecVersionArgs.builder()
///             .name("exampleTemplateForManagementGroup")
///             .resourceGroupName("exampleResourceGroup")
///             .version("v1.0.9")
///             .build());
///
///         var exampleGroupTemplateDeployment = new GroupTemplateDeployment("exampleGroupTemplateDeployment", GroupTemplateDeploymentArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .managementGroupId(example.id())
///             .templateSpecVersionId(exampleGetTemplateSpecVersion.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroupTemplateDeployment:
///     type: azure:management:GroupTemplateDeployment
///     name: example
///     properties:
///       name: example
///       location: West Europe
///       managementGroupId: ${example.id}
///       templateSpecVersionId: ${exampleGetTemplateSpecVersion.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: 00000000-0000-0000-0000-000000000000
///   exampleGetTemplateSpecVersion:
///     fn::invoke:
///       function: azure:core:getTemplateSpecVersion
///       arguments:
///         name: exampleTemplateForManagementGroup
///         resourceGroupName: exampleResourceGroup
///         version: v1.0.9
/// ```
///
///
/// ## Import
///
/// Management Group Template Deployments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/groupTemplateDeployment:GroupTemplateDeployment example /providers/Microsoft.Management/managementGroups/my-management-group-id/providers/Microsoft.Resources/deployments/deploy1
/// ```
class GroupTemplateDeployment extends pulumi.CustomResource {
  /// The Debug Level which should be used for this Resource Group Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  late final pulumi.Output<String?> debugLevel;
  /// The Azure Region where the Template should exist. Changing this forces a new Template to be created.
  late final pulumi.Output<String> location;
  /// The ID of the Management Group to apply the Deployment Template to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managementGroupId;
  /// The name which should be used for this Template Deployment. Changing this forces a new Template Deployment to be created.
  late final pulumi.Output<String> name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  late final pulumi.Output<String> outputContent;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  late final pulumi.Output<String> parametersContent;
  /// A mapping of tags which should be assigned to the Template.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The contents of the ARM Template which should be deployed into this Resource Group. Cannot be specified with `templateSpecVersionId`.
  late final pulumi.Output<String> templateContent;
  /// The ID of the Template Spec Version to deploy. Cannot be specified with `templateContent`.
  late final pulumi.Output<String?> templateSpecVersionId;

  /// Creates a new [GroupTemplateDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupTemplateDeployment]. {@macro pulumi_management_group_template_deployment_group_template_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupTemplateDeployment(
    String name, {
    GroupTemplateDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupTemplateDeployment:GroupTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Gets an existing [GroupTemplateDeployment] resource's state with the given [name] and [id].
  static GroupTemplateDeployment get(
    String name,
    pulumi.Input<String> id, {
    GroupTemplateDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GroupTemplateDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GroupTemplateDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/groupTemplateDeployment:GroupTemplateDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }

  /// Creates a typed reference to an existing [GroupTemplateDeployment] resource.
  GroupTemplateDeployment.reference(String urn)
    : super(
        'azure:management/groupTemplateDeployment:GroupTemplateDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    debugLevel = registerOutput<String?>('debugLevel');
    location = registerOutput<String>('location');
    managementGroupId = registerOutput<String>('managementGroupId');
    this.name = registerOutput<String>('name');
    outputContent = registerOutput<String>('outputContent');
    parametersContent = registerOutput<String>('parametersContent');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    templateContent = registerOutput<String>('templateContent');
    templateSpecVersionId = registerOutput<String?>('templateSpecVersionId');
  }
}
