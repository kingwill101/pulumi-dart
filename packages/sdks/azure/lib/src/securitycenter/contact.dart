import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';
import 'contact_state.dart';

/// Manages the subscription's Security Center Contact.
///
/// &gt; **Note:** Owner access permission is required.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.securitycenter.Contact("example", {
///     name: "contact",
///     email: "contact@example.com",
///     phone: "+1-555-555-5555",
///     alertNotifications: true,
///     alertsToAdmins: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.securitycenter.Contact("example",
///     name="contact",
///     email="contact@example.com",
///     phone="+1-555-555-5555",
///     alert_notifications=True,
///     alerts_to_admins=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.SecurityCenter.Contact("example", new()
///     {
///         Name = "contact",
///         Email = "contact@example.com",
///         Phone = "+1-555-555-5555",
///         AlertNotifications = true,
///         AlertsToAdmins = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewContact(ctx, "example", &securitycenter.ContactArgs{
/// 			Name:               pulumi.String("contact"),
/// 			Email:              pulumi.String("contact@example.com"),
/// 			Phone:              pulumi.String("+1-555-555-5555"),
/// 			AlertNotifications: pulumi.Bool(true),
/// 			AlertsToAdmins:     pulumi.Bool(true),
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
/// import com.pulumi.azure.securitycenter.Contact;
/// import com.pulumi.azure.securitycenter.ContactArgs;
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
///         var example = new Contact("example", ContactArgs.builder()
///             .name("contact")
///             .email("contact@example.com")
///             .phone("+1-555-555-5555")
///             .alertNotifications(true)
///             .alertsToAdmins(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:securitycenter:Contact
///     properties:
///       name: contact
///       email: contact@example.com
///       phone: +1-555-555-5555
///       alertNotifications: true
///       alertsToAdmins: true
/// ```
///
///
/// ## Import
///
/// Security Center Contacts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/contact:Contact example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Security/securityContacts/default1
/// ```
class Contact extends pulumi.CustomResource {
  /// Whether to send security alerts notifications to the security contact.
  late final pulumi.Output<bool> alertNotifications;

  /// Whether to send security alerts notifications to subscription admins.
  late final pulumi.Output<bool> alertsToAdmins;

  /// The email of the Security Center Contact.
  late final pulumi.Output<String> email;

  /// The name of the Security Center Contact. Changing this forces a new Security Center Contact to be created.
  late final pulumi.Output<String> name;

  /// The phone number of the Security Center Contact.
  late final pulumi.Output<String?> phone;

  /// Creates a new [Contact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Contact]. {@macro pulumi_securitycenter_contact_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:securitycenter/contact:Contact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertNotifications = registerOutput<bool>('alertNotifications');
    alertsToAdmins = registerOutput<bool>('alertsToAdmins');
    email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    phone = registerOutput<String?>('phone');
  }

  /// Gets an existing [Contact] resource's state with the given [name] and [id].
  static Contact get(
    String name,
    pulumi.Input<String> id, {
    ContactState? state,
  }) {
    return Contact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Contact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:securitycenter/contact:Contact',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alertNotifications = registerOutput<bool>('alertNotifications');
    alertsToAdmins = registerOutput<bool>('alertsToAdmins');
    email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    phone = registerOutput<String?>('phone');
  }
}
