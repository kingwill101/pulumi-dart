import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity_args.dart';
import 'service_identity_state.dart';

/// Generate organization service identity for a service.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// &gt; **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// &gt; **Note:** This resource can be used to retrieve the emails of the [Google-managed organization service accounts](https://cloud.google.com/iam/docs/service-agents)
/// of the APIs that Google has configured with a Service Identity. You can run `gcloud beta services identity create --service SERVICE_NAME.googleapis.com --organization ORGANIZATION` to
/// verify if an API supports this.
///
/// To get more information about Service Identity, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Organization Service Identity Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const osconfigSa = new gcp.organizations.ServiceIdentity("osconfig_sa", {
///     organization: "123456789",
///     service: "osconfig.googleapis.com",
/// });
/// const admin = new gcp.organizations.IAMMember("admin", {
///     orgId: "123456789",
///     role: "roles/osconfig.serviceAgent",
///     member: osconfigSa.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// osconfig_sa = gcp.organizations.ServiceIdentity("osconfig_sa",
///     organization="123456789",
///     service="osconfig.googleapis.com")
/// admin = gcp.organizations.IAMMember("admin",
///     org_id="123456789",
///     role="roles/osconfig.serviceAgent",
///     member=osconfig_sa.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var osconfigSa = new Gcp.Organizations.ServiceIdentity("osconfig_sa", new()
///     {
///         Organization = "123456789",
///         Service = "osconfig.googleapis.com",
///     });
///
///     var admin = new Gcp.Organizations.IAMMember("admin", new()
///     {
///         OrgId = "123456789",
///         Role = "roles/osconfig.serviceAgent",
///         Member = osconfigSa.Member,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		osconfigSa, err := organizations.NewServiceIdentity(ctx, "osconfig_sa", &organizations.ServiceIdentityArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			Service:      pulumi.String("osconfig.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.NewIAMMember(ctx, "admin", &organizations.IAMMemberArgs{
/// 			OrgId:  pulumi.String("123456789"),
/// 			Role:   pulumi.String("roles/osconfig.serviceAgent"),
/// 			Member: osconfigSa.Member,
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
/// resource "gcp_organizations_serviceidentity" "osconfig_sa" {
///   organization = "123456789"
///   service      = "osconfig.googleapis.com"
/// }
/// resource "gcp_organizations_iammember" "admin" {
///   org_id = "123456789"
///   role   = "roles/osconfig.serviceAgent"
///   member = gcp_organizations_serviceidentity.osconfig_sa.member
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.ServiceIdentity;
/// import com.pulumi.gcp.organizations.ServiceIdentityArgs;
/// import com.pulumi.gcp.organizations.IAMMember;
/// import com.pulumi.gcp.organizations.IAMMemberArgs;
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
///         var osconfigSa = new ServiceIdentity("osconfigSa", ServiceIdentityArgs.builder()
///             .organization("123456789")
///             .service("osconfig.googleapis.com")
///             .build());
///
///         var admin = new IAMMember("admin", IAMMemberArgs.builder()
///             .orgId("123456789")
///             .role("roles/osconfig.serviceAgent")
///             .member(osconfigSa.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   osconfigSa:
///     type: gcp:organizations:ServiceIdentity
///     name: osconfig_sa
///     properties:
///       organization: '123456789'
///       service: osconfig.googleapis.com
///   admin:
///     type: gcp:organizations:IAMMember
///     properties:
///       orgId: '123456789'
///       role: roles/osconfig.serviceAgent
///       member: ${osconfigSa.member}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceIdentity extends pulumi.CustomResource {
  /// The email address of the Google managed service account.
  late final pulumi.Output<String> email;
  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;
  /// The organization in which the resource belongs.
  late final pulumi.Output<String> organization;
  /// The service to generate identity for.
  ///
  /// - - -
  late final pulumi.Output<String> service;

  /// Creates a new [ServiceIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceIdentity]. {@macro pulumi_organizations_service_identity_service_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceIdentity(
    String name, {
    ServiceIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/serviceIdentity:ServiceIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    organization = registerOutput<String>('organization');
    service = registerOutput<String>('service');
  }

  /// Gets an existing [ServiceIdentity] resource's state with the given [name] and [id].
  static ServiceIdentity get(
    String name,
    pulumi.Input<String> id, {
    ServiceIdentityState? state,
  }) {
    return ServiceIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/serviceIdentity:ServiceIdentity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    email = registerOutput<String>('email');
    member = registerOutput<String>('member');
    organization = registerOutput<String>('organization');
    service = registerOutput<String>('service');
  }
}
