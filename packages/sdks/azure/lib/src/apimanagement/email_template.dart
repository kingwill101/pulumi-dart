import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_template_args.dart';
import 'email_template_state.dart';

/// Manages a API Management Email Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
/// });
/// const exampleEmailTemplate = new azure.apimanagement.EmailTemplate("example", {
///     templateName: "ConfirmSignUpIdentityDefault",
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     subject: "Customized confirmation email for your new $OrganizationName API account",
///     body: `<!DOCTYPE html >
/// <html>
/// <head>
///   <meta charset=\\"UTF-8\\" />
///   <title>Customized Letter Title</title>
/// </head>
/// <body>
///   <p style=\\"font-size:12pt;font-family:'Segoe UI'\\">Dear DevFirstName DevLastName,</p>
/// </body>
/// </html>
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1")
/// example_email_template = azure.apimanagement.EmailTemplate("example",
///     template_name="ConfirmSignUpIdentityDefault",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     subject="Customized confirmation email for your new $OrganizationName API account",
///     body="""<!DOCTYPE html >
/// <html>
/// <head>
///   <meta charset=\"UTF-8\" />
///   <title>Customized Letter Title</title>
/// </head>
/// <body>
///   <p style=\"font-size:12pt;font-family:'Segoe UI'\">Dear $DevFirstName $DevLastName,</p>
/// </body>
/// </html>
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleEmailTemplate = new Azure.ApiManagement.EmailTemplate("example", new()
///     {
///         TemplateName = "ConfirmSignUpIdentityDefault",
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         Subject = "Customized confirmation email for your new $OrganizationName API account",
///         Body = @"<!DOCTYPE html >
/// <html>
/// <head>
///   <meta charset=\""UTF-8\"" />
///   <title>Customized Letter Title</title>
/// </head>
/// <body>
///   <p style=\""font-size:12pt;font-family:'Segoe UI'\"">Dear $DevFirstName $DevLastName,</p>
/// </body>
/// </html>
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewEmailTemplate(ctx, "example", &apimanagement.EmailTemplateArgs{
/// 			TemplateName:      pulumi.String("ConfirmSignUpIdentityDefault"),
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			Subject:           pulumi.String("Customized confirmation email for your new $OrganizationName API account"),
/// 			Body: pulumi.String(`<!DOCTYPE html >
/// <html>
/// <head>
///   <meta charset=\"UTF-8\" />
///   <title>Customized Letter Title</title>
/// </head>
/// <body>
///   <p style=\"font-size:12pt;font-family:'Segoe UI'\">Dear $DevFirstName $DevLastName,</p>
/// </body>
/// </html>
/// `),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azure.apimanagement.EmailTemplate;
/// import com.pulumi.azure.apimanagement.EmailTemplateArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleEmailTemplate = new EmailTemplate("exampleEmailTemplate", EmailTemplateArgs.builder()
///             .templateName("ConfirmSignUpIdentityDefault")
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .subject("Customized confirmation email for your new $OrganizationName API account")
///             .body("""
/// <!DOCTYPE html >
/// <html>
/// <head>
///   <meta charset=\"UTF-8\" />
///   <title>Customized Letter Title</title>
/// </head>
/// <body>
///   <p style=\"font-size:12pt;font-family:'Segoe UI'\">Dear $DevFirstName $DevLastName,</p>
/// </body>
/// </html>
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///   exampleEmailTemplate:
///     type: azure:apimanagement:EmailTemplate
///     name: example
///     properties:
///       templateName: ConfirmSignUpIdentityDefault
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       subject: Customized confirmation email for your new $OrganizationName API account
///       body: |
///         <!DOCTYPE html >
///         <html>
///         <head>
///           <meta charset=\"UTF-8\" />
///           <title>Customized Letter Title</title>
///         </head>
///         <body>
///           <p style=\"font-size:12pt;font-family:'Segoe UI'\">Dear $DevFirstName $DevLastName,</p>
///         </body>
///         </html>
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Email Templates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/emailTemplate:EmailTemplate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/instance1/templates/template1
/// ```
class EmailTemplate extends pulumi.CustomResource {
  /// The name of the API Management Service in which the Email Template should exist. Changing this forces a new API Management Email Template to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The body of the Email. Its format has to be a well-formed HTML document.
  ///
  /// > **Note:** In `subject` and `body` predefined parameters can be used. The available parameters depend on the template. Schema to use a parameter: `$` followed by the `parameter.name` - `$<parameter.name>`. The available parameters can be seen in the Notification templates section of the API-Management Service instance within the Azure Portal.
  late final pulumi.Output<String> body;
  /// The description of the Email Template.
  late final pulumi.Output<String> description;
  /// The name of the Resource Group where the API Management Email Template should exist. Changing this forces a new API Management Email Template to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The subject of the Email.
  late final pulumi.Output<String> subject;
  /// The name of the Email Template. Possible values are `AccountClosedDeveloper`, `ApplicationApprovedNotificationMessage`, `ConfirmSignUpIdentityDefault`, `EmailChangeIdentityDefault`, `InviteUserNotificationMessage`, `NewCommentNotificationMessage`, `NewDeveloperNotificationMessage`, `NewIssueNotificationMessage`, `PasswordResetByAdminNotificationMessage`, `PasswordResetIdentityDefault`, `PurchaseDeveloperNotificationMessage`, `QuotaLimitApproachingDeveloperNotificationMessage`, `RejectDeveloperNotificationMessage`, `RequestDeveloperNotificationMessage`. Changing this forces a new API Management Email Template to be created.
  late final pulumi.Output<String> templateName;
  /// The title of the Email Template.
  late final pulumi.Output<String> title;

  /// Creates a new [EmailTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailTemplate]. {@macro pulumi_apimanagement_email_template_email_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailTemplate(
    String name, {
    EmailTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/emailTemplate:EmailTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.body = registerOutput<String>('body');
    this.description = registerOutput<String>('description');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subject = registerOutput<String>('subject');
    this.templateName = registerOutput<String>('templateName');
    this.title = registerOutput<String>('title');
  }

  /// Gets an existing [EmailTemplate] resource's state with the given [name] and [id].
  static EmailTemplate get(
    String name,
    pulumi.Input<String> id, {
    EmailTemplateState? state,
  }) {
    return EmailTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EmailTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/emailTemplate:EmailTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.body = registerOutput<String>('body');
    this.description = registerOutput<String>('description');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.subject = registerOutput<String>('subject');
    this.templateName = registerOutput<String>('templateName');
    this.title = registerOutput<String>('title');
  }
}
