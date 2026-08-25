import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_args.dart';
import 'tenant_client.dart';
import 'tenant_state.dart';

/// Tenant configuration in a multi-tenant project.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
/// You must [enable multi-tenancy](https://cloud.google.com/identity-platform/docs/multi-tenancy-quickstart) via
/// the Cloud Console prior to creating tenants.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tenant = new gcp.identityplatform.Tenant("tenant", {
///     displayName: "tenant",
///     allowPasswordSignup: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tenant = gcp.identityplatform.Tenant("tenant",
///     display_name="tenant",
///     allow_password_signup=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tenant = new Gcp.IdentityPlatform.Tenant("tenant", new()
///     {
///         DisplayName = "tenant",
///         AllowPasswordSignup = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identityplatform.NewTenant(ctx, "tenant", &identityplatform.TenantArgs{
/// 			DisplayName:         pulumi.String("tenant"),
/// 			AllowPasswordSignup: pulumi.Bool(true),
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
/// resource "gcp_identityplatform_tenant" "tenant" {
///   display_name          = "tenant"
///   allow_password_signup = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.identityplatform.Tenant;
/// import com.pulumi.gcp.identityplatform.TenantArgs;
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
///         var tenant = new Tenant("tenant", TenantArgs.builder()
///             .displayName("tenant")
///             .allowPasswordSignup(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tenant:
///     type: gcp:identityplatform:Tenant
///     properties:
///       displayName: tenant
///       allowPasswordSignup: true
/// ```
///
///
/// ## Import
///
/// Tenant can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Tenant can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenant:Tenant default projects/{{project}}/tenants/{{name}}
/// $ pulumi import gcp:identityplatform/tenant:Tenant default {{project}}/{{name}}
/// $ pulumi import gcp:identityplatform/tenant:Tenant default {{name}}
/// ```
class Tenant extends pulumi.CustomResource {
  /// Whether to allow email/password user authentication.
  late final pulumi.Output<bool?> allowPasswordSignup;
  /// Options related to how clients making requests on behalf of a tenant should be configured.
  /// Structure is documented below.
  late final pulumi.Output<TenantClient?> client;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Whether authentication is disabled for the tenant. If true, the users under
  /// the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
  /// are not able to manage its users.
  late final pulumi.Output<bool?> disableAuth;
  /// Human friendly display name of the tenant.
  late final pulumi.Output<String> displayName;
  /// Whether to enable email link user authentication.
  late final pulumi.Output<bool?> enableEmailLinkSignin;
  /// The name of the tenant that is generated by the server
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Tenant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tenant]. {@macro pulumi_identityplatform_tenant_tenant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tenant(
    String name, {
    TenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenant:Tenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    allowPasswordSignup = registerOutput<bool?>('allowPasswordSignup');
    client = registerOutput<TenantClient?>('client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantClient.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableAuth = registerOutput<bool?>('disableAuth');
    displayName = registerOutput<String>('displayName');
    enableEmailLinkSignin = registerOutput<bool?>('enableEmailLinkSignin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Tenant] resource's state with the given [name] and [id].
  static Tenant get(
    String name,
    pulumi.Input<String> id, {
    TenantState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Tenant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Tenant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/tenant:Tenant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowPasswordSignup = registerOutput<bool?>('allowPasswordSignup');
    client = registerOutput<TenantClient?>('client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantClient.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableAuth = registerOutput<bool?>('disableAuth');
    displayName = registerOutput<String>('displayName');
    enableEmailLinkSignin = registerOutput<bool?>('enableEmailLinkSignin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Tenant] resource.
  Tenant.reference(String urn)
    : super(
        'gcp:identityplatform/tenant:Tenant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowPasswordSignup = registerOutput<bool?>('allowPasswordSignup');
    client = registerOutput<TenantClient?>('client', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TenantClient.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    disableAuth = registerOutput<bool?>('disableAuth');
    displayName = registerOutput<String>('displayName');
    enableEmailLinkSignin = registerOutput<bool?>('enableEmailLinkSignin');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
