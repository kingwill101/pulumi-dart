import 'package:pulumi/pulumi.dart' as pulumi;
import 'hmac_key_args.dart';
import 'hmac_key_state.dart';

/// The hmacKeys resource represents an HMAC key within Cloud Storage. The resource
/// consists of a secret and HMAC key metadata. HMAC keys can be used as credentials
/// for service accounts.
///
///
/// To get more information about HmacKey, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/json_api/v1/projects/hmacKeys)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/authentication/managing-hmackeys)
///
///
/// On import, the `secret` value will not be retrieved.
///
///
///
/// ## Example Usage
///
/// ### Storage Hmac Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Create a new service account
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {accountId: "my-svc-acc"});
/// //Create the HMAC key for the associated service account
/// const key = new gcp.storage.HmacKey("key", {serviceAccountEmail: serviceAccount.email});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Create a new service account
/// service_account = gcp.serviceaccount.Account("service_account", account_id="my-svc-acc")
/// #Create the HMAC key for the associated service account
/// key = gcp.storage.HmacKey("key", service_account_email=service_account.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new service account
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         AccountId = "my-svc-acc",
///     });
///
///     //Create the HMAC key for the associated service account
///     var key = new Gcp.Storage.HmacKey("key", new()
///     {
///         ServiceAccountEmail = serviceAccount.Email,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new service account
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("my-svc-acc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create the HMAC key for the associated service account
/// 		_, err = storage.NewHmacKey(ctx, "key", &storage.HmacKeyArgs{
/// 			ServiceAccountEmail: serviceAccount.Email,
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
/// # Create a new service account
/// resource "gcp_serviceaccount_account" "service_account" {
///   account_id = "my-svc-acc"
/// }
/// #Create the HMAC key for the associated service account
/// resource "gcp_storage_hmackey" "key" {
///   service_account_email = gcp_serviceaccount_account.service_account.email
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
/// import com.pulumi.gcp.storage.HmacKey;
/// import com.pulumi.gcp.storage.HmacKeyArgs;
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
///         // Create a new service account
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .accountId("my-svc-acc")
///             .build());
///
///         //Create the HMAC key for the associated service account
///         var key = new HmacKey("key", HmacKeyArgs.builder()
///             .serviceAccountEmail(serviceAccount.email())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new service account
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       accountId: my-svc-acc
///   #Create the HMAC key for the associated service account
///   key:
///     type: gcp:storage:HmacKey
///     properties:
///       serviceAccountEmail: ${serviceAccount.email}
/// ```
///
///
/// ## Import
///
/// HmacKey can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/hmacKeys/{{access_id}}`
/// * `{{project}}/{{access_id}}`
/// * `{{access_id}}`
///
///
/// When using the `pulumi import` command, HmacKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/hmacKey:HmacKey default projects/{{project}}/hmacKeys/{{access_id}}
/// $ pulumi import gcp:storage/hmacKey:HmacKey default {{project}}/{{access_id}}
/// $ pulumi import gcp:storage/hmacKey:HmacKey default {{access_id}}
/// ```
class HmacKey extends pulumi.CustomResource {
  /// The access ID of the HMAC Key.
  late final pulumi.Output<String> accessId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// HMAC secret key material.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> secret;
  /// The email address of the key's associated service account.
  late final pulumi.Output<String> serviceAccountEmail;
  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  late final pulumi.Output<String?> state;
  /// 'The creation time of the HMAC key in RFC 3339 format. '
  late final pulumi.Output<String> timeCreated;
  /// 'The last modification time of the HMAC key metadata in RFC 3339 format.'
  late final pulumi.Output<String> updated;

  /// Creates a new [HmacKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HmacKey]. {@macro pulumi_storage_hmac_key_hmac_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HmacKey(
    String name, {
    HmacKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/hmacKey:HmacKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['secret'],
        ) {
    accessId = registerOutput<String>('accessId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret', isSecret: true);
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    state = registerOutput<String?>('state');
    timeCreated = registerOutput<String>('timeCreated');
    updated = registerOutput<String>('updated');
  }

  /// Gets an existing [HmacKey] resource's state with the given [name] and [id].
  static HmacKey get(
    String name,
    pulumi.Input<String> id, {
    HmacKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HmacKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HmacKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/hmacKey:HmacKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessId = registerOutput<String>('accessId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret', isSecret: true);
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.state = registerOutput<String?>('state');
    timeCreated = registerOutput<String>('timeCreated');
    updated = registerOutput<String>('updated');
  }

  /// Creates a typed reference to an existing [HmacKey] resource.
  HmacKey.reference(String urn)
    : super(
        'gcp:storage/hmacKey:HmacKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secret'],
        isResourceReference: true,
      ) {
    accessId = registerOutput<String>('accessId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret', isSecret: true);
    serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    state = registerOutput<String?>('state');
    timeCreated = registerOutput<String>('timeCreated');
    updated = registerOutput<String>('updated');
  }
}
