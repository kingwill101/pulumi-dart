import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_job_args.dart';
import 'synchronization_job_state.dart';

/// Manages a synchronization job associated with a service principal (enterprise application) within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.All` or `Directory.ReadWrite.All`
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
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
/// 		exampleGetServicePrincipal := azuread.LookupServicePrincipalOutput(ctx, azuread.GetServicePrincipalOutputArgs{
/// 			ObjectId: exampleApplicationFromTemplate.ServicePrincipalObjectId,
/// 		}, nil)
/// 		_, err = azuread.NewSynchronizationSecret(ctx, "example", &azuread.SynchronizationSecretArgs{
/// 			ServicePrincipalId: pulumi.String(exampleGetServicePrincipal.ApplyT(func(exampleGetServicePrincipal azuread.GetServicePrincipalResult) (*string, error) {
/// 				return &exampleGetServicePrincipal.Id, nil
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
/// 		_, err = azuread.NewSynchronizationJob(ctx, "example", &azuread.SynchronizationJobArgs{
/// 			ServicePrincipalId: pulumi.String(exampleGetServicePrincipal.ApplyT(func(exampleGetServicePrincipal azuread.GetServicePrincipalResult) (*string, error) {
/// 				return &exampleGetServicePrincipal.Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			TemplateId: pulumi.String("dataBricks"),
/// 			Enabled:    pulumi.Bool(true),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
/// import com.pulumi.azuread.ApplicationFromTemplate;
/// import com.pulumi.azuread.ApplicationFromTemplateArgs;
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
/// import com.pulumi.azuread.SynchronizationSecret;
/// import com.pulumi.azuread.SynchronizationSecretArgs;
/// import com.pulumi.azuread.inputs.SynchronizationSecretCredentialArgs;
/// import com.pulumi.azuread.SynchronizationJob;
/// import com.pulumi.azuread.SynchronizationJobArgs;
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
/// variables:
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
/// Synchronization jobs can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/synchronizationJob:SynchronizationJob example /servicePrincipals/00000000-0000-0000-0000-000000000000/synchronization/jobs/dataBricks.f5532fc709734b1a90e8a1fa9fd03a82.8442fd39-2183-419c-8732-74b6ce866bd5
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Service Principal Object ID and the ID of the Synchronization Job Id in the format `/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{synchronizationJobId}`.
class SynchronizationJob extends pulumi.CustomResource {
  /// Whether the provisioning job is enabled. Default state is `true`.
  late final pulumi.Output<bool?> enabled;
  /// A `schedule` list as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> schedules;
  /// The ID of the service principal for which this synchronization job should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalId;
  /// Identifier of the synchronization template this job is based on.
  late final pulumi.Output<String> templateId;

  /// Creates a new [SynchronizationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynchronizationJob]. {@macro pulumi_index_synchronization_job_synchronization_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynchronizationJob(
    String name, {
    SynchronizationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationJob:SynchronizationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    schedules = registerOutput<List<Map<String, dynamic>>>('schedules');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    templateId = registerOutput<String>('templateId');
  }

  /// Gets an existing [SynchronizationJob] resource's state with the given [name] and [id].
  static SynchronizationJob get(
    String name,
    pulumi.Input<String> id, {
    SynchronizationJobState? state,
  }) {
    return SynchronizationJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SynchronizationJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationJob:SynchronizationJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool?>('enabled');
    schedules = registerOutput<List<Map<String, dynamic>>>('schedules');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    templateId = registerOutput<String>('templateId');
  }
}
