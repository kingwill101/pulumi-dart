import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_domain_sender_username_args.dart';
import 'email_service_domain_sender_username_state.dart';

/// Manages an Email Communication Service Domain Sender Username.
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
/// const exampleEmailService = new azure.communication.EmailService("example", {
///     name: "example-emailcommunicationservice",
///     resourceGroupName: example.name,
///     dataLocation: "United States",
/// });
/// const exampleEmailServiceDomain = new azure.communication.EmailServiceDomain("example", {
///     name: "AzureManagedDomain",
///     emailServiceId: exampleEmailService.id,
///     domainManagement: "AzureManaged",
/// });
/// const exampleEmailServiceDomainSenderUsername = new azure.communication.EmailServiceDomainSenderUsername("example", {
///     name: "example-su",
///     emailServiceDomainId: exampleEmailServiceDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_email_service = azure.communication.EmailService("example",
///     name="example-emailcommunicationservice",
///     resource_group_name=example.name,
///     data_location="United States")
/// example_email_service_domain = azure.communication.EmailServiceDomain("example",
///     name="AzureManagedDomain",
///     email_service_id=example_email_service.id,
///     domain_management="AzureManaged")
/// example_email_service_domain_sender_username = azure.communication.EmailServiceDomainSenderUsername("example",
///     name="example-su",
///     email_service_domain_id=example_email_service_domain.id)
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
///     var exampleEmailService = new Azure.Communication.EmailService("example", new()
///     {
///         Name = "example-emailcommunicationservice",
///         ResourceGroupName = example.Name,
///         DataLocation = "United States",
///     });
///
///     var exampleEmailServiceDomain = new Azure.Communication.EmailServiceDomain("example", new()
///     {
///         Name = "AzureManagedDomain",
///         EmailServiceId = exampleEmailService.Id,
///         DomainManagement = "AzureManaged",
///     });
///
///     var exampleEmailServiceDomainSenderUsername = new Azure.Communication.EmailServiceDomainSenderUsername("example", new()
///     {
///         Name = "example-su",
///         EmailServiceDomainId = exampleEmailServiceDomain.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/communication"
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
/// 		exampleEmailService, err := communication.NewEmailService(ctx, "example", &communication.EmailServiceArgs{
/// 			Name:              pulumi.String("example-emailcommunicationservice"),
/// 			ResourceGroupName: example.Name,
/// 			DataLocation:      pulumi.String("United States"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEmailServiceDomain, err := communication.NewEmailServiceDomain(ctx, "example", &communication.EmailServiceDomainArgs{
/// 			Name:             pulumi.String("AzureManagedDomain"),
/// 			EmailServiceId:   exampleEmailService.ID(),
/// 			DomainManagement: pulumi.String("AzureManaged"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = communication.NewEmailServiceDomainSenderUsername(ctx, "example", &communication.EmailServiceDomainSenderUsernameArgs{
/// 			Name:                 pulumi.String("example-su"),
/// 			EmailServiceDomainId: exampleEmailServiceDomain.ID(),
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
/// import com.pulumi.azure.communication.EmailService;
/// import com.pulumi.azure.communication.EmailServiceArgs;
/// import com.pulumi.azure.communication.EmailServiceDomain;
/// import com.pulumi.azure.communication.EmailServiceDomainArgs;
/// import com.pulumi.azure.communication.EmailServiceDomainSenderUsername;
/// import com.pulumi.azure.communication.EmailServiceDomainSenderUsernameArgs;
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
///         var exampleEmailService = new EmailService("exampleEmailService", EmailServiceArgs.builder()
///             .name("example-emailcommunicationservice")
///             .resourceGroupName(example.name())
///             .dataLocation("United States")
///             .build());
///
///         var exampleEmailServiceDomain = new EmailServiceDomain("exampleEmailServiceDomain", EmailServiceDomainArgs.builder()
///             .name("AzureManagedDomain")
///             .emailServiceId(exampleEmailService.id())
///             .domainManagement("AzureManaged")
///             .build());
///
///         var exampleEmailServiceDomainSenderUsername = new EmailServiceDomainSenderUsername("exampleEmailServiceDomainSenderUsername", EmailServiceDomainSenderUsernameArgs.builder()
///             .name("example-su")
///             .emailServiceDomainId(exampleEmailServiceDomain.id())
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
///   exampleEmailService:
///     type: azure:communication:EmailService
///     name: example
///     properties:
///       name: example-emailcommunicationservice
///       resourceGroupName: ${example.name}
///       dataLocation: United States
///   exampleEmailServiceDomain:
///     type: azure:communication:EmailServiceDomain
///     name: example
///     properties:
///       name: AzureManagedDomain
///       emailServiceId: ${exampleEmailService.id}
///       domainManagement: AzureManaged
///   exampleEmailServiceDomainSenderUsername:
///     type: azure:communication:EmailServiceDomainSenderUsername
///     name: example
///     properties:
///       name: example-su
///       emailServiceDomainId: ${exampleEmailServiceDomain.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Communication` - 2023-03-31
///
/// ## Import
///
/// Communication Service Domain Sender Usernames can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:communication/emailServiceDomainSenderUsername:EmailServiceDomainSenderUsername example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/emailServices/service1/domains/domain1/senderUsernames/username1
/// ```
class EmailServiceDomainSenderUsername extends pulumi.CustomResource {
  /// The display name for the Email Communication Service Domain Sender Username resource.
  late final pulumi.Output<String?> displayName;
  /// The ID of the Email Communication Service Domain resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> emailServiceDomainId;
  /// The name of the Email Communication Service Domain Sender Username resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [EmailServiceDomainSenderUsername].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailServiceDomainSenderUsername]. {@macro pulumi_communication_email_service_domain_sender_username_email_service_domain_sender_username_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailServiceDomainSenderUsername(
    String name, {
    EmailServiceDomainSenderUsernameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/emailServiceDomainSenderUsername:EmailServiceDomainSenderUsername',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.emailServiceDomainId = registerOutput<String>('emailServiceDomainId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [EmailServiceDomainSenderUsername] resource's state with the given [name] and [id].
  static EmailServiceDomainSenderUsername get(
    String name,
    pulumi.Input<String> id, {
    EmailServiceDomainSenderUsernameState? state,
  }) {
    return EmailServiceDomainSenderUsername._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EmailServiceDomainSenderUsername._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/emailServiceDomainSenderUsername:EmailServiceDomainSenderUsername',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.emailServiceDomainId = registerOutput<String>('emailServiceDomainId');
    this.name = registerOutput<String>('name');
  }
}
