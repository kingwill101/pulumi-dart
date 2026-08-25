import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_state.dart';

/// Allows management of a Google Cloud service account.
///
/// * [API documentation](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/access/service-accounts)
///
/// &gt; **Warning:**  If you delete and recreate a service account, you must reapply any IAM roles that it had before.
///
/// &gt; Creation of service accounts is eventually consistent, and that can lead to
/// errors when you try to apply ACLs to service accounts immediately after
/// creation.
///
/// ## Example Usage
///
/// This snippet creates a service account in a project.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     accountId: "service-account-id",
///     displayName: "Service Account",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     account_id="service-account-id",
///     display_name="Service Account")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "service-account-id",
///         DisplayName = "Service Account",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
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
/// resource "gcp_serviceaccount_account" "service_account" {
///   account_id   = "service-account-id"
///   display_name = "Service Account"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: service-account-id
///       displayName: Service Account
/// ```
class Account extends pulumi.CustomResource {
  /// The account id that is used to generate the service
  /// account email address and a stable unique id. It is unique within a project,
  /// must be 6-30 characters long, and match the regular expression `a-z`
  /// to comply with RFC1035. Changing this forces a new service account to be created.
  late final pulumi.Output<String> accountId;
  /// If set to true, skip service account creation if a service account with the same email already exists.
  late final pulumi.Output<bool?> createIgnoreAlreadyExists;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A text description of the service account.
  /// Must be less than or equal to 256 UTF-8 bytes.
  late final pulumi.Output<String?> description;
  /// Whether a service account is disabled or not. Defaults to `false`. This field has no effect during creation.
  /// Must be set after creation to disable a service account.
  late final pulumi.Output<bool?> disabled;
  /// The display name for the service account.
  /// Can be updated without creating a new resource.
  late final pulumi.Output<String?> displayName;
  /// The e-mail address of the service account. This value
  /// should be referenced from any `gcp.organizations.getIAMPolicy` data sources
  /// that would grant the service account privileges.
  late final pulumi.Output<String> email;
  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;
  /// The fully-qualified name of the service account.
  late final pulumi.Output<String> name;
  /// The ID of the project that the service account will be created in.
  /// Defaults to the provider project configuration.
  late final pulumi.Output<String> project;
  /// The unique id of the service account.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_serviceaccount_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createIgnoreAlreadyExists = registerOutput<bool?>('createIgnoreAlreadyExists');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceaccount/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createIgnoreAlreadyExists = registerOutput<bool?>('createIgnoreAlreadyExists');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'gcp:serviceaccount/account:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createIgnoreAlreadyExists = registerOutput<bool?>('createIgnoreAlreadyExists');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    disabled = registerOutput<bool?>('disabled');
    displayName = registerOutput<String?>('displayName');
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uniqueId = registerOutput<String>('uniqueId');
  }
}
