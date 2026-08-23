import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';
import 'contact_state.dart';

/// A contact that will receive notifications from Google Cloud.
///
///
/// To get more information about Contact, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/essentialcontacts/rest/v1/projects.contacts)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/managing-notification-contacts)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProject` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the Essential Contacts API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProject` you defined.
///
/// ## Example Usage
///
/// ### Essential Contact
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const contact = new gcp.essentialcontacts.Contact("contact", {
///     parent: project.then(project => project.id),
///     email: "foo@bar.com",
///     languageTag: "en-GB",
///     notificationCategorySubscriptions: ["ALL"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// contact = gcp.essentialcontacts.Contact("contact",
///     parent=project.id,
///     email="foo@bar.com",
///     language_tag="en-GB",
///     notification_category_subscriptions=["ALL"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var contact = new Gcp.EssentialContacts.Contact("contact", new()
///     {
///         Parent = project.Apply(getProjectResult => getProjectResult.Id),
///         Email = "foo@bar.com",
///         LanguageTag = "en-GB",
///         NotificationCategorySubscriptions = new[]
///         {
///             "ALL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/essentialcontacts"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = essentialcontacts.NewContact(ctx, "contact", &essentialcontacts.ContactArgs{
/// 			Parent:      pulumi.String(project.Id),
/// 			Email:       pulumi.String("foo@bar.com"),
/// 			LanguageTag: pulumi.String("en-GB"),
/// 			NotificationCategorySubscriptions: pulumi.StringArray{
/// 				pulumi.String("ALL"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_essentialcontacts_contact" "contact" {
///   parent                              = data.gcp_organizations_getproject.project.id
///   email                               = "foo@bar.com"
///   language_tag                        = "en-GB"
///   notification_category_subscriptions = ["ALL"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.essentialcontacts.Contact;
/// import com.pulumi.gcp.essentialcontacts.ContactArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var contact = new Contact("contact", ContactArgs.builder()
///             .parent(project.id())
///             .email("foo@bar.com")
///             .languageTag("en-GB")
///             .notificationCategorySubscriptions("ALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   contact:
///     type: gcp:essentialcontacts:Contact
///     properties:
///       parent: ${project.id}
///       email: foo@bar.com
///       languageTag: en-GB
///       notificationCategorySubscriptions:
///         - ALL
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Contact can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Contact can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/contact:Contact default {{name}}
/// ```
class Contact extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The email address to send notifications to. This does not need to be a Google account.
  late final pulumi.Output<String> email;
  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  late final pulumi.Output<String> languageTag;
  /// The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  late final pulumi.Output<String> name;
  /// The categories of notifications that the contact will receive communications for.
  late final pulumi.Output<List<String>> notificationCategorySubscriptions;
  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  late final pulumi.Output<String> parent;

  /// Creates a new [Contact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Contact]. {@macro pulumi_essentialcontacts_contact_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/contact:Contact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    email = registerOutput<String>('email');
    languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    notificationCategorySubscriptions = registerOutput<List<String>>('notificationCategorySubscriptions');
    parent = registerOutput<String>('parent');
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
          'gcp:essentialcontacts/contact:Contact',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    email = registerOutput<String>('email');
    languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    notificationCategorySubscriptions = registerOutput<List<String>>('notificationCategorySubscriptions');
    parent = registerOutput<String>('parent');
  }
}
