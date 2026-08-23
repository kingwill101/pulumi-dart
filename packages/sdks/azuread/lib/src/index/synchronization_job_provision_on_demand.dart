import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_provision_on_demand_args.dart';
import 'synchronization_job_provision_on_demand_state.dart';

/// Manages synchronization job on demand provisioning associated with a service principal (enterprise application) within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Synchronization.ReadWrite.All`
///
/// ## Example Usage
///
/// *Basic example*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const exampleGroup = new azuread.Group("example", {
///     displayName: "example",
///     owners: [current.then(current => current.objectId)],
///     securityEnabled: true,
/// });
/// const example = azuread.getApplicationTemplate({
///     displayName: "Azure Databricks SCIM Provisioning Connector",
/// });
/// const exampleApplicationFromTemplate = new azuread.ApplicationFromTemplate("example", {
///     displayName: "example",
///     templateId: example.then(example => example.templateId),
/// });
/// const exampleGetServicePrincipal = azuread.getServicePrincipalOutput({
///     objectId: exampleApplicationFromTemplate.servicePrincipalObjectId,
/// });
/// const exampleSynchronizationSecret = new azuread.SynchronizationSecret("example", {
///     servicePrincipalId: exampleGetServicePrincipal.apply(exampleGetServicePrincipal => exampleGetServicePrincipal.id),
///     credentials: [
///         {
///             key: "BaseAddress",
///             value: "https://adb-example.azuredatabricks.net/api/2.0/preview/scim",
///         },
///         {
///             key: "SecretToken",
///             value: "some-token",
///         },
///     ],
/// });
/// const exampleSynchronizationJob = new azuread.SynchronizationJob("example", {
///     servicePrincipalId: exampleGetServicePrincipal.apply(exampleGetServicePrincipal => exampleGetServicePrincipal.id),
///     templateId: "dataBricks",
///     enabled: true,
/// });
/// const exampleSynchronizationJobProvisionOnDemand = new azuread.SynchronizationJobProvisionOnDemand("example", {
///     servicePrincipalId: exampleSynchronizationJob.servicePrincipalId,
///     synchronizationJobId: exampleSynchronizationJob.id,
///     parameters: [{
///         ruleId: "",
///         subjects: [{
///             objectId: exampleGroup.objectId,
///             objectTypeName: "Group",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example_group = azuread.Group("example",
///     display_name="example",
///     owners=[current.object_id],
///     security_enabled=True)
/// example = azuread.get_application_template(display_name="Azure Databricks SCIM Provisioning Connector")
/// example_application_from_template = azuread.ApplicationFromTemplate("example",
///     display_name="example",
///     template_id=example.template_id)
/// example_get_service_principal = azuread.get_service_principal_output(object_id=example_application_from_template.service_principal_object_id)
/// example_synchronization_secret = azuread.SynchronizationSecret("example",
///     service_principal_id=example_get_service_principal.id,
///     credentials=[
///         {
///             "key": "BaseAddress",
///             "value": "https://adb-example.azuredatabricks.net/api/2.0/preview/scim",
///         },
///         {
///             "key": "SecretToken",
///             "value": "some-token",
///         },
///     ])
/// example_synchronization_job = azuread.SynchronizationJob("example",
///     service_principal_id=example_get_service_principal.id,
///     template_id="dataBricks",
///     enabled=True)
/// example_synchronization_job_provision_on_demand = azuread.SynchronizationJobProvisionOnDemand("example",
///     service_principal_id=example_synchronization_job.service_principal_id,
///     synchronization_job_id=example_synchronization_job.id,
///     parameters=[{
///         "rule_id": "",
///         "subjects": [{
///             "object_id": example_group.object_id,
///             "object_type_name": "Group",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var exampleGroup = new AzureAD.Group("example", new()
///     {
///         DisplayName = "example",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SecurityEnabled = true,
///     });
///
///     var example = AzureAD.GetApplicationTemplate.Invoke(new()
///     {
///         DisplayName = "Azure Databricks SCIM Provisioning Connector",
///     });
///
///     var exampleApplicationFromTemplate = new AzureAD.ApplicationFromTemplate("example", new()
///     {
///         DisplayName = "example",
///         TemplateId = example.Apply(getApplicationTemplateResult => getApplicationTemplateResult.TemplateId),
///     });
///
///     var exampleGetServicePrincipal = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         ObjectId = exampleApplicationFromTemplate.ServicePrincipalObjectId,
///     });
///
///     var exampleSynchronizationSecret = new AzureAD.SynchronizationSecret("example", new()
///     {
///         ServicePrincipalId = exampleGetServicePrincipal.Apply(getServicePrincipalResult => getServicePrincipalResult.Id),
///         Credentials = new[]
///         {
///             new AzureAD.Inputs.SynchronizationSecretCredentialArgs
///             {
///                 Key = "BaseAddress",
///                 Value = "https://adb-example.azuredatabricks.net/api/2.0/preview/scim",
///             },
///             new AzureAD.Inputs.SynchronizationSecretCredentialArgs
///             {
///                 Key = "SecretToken",
///                 Value = "some-token",
///             },
///         },
///     });
///
///     var exampleSynchronizationJob = new AzureAD.SynchronizationJob("example", new()
///     {
///         ServicePrincipalId = exampleGetServicePrincipal.Apply(getServicePrincipalResult => getServicePrincipalResult.Id),
///         TemplateId = "dataBricks",
///         Enabled = true,
///     });
///
///     var exampleSynchronizationJobProvisionOnDemand = new AzureAD.SynchronizationJobProvisionOnDemand("example", new()
///     {
///         ServicePrincipalId = exampleSynchronizationJob.ServicePrincipalId,
///         SynchronizationJobId = exampleSynchronizationJob.Id,
///         Parameters = new[]
///         {
///             new AzureAD.Inputs.SynchronizationJobProvisionOnDemandParameterArgs
///             {
///                 RuleId = "",
///                 Subjects = new[]
///                 {
///                     new AzureAD.Inputs.SynchronizationJobProvisionOnDemandParameterSubjectArgs
///                     {
///                         ObjectId = exampleGroup.ObjectId,
///                         ObjectTypeName = "Group",
///                     },
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
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroup, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.GetApplicationTemplate(ctx, &azuread.GetApplicationTemplateArgs{
/// 			DisplayName: pulumi.StringRef("Azure Databricks SCIM Provisioning Connector"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationFromTemplate, err := azuread.NewApplicationFromTemplate(ctx, "example", &azuread.ApplicationFromTemplateArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			TemplateId:  pulumi.String(example.TemplateId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetServicePrincipal := azuread.GetServicePrincipalOutput(ctx, azuread.GetServicePrincipalOutputArgs{
/// 			ObjectId: exampleApplicationFromTemplate.ServicePrincipalObjectId,
/// 		}, nil)
/// 		_, err = azuread.NewSynchronizationSecret(ctx, "example", &azuread.SynchronizationSecretArgs{
/// 			ServicePrincipalId: pulumi.String(exampleGetServicePrincipal.ApplyT(func(exampleGetServicePrincipal azuread.GetServicePrincipalResult) (*string, error) {
/// 				return exampleGetServicePrincipal.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Credentials: azuread.SynchronizationSecretCredentialArray{
/// 				&azuread.SynchronizationSecretCredentialArgs{
/// 					Key:   pulumi.String("BaseAddress"),
/// 					Value: pulumi.String("https://adb-example.azuredatabricks.net/api/2.0/preview/scim"),
/// 				},
/// 				&azuread.SynchronizationSecretCredentialArgs{
/// 					Key:   pulumi.String("SecretToken"),
/// 					Value: pulumi.String("some-token"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSynchronizationJob, err := azuread.NewSynchronizationJob(ctx, "example", &azuread.SynchronizationJobArgs{
/// 			ServicePrincipalId: pulumi.String(exampleGetServicePrincipal.ApplyT(func(exampleGetServicePrincipal azuread.GetServicePrincipalResult) (*string, error) {
/// 				return exampleGetServicePrincipal.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			TemplateId: pulumi.String("dataBricks"),
/// 			Enabled:    pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewSynchronizationJobProvisionOnDemand(ctx, "example", &azuread.SynchronizationJobProvisionOnDemandArgs{
/// 			ServicePrincipalId:   exampleSynchronizationJob.ServicePrincipalId,
/// 			SynchronizationJobId: exampleSynchronizationJob.ID(),
/// 			Parameters: azuread.SynchronizationJobProvisionOnDemandParameterArray{
/// 				&azuread.SynchronizationJobProvisionOnDemandParameterArgs{
/// 					RuleId: pulumi.String(""),
/// 					Subjects: azuread.SynchronizationJobProvisionOnDemandParameterSubjectArray{
/// 						&azuread.SynchronizationJobProvisionOnDemandParameterSubjectArgs{
/// 							ObjectId:       exampleGroup.ObjectId,
/// 							ObjectTypeName: pulumi.String("Group"),
/// 						},
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// data "azuread_getclientconfig" "current" {
/// }
/// data "azuread_getapplicationtemplate" "example" {
///   display_name = "Azure Databricks SCIM Provisioning Connector"
/// }
/// data "azuread_getserviceprincipal" "exampleGetServicePrincipal" {
///   object_id = azuread_applicationfromtemplate.example.service_principal_object_id
/// }
///
/// resource "azuread_group" "example" {
///   display_name     = "example"
///   owners           = [data.azuread_getclientconfig.current.object_id]
///   security_enabled = true
/// }
/// resource "azuread_applicationfromtemplate" "example" {
///   display_name = "example"
///   template_id  = data.azuread_getapplicationtemplate.example.template_id
/// }
/// resource "azuread_synchronizationsecret" "example" {
///   service_principal_id = data.azuread_getserviceprincipal.exampleGetServicePrincipal.id
///   credentials {
///     key   = "BaseAddress"
///     value = "https://adb-example.azuredatabricks.net/api/2.0/preview/scim"
///   }
///   credentials {
///     key   = "SecretToken"
///     value = "some-token"
///   }
/// }
/// resource "azuread_synchronizationjob" "example" {
///   service_principal_id = data.azuread_getserviceprincipal.exampleGetServicePrincipal.id
///   template_id          = "dataBricks"
///   enabled              = true
/// }
/// resource "azuread_synchronizationjobprovisionondemand" "example" {
///   service_principal_id   = azuread_synchronizationjob.example.service_principal_id
///   synchronization_job_id = azuread_synchronizationjob.example.id
///   parameters {
///     rule_id = ""
///     subjects {
///       object_id        = azuread_group.example.object_id
///       object_type_name = "Group"
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
/// import com.pulumi.azuread.ApplicationFromTemplate;
/// import com.pulumi.azuread.ApplicationFromTemplateArgs;
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
/// import com.pulumi.azuread.SynchronizationSecret;
/// import com.pulumi.azuread.SynchronizationSecretArgs;
/// import com.pulumi.azuread.inputs.SynchronizationSecretCredentialArgs;
/// import com.pulumi.azuread.SynchronizationJob;
/// import com.pulumi.azuread.SynchronizationJobArgs;
/// import com.pulumi.azuread.SynchronizationJobProvisionOnDemand;
/// import com.pulumi.azuread.SynchronizationJobProvisionOnDemandArgs;
/// import com.pulumi.azuread.inputs.SynchronizationJobProvisionOnDemandParameterArgs;
/// import com.pulumi.azuread.inputs.SynchronizationJobProvisionOnDemandParameterSubjectArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("example")
///             .owners(current.objectId())
///             .securityEnabled(true)
///             .build());
///
///         final var example = AzureadFunctions.getApplicationTemplate(GetApplicationTemplateArgs.builder()
///             .displayName("Azure Databricks SCIM Provisioning Connector")
///             .build());
///
///         var exampleApplicationFromTemplate = new ApplicationFromTemplate("exampleApplicationFromTemplate", ApplicationFromTemplateArgs.builder()
///             .displayName("example")
///             .templateId(example.templateId())
///             .build());
///
///         final var exampleGetServicePrincipal = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .objectId(exampleApplicationFromTemplate.servicePrincipalObjectId())
///             .build());
///
///         var exampleSynchronizationSecret = new SynchronizationSecret("exampleSynchronizationSecret", SynchronizationSecretArgs.builder()
///             .servicePrincipalId(exampleGetServicePrincipal.applyValue(_exampleGetServicePrincipal -> _exampleGetServicePrincipal.id()))
///             .credentials(
///                 SynchronizationSecretCredentialArgs.builder()
///                     .key("BaseAddress")
///                     .value("https://adb-example.azuredatabricks.net/api/2.0/preview/scim")
///                     .build(),
///                 SynchronizationSecretCredentialArgs.builder()
///                     .key("SecretToken")
///                     .value("some-token")
///                     .build())
///             .build());
///
///         var exampleSynchronizationJob = new SynchronizationJob("exampleSynchronizationJob", SynchronizationJobArgs.builder()
///             .servicePrincipalId(exampleGetServicePrincipal.applyValue(_exampleGetServicePrincipal -> _exampleGetServicePrincipal.id()))
///             .templateId("dataBricks")
///             .enabled(true)
///             .build());
///
///         var exampleSynchronizationJobProvisionOnDemand = new SynchronizationJobProvisionOnDemand("exampleSynchronizationJobProvisionOnDemand", SynchronizationJobProvisionOnDemandArgs.builder()
///             .servicePrincipalId(exampleSynchronizationJob.servicePrincipalId())
///             .synchronizationJobId(exampleSynchronizationJob.id())
///             .parameters(SynchronizationJobProvisionOnDemandParameterArgs.builder()
///                 .ruleId("")
///                 .subjects(SynchronizationJobProvisionOnDemandParameterSubjectArgs.builder()
///                     .objectId(exampleGroup.objectId())
///                     .objectTypeName("Group")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroup:
///     type: azuread:Group
///     name: example
///     properties:
///       displayName: example
///       owners:
///         - ${current.objectId}
///       securityEnabled: true
///   exampleApplicationFromTemplate:
///     type: azuread:ApplicationFromTemplate
///     name: example
///     properties:
///       displayName: example
///       templateId: ${example.templateId}
///   exampleSynchronizationSecret:
///     type: azuread:SynchronizationSecret
///     name: example
///     properties:
///       servicePrincipalId: ${exampleGetServicePrincipal.id}
///       credentials:
///         - key: BaseAddress
///           value: https://adb-example.azuredatabricks.net/api/2.0/preview/scim
///         - key: SecretToken
///           value: some-token
///   exampleSynchronizationJob:
///     type: azuread:SynchronizationJob
///     name: example
///     properties:
///       servicePrincipalId: ${exampleGetServicePrincipal.id}
///       templateId: dataBricks
///       enabled: true
///   exampleSynchronizationJobProvisionOnDemand:
///     type: azuread:SynchronizationJobProvisionOnDemand
///     name: example
///     properties:
///       servicePrincipalId: ${exampleSynchronizationJob.servicePrincipalId}
///       synchronizationJobId: ${exampleSynchronizationJob.id}
///       parameters:
///         - ruleId: ""
///           subjects:
///             - objectId: ${exampleGroup.objectId}
///               objectTypeName: Group
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azuread:getApplicationTemplate
///       arguments:
///         displayName: Azure Databricks SCIM Provisioning Connector
///   exampleGetServicePrincipal:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         objectId: ${exampleApplicationFromTemplate.servicePrincipalObjectId}
/// ```
///
///
/// ## Import
///
/// This resource does not support importing.
class SynchronizationJobProvisionOnDemand extends pulumi.CustomResource {
  /// One or more `parameter` blocks as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;
  /// The ID of the service principal for the synchronization job.
  late final pulumi.Output<String> servicePrincipalId;
  /// The ID of the synchronization job.
  late final pulumi.Output<String> synchronizationJobId;
  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation. To force a re-invocation without changing these keys/values, use the `terraform taint` command.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [SynchronizationJobProvisionOnDemand].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynchronizationJobProvisionOnDemand]. {@macro pulumi_index_synchronization_job_provision_on_demand_synchronization_job_provision_on_demand_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynchronizationJobProvisionOnDemand(
    String name, {
    SynchronizationJobProvisionOnDemandArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationJobProvisionOnDemand:SynchronizationJobProvisionOnDemand',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    synchronizationJobId = registerOutput<String>('synchronizationJobId');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }

  /// Gets an existing [SynchronizationJobProvisionOnDemand] resource's state with the given [name] and [id].
  static SynchronizationJobProvisionOnDemand get(
    String name,
    pulumi.Input<String> id, {
    SynchronizationJobProvisionOnDemandState? state,
  }) {
    return SynchronizationJobProvisionOnDemand._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SynchronizationJobProvisionOnDemand._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationJobProvisionOnDemand:SynchronizationJobProvisionOnDemand',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    synchronizationJobId = registerOutput<String>('synchronizationJobId');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
