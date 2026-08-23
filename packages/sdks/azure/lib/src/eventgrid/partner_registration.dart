import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_registration_args.dart';
import 'partner_registration_state.dart';

/// Manages an EventGrid Partner Registration.
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
/// const examplePartnerRegistration = new azure.eventgrid.PartnerRegistration("example", {
///     name: "example-partner-registration",
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_partner_registration = azure.eventgrid.PartnerRegistration("example",
///     name="example-partner-registration",
///     resource_group_name=example.name)
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
///     var examplePartnerRegistration = new Azure.EventGrid.PartnerRegistration("example", new()
///     {
///         Name = "example-partner-registration",
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
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
/// 		_, err = eventgrid.NewPartnerRegistration(ctx, "example", &eventgrid.PartnerRegistrationArgs{
/// 			Name:              pulumi.String("example-partner-registration"),
/// 			ResourceGroupName: example.Name,
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
/// resource "azure_eventgrid_partnerregistration" "example" {
///   name                = "example-partner-registration"
///   resource_group_name = azure_core_resourcegroup.example.name
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
/// import com.pulumi.azure.eventgrid.PartnerRegistration;
/// import com.pulumi.azure.eventgrid.PartnerRegistrationArgs;
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
///         var examplePartnerRegistration = new PartnerRegistration("examplePartnerRegistration", PartnerRegistrationArgs.builder()
///             .name("example-partner-registration")
///             .resourceGroupName(example.name())
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
///   examplePartnerRegistration:
///     type: azure:eventgrid:PartnerRegistration
///     name: example
///     properties:
///       name: example-partner-registration
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
///
/// ## Import
///
/// EventGrid Partner Registrations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventgrid/partnerRegistration:PartnerRegistration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.EventGrid/partnerRegistrations/example
/// ```
class PartnerRegistration extends pulumi.CustomResource {
  /// The name which should be used for this EventGrid Partner Registration. Changing this forces a new EventGrid Partner Registration to be created.
  late final pulumi.Output<String> name;
  /// The immutable id of the corresponding partner registration.
  late final pulumi.Output<String> partnerRegistrationId;
  /// The name of the Resource Group where the EventGrid Partner Registration should exist. Changing this forces a new EventGrid Partner Registration to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the EventGrid Partner Registration.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PartnerRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PartnerRegistration]. {@macro pulumi_eventgrid_partner_registration_partner_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PartnerRegistration(
    String name, {
    PartnerRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/partnerRegistration:PartnerRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    partnerRegistrationId = registerOutput<String>('partnerRegistrationId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [PartnerRegistration] resource's state with the given [name] and [id].
  static PartnerRegistration get(
    String name,
    pulumi.Input<String> id, {
    PartnerRegistrationState? state,
  }) {
    return PartnerRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PartnerRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventgrid/partnerRegistration:PartnerRegistration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    partnerRegistrationId = registerOutput<String>('partnerRegistrationId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
