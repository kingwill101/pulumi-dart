import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_email_domain_association_args.dart';
import 'service_email_domain_association_state.dart';

/// Manages a communication service email domain association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "group1",
///     location: "West Europe",
/// });
/// const exampleService = new azure.communication.Service("example", {
///     name: "CommunicationService1",
///     resourceGroupName: example.name,
///     dataLocation: "United States",
/// });
/// const exampleEmailService = new azure.communication.EmailService("example", {
///     name: "emailCommunicationService1",
///     resourceGroupName: example.name,
///     dataLocation: "United States",
/// });
/// const exampleEmailServiceDomain = new azure.communication.EmailServiceDomain("example", {
///     name: "AzureManagedDomain",
///     emailServiceId: exampleEmailService.id,
///     domainManagement: "AzureManaged",
/// });
/// const exampleServiceEmailDomainAssociation = new azure.communication.ServiceEmailDomainAssociation("example", {
///     communicationServiceId: exampleService.id,
///     emailServiceDomainId: exampleEmailServiceDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="group1",
///     location="West Europe")
/// example_service = azure.communication.Service("example",
///     name="CommunicationService1",
///     resource_group_name=example.name,
///     data_location="United States")
/// example_email_service = azure.communication.EmailService("example",
///     name="emailCommunicationService1",
///     resource_group_name=example.name,
///     data_location="United States")
/// example_email_service_domain = azure.communication.EmailServiceDomain("example",
///     name="AzureManagedDomain",
///     email_service_id=example_email_service.id,
///     domain_management="AzureManaged")
/// example_service_email_domain_association = azure.communication.ServiceEmailDomainAssociation("example",
///     communication_service_id=example_service.id,
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
///         Name = "group1",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.Communication.Service("example", new()
///     {
///         Name = "CommunicationService1",
///         ResourceGroupName = example.Name,
///         DataLocation = "United States",
///     });
///
///     var exampleEmailService = new Azure.Communication.EmailService("example", new()
///     {
///         Name = "emailCommunicationService1",
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
///     var exampleServiceEmailDomainAssociation = new Azure.Communication.ServiceEmailDomainAssociation("example", new()
///     {
///         CommunicationServiceId = exampleService.Id,
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
/// 			Name:     pulumi.String("group1"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := communication.NewService(ctx, "example", &communication.ServiceArgs{
/// 			Name:              pulumi.String("CommunicationService1"),
/// 			ResourceGroupName: example.Name,
/// 			DataLocation:      pulumi.String("United States"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEmailService, err := communication.NewEmailService(ctx, "example", &communication.EmailServiceArgs{
/// 			Name:              pulumi.String("emailCommunicationService1"),
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
/// 		_, err = communication.NewServiceEmailDomainAssociation(ctx, "example", &communication.ServiceEmailDomainAssociationArgs{
/// 			CommunicationServiceId: exampleService.ID(),
/// 			EmailServiceDomainId:   exampleEmailServiceDomain.ID(),
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
/// import com.pulumi.azure.communication.Service;
/// import com.pulumi.azure.communication.ServiceArgs;
/// import com.pulumi.azure.communication.EmailService;
/// import com.pulumi.azure.communication.EmailServiceArgs;
/// import com.pulumi.azure.communication.EmailServiceDomain;
/// import com.pulumi.azure.communication.EmailServiceDomainArgs;
/// import com.pulumi.azure.communication.ServiceEmailDomainAssociation;
/// import com.pulumi.azure.communication.ServiceEmailDomainAssociationArgs;
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
///             .name("group1")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("CommunicationService1")
///             .resourceGroupName(example.name())
///             .dataLocation("United States")
///             .build());
///
///         var exampleEmailService = new EmailService("exampleEmailService", EmailServiceArgs.builder()
///             .name("emailCommunicationService1")
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
///         var exampleServiceEmailDomainAssociation = new ServiceEmailDomainAssociation("exampleServiceEmailDomainAssociation", ServiceEmailDomainAssociationArgs.builder()
///             .communicationServiceId(exampleService.id())
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
///       name: group1
///       location: West Europe
///   exampleService:
///     type: azure:communication:Service
///     name: example
///     properties:
///       name: CommunicationService1
///       resourceGroupName: ${example.name}
///       dataLocation: United States
///   exampleEmailService:
///     type: azure:communication:EmailService
///     name: example
///     properties:
///       name: emailCommunicationService1
///       resourceGroupName: ${example.name}
///       dataLocation: United States
///   exampleEmailServiceDomain:
///     type: azure:communication:EmailServiceDomain
///     name: example
///     properties:
///       name: AzureManagedDomain
///       emailServiceId: ${exampleEmailService.id}
///       domainManagement: AzureManaged
///   exampleServiceEmailDomainAssociation:
///     type: azure:communication:ServiceEmailDomainAssociation
///     name: example
///     properties:
///       communicationServiceId: ${exampleService.id}
///       emailServiceDomainId: ${exampleEmailServiceDomain.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Communication` - 2023-03-31
///
/// ## Import
///
/// Communication service email domain association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:communication/serviceEmailDomainAssociation:ServiceEmailDomainAssociation example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/communicationServices/communicationService1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/emailServices/emailCommunicationService1/domains/domain1"
/// ```
class ServiceEmailDomainAssociation extends pulumi.CustomResource {
  /// The ID of the Communication Service. Changing this forces a new communication service email domain association to be created.
  late final pulumi.Output<String> communicationServiceId;
  /// The ID of the EMail Service Domain. Changing this forces a new communication service email domain association to be created.
  late final pulumi.Output<String> emailServiceDomainId;

  /// Creates a new [ServiceEmailDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEmailDomainAssociation]. {@macro pulumi_communication_service_email_domain_association_service_email_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEmailDomainAssociation(
    String name, {
    ServiceEmailDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/serviceEmailDomainAssociation:ServiceEmailDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    communicationServiceId = registerOutput<String>('communicationServiceId');
    emailServiceDomainId = registerOutput<String>('emailServiceDomainId');
  }

  /// Gets an existing [ServiceEmailDomainAssociation] resource's state with the given [name] and [id].
  static ServiceEmailDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    ServiceEmailDomainAssociationState? state,
  }) {
    return ServiceEmailDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceEmailDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/serviceEmailDomainAssociation:ServiceEmailDomainAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    communicationServiceId = registerOutput<String>('communicationServiceId');
    emailServiceDomainId = registerOutput<String>('emailServiceDomainId');
  }
}
