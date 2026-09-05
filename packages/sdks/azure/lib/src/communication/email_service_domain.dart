import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_domain_args.dart';
import 'email_service_domain_state.dart';
import 'email_service_domain_verification_record.dart';

/// Manages an Email Communication Service Domain.
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
/// 		_, err = communication.NewEmailServiceDomain(ctx, "example", &communication.EmailServiceDomainArgs{
/// 			Name:             pulumi.String("AzureManagedDomain"),
/// 			EmailServiceId:   exampleEmailService.ID().ToIDOutput().ToStringOutput(),
/// 			DomainManagement: pulumi.String("AzureManaged"),
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
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_communication_emailservice" "example" {
///   name                = "example-emailcommunicationservice"
///   resource_group_name = azure_core_resourcegroup.example.name
///   data_location       = "United States"
/// }
/// resource "azure_communication_emailservicedomain" "example" {
///   name              = "AzureManagedDomain"
///   email_service_id  = azure_communication_emailservice.example.id
///   domain_management = "AzureManaged"
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
/// Communication Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:communication/emailServiceDomain:EmailServiceDomain example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Communication/emailServices/emailCommunicationService1/domains/domain1
/// ```
class EmailServiceDomain extends pulumi.CustomResource {
  /// Describes how a Domains resource is being managed. Possible values are `AzureManaged`, `CustomerManaged`, `CustomerManagedInExchangeOnline`. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> domainManagement;
  /// The resource ID of the Email Communication Service where the Domain belongs to. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> emailServiceId;
  /// P2 sender domain that is displayed to the email recipients [RFC 5322].
  late final pulumi.Output<String> fromSenderDomain;
  /// P1 sender domain that is present on the email envelope [RFC 5321].
  late final pulumi.Output<String> mailFromSenderDomain;
  /// The name of the Email Communication Service resource. If `domainManagement` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  late final pulumi.Output<String> name;
  /// A mapping of tags which should be assigned to the Email Communication Service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Describes user engagement tracking is enabled or disabled. Defaults to `false`.
  late final pulumi.Output<bool?> userEngagementTrackingEnabled;
  /// (Optional) An `verificationRecords` block as defined below.
  late final pulumi.Output<List<EmailServiceDomainVerificationRecord>> verificationRecords;

  /// Creates a new [EmailServiceDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailServiceDomain]. {@macro pulumi_communication_email_service_domain_email_service_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailServiceDomain(
    String name, {
    EmailServiceDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/emailServiceDomain:EmailServiceDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    domainManagement = registerOutput<String>('domainManagement');
    emailServiceId = registerOutput<String>('emailServiceId');
    fromSenderDomain = registerOutput<String>('fromSenderDomain');
    mailFromSenderDomain = registerOutput<String>('mailFromSenderDomain');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userEngagementTrackingEnabled = registerOutput<bool?>('userEngagementTrackingEnabled');
    verificationRecords = registerOutput<List<EmailServiceDomainVerificationRecord>>('verificationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailServiceDomainVerificationRecord>(guardedValue, (value) => EmailServiceDomainVerificationRecord.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [EmailServiceDomain] resource's state with the given [name] and [id].
  static EmailServiceDomain get(
    String name,
    pulumi.Input<String> id, {
    EmailServiceDomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EmailServiceDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EmailServiceDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:communication/emailServiceDomain:EmailServiceDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainManagement = registerOutput<String>('domainManagement');
    emailServiceId = registerOutput<String>('emailServiceId');
    fromSenderDomain = registerOutput<String>('fromSenderDomain');
    mailFromSenderDomain = registerOutput<String>('mailFromSenderDomain');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userEngagementTrackingEnabled = registerOutput<bool?>('userEngagementTrackingEnabled');
    verificationRecords = registerOutput<List<EmailServiceDomainVerificationRecord>>('verificationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailServiceDomainVerificationRecord>(guardedValue, (value) => EmailServiceDomainVerificationRecord.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [EmailServiceDomain] resource.
  EmailServiceDomain.reference(String urn)
    : super(
        'azure:communication/emailServiceDomain:EmailServiceDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainManagement = registerOutput<String>('domainManagement');
    emailServiceId = registerOutput<String>('emailServiceId');
    fromSenderDomain = registerOutput<String>('fromSenderDomain');
    mailFromSenderDomain = registerOutput<String>('mailFromSenderDomain');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userEngagementTrackingEnabled = registerOutput<bool?>('userEngagementTrackingEnabled');
    verificationRecords = registerOutput<List<EmailServiceDomainVerificationRecord>>('verificationRecords', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailServiceDomainVerificationRecord>(guardedValue, (value) => EmailServiceDomainVerificationRecord.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
