import 'package:pulumi/pulumi.dart' as pulumi;
import 'synchronization_secret_args.dart';
import 'synchronization_secret_state.dart';

/// Manages synchronization secrets associated with a service principal (enterprise application) within Azure Active Directory.
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
///             value: "abc",
///         },
///         {
///             key: "SecretToken",
///             value: "some-token",
///         },
///     ],
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
///             "value": "abc",
///         },
///         {
///             "key": "SecretToken",
///             "value": "some-token",
///         },
///     ])
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
///                 Value = "abc",
///             },
///             new AzureAD.Inputs.SynchronizationSecretCredentialArgs
///             {
///                 Key = "SecretToken",
///                 Value = "some-token",
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
/// 					Value: pulumi.String("abc"),
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
/// data "azuread_getapplicationtemplate" "example" {
///   display_name = "Azure Databricks SCIM Provisioning Connector"
/// }
/// data "azuread_getserviceprincipal" "exampleGetServicePrincipal" {
///   object_id = azuread_applicationfromtemplate.example.service_principal_object_id
/// }
///
/// resource "azuread_applicationfromtemplate" "example" {
///   display_name = "example"
///   template_id  = data.azuread_getapplicationtemplate.example.template_id
/// }
/// resource "azuread_synchronizationsecret" "example" {
///   service_principal_id = data.azuread_getserviceprincipal.exampleGetServicePrincipal.id
///   credentials {
///     key   = "BaseAddress"
///     value = "abc"
///   }
///   credentials {
///     key   = "SecretToken"
///     value = "some-token"
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
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
/// import com.pulumi.azuread.ApplicationFromTemplate;
/// import com.pulumi.azuread.ApplicationFromTemplateArgs;
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
/// import com.pulumi.azuread.SynchronizationSecret;
/// import com.pulumi.azuread.SynchronizationSecretArgs;
/// import com.pulumi.azuread.inputs.SynchronizationSecretCredentialArgs;
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
///                     .value("abc")
///                     .build(),
///                 SynchronizationSecretCredentialArgs.builder()
///                     .key("SecretToken")
///                     .value("some-token")
///                     .build())
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
///           value: abc
///         - key: SecretToken
///           value: some-token
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
/// This resource does not support importing.
class SynchronizationSecret extends pulumi.CustomResource {
  /// One or more `credential` blocks as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> credentials;
  /// The ID of the service principal for which this synchronization secrets should be stored. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalId;

  /// Creates a new [SynchronizationSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SynchronizationSecret]. {@macro pulumi_index_synchronization_secret_synchronization_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SynchronizationSecret(
    String name, {
    SynchronizationSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationSecret:SynchronizationSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    credentials = registerOutput<List<Map<String, dynamic>>?>('credentials');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
  }

  /// Gets an existing [SynchronizationSecret] resource's state with the given [name] and [id].
  static SynchronizationSecret get(
    String name,
    pulumi.Input<String> id, {
    SynchronizationSecretState? state,
  }) {
    return SynchronizationSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SynchronizationSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/synchronizationSecret:SynchronizationSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    credentials = registerOutput<List<Map<String, dynamic>>?>('credentials');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
  }
}
