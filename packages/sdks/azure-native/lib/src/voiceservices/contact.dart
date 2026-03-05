import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';
import 'system_data_response.dart';

/// A Contact resource
///
/// Uses Azure REST API version 2022-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateContactResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contact = new AzureNative.VoiceServices.Contact("contact", new()
///     {
///         CommunicationsGatewayName = "myname",
///         ContactName = "John Smith",
///         Email = "johnsmith@example.com",
///         Location = "useast",
///         PhoneNumber = "+1-555-1234",
///         ResourceGroupName = "testrg",
///         Role = "Network Manager",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	voiceservices "github.com/pulumi/pulumi-azure-native-sdk/voiceservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := voiceservices.NewContact(ctx, "contact", &voiceservices.ContactArgs{
/// 			CommunicationsGatewayName: pulumi.String("myname"),
/// 			ContactName:               pulumi.String("John Smith"),
/// 			Email:                     pulumi.String("johnsmith@example.com"),
/// 			Location:                  pulumi.String("useast"),
/// 			PhoneNumber:               pulumi.String("+1-555-1234"),
/// 			ResourceGroupName:         pulumi.String("testrg"),
/// 			Role:                      pulumi.String("Network Manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.voiceservices.Contact;
/// import com.pulumi.azurenative.voiceservices.ContactArgs;
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
///         var contact = new Contact("contact", ContactArgs.builder()
///             .communicationsGatewayName("myname")
///             .contactName("John Smith")
///             .email("johnsmith@example.com")
///             .location("useast")
///             .phoneNumber("+1-555-1234")
///             .resourceGroupName("testrg")
///             .role("Network Manager")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const contact = new azure_native.voiceservices.Contact("contact", {
///     communicationsGatewayName: "myname",
///     contactName: "John Smith",
///     email: "johnsmith@example.com",
///     location: "useast",
///     phoneNumber: "+1-555-1234",
///     resourceGroupName: "testrg",
///     role: "Network Manager",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// contact = azure_native.voiceservices.Contact("contact",
///     communications_gateway_name="myname",
///     contact_name="John Smith",
///     email="johnsmith@example.com",
///     location="useast",
///     phone_number="+1-555-1234",
///     resource_group_name="testrg",
///     role="Network Manager")
///
/// ```
///
/// ```yaml
/// resources:
///   contact:
///     type: azure-native:voiceservices:Contact
///     properties:
///       communicationsGatewayName: myname
///       contactName: John Smith
///       email: johnsmith@example.com
///       location: useast
///       phoneNumber: +1-555-1234
///       resourceGroupName: testrg
///       role: Network Manager
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:voiceservices:Contact name2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VoiceServices/communicationsGateways/{communicationsGatewayName}/contacts/{contactName}
/// ```
class Contact extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Full name of contact
  late final pulumi.Output<String> contactName;

  /// Email address of contact
  late final pulumi.Output<String> email;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Telephone number of contact
  late final pulumi.Output<String> phoneNumber;

  /// Resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Job title of contact
  late final pulumi.Output<String> role;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Contact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Contact]. {@macro pulumi_voiceservices_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:voiceservices:Contact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactName = registerOutput<String>('contactName');
    email = registerOutput<String>('email');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    phoneNumber = registerOutput<String>('phoneNumber');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
