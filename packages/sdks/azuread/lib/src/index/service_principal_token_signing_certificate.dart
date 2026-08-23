import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_token_signing_certificate_args.dart';
import 'service_principal_token_signing_certificate_state.dart';

/// Manages a token signing certificate associated with a service principal within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of _both_ the linked application registration, _and_ the service principal being managed.
///
/// When authenticated with a user principal, this resource may require one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// *Using default settings*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalTokenSigningCertificate = new azuread.ServicePrincipalTokenSigningCertificate("example", {servicePrincipalId: exampleServicePrincipal.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_token_signing_certificate = azuread.ServicePrincipalTokenSigningCertificate("example", service_principal_id=example_service_principal.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleServicePrincipalTokenSigningCertificate = new AzureAD.ServicePrincipalTokenSigningCertificate("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalTokenSigningCertificate(ctx, "example", &azuread.ServicePrincipalTokenSigningCertificateArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_application" "example" {
///   display_name = "example"
/// }
/// resource "azuread_serviceprincipal" "example" {
///   client_id = azuread_application.example.client_id
/// }
/// resource "azuread_serviceprincipaltokensigningcertificate" "example" {
///   service_principal_id = azuread_serviceprincipal.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.ServicePrincipalTokenSigningCertificate;
/// import com.pulumi.azuread.ServicePrincipalTokenSigningCertificateArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalTokenSigningCertificate = new ServicePrincipalTokenSigningCertificate("exampleServicePrincipalTokenSigningCertificate", ServicePrincipalTokenSigningCertificateArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleServicePrincipalTokenSigningCertificate:
///     type: azuread:ServicePrincipalTokenSigningCertificate
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
/// ```
///
///
/// *Using custom settings*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalTokenSigningCertificate = new azuread.ServicePrincipalTokenSigningCertificate("example", {
///     servicePrincipalId: exampleServicePrincipal.id,
///     displayName: "CN=example.com",
///     endDate: "2023-05-01T01:02:03Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_token_signing_certificate = azuread.ServicePrincipalTokenSigningCertificate("example",
///     service_principal_id=example_service_principal.id,
///     display_name="CN=example.com",
///     end_date="2023-05-01T01:02:03Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleServicePrincipalTokenSigningCertificate = new AzureAD.ServicePrincipalTokenSigningCertificate("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
///         DisplayName = "CN=example.com",
///         EndDate = "2023-05-01T01:02:03Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalTokenSigningCertificate(ctx, "example", &azuread.ServicePrincipalTokenSigningCertificateArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
/// 			DisplayName:        pulumi.String("CN=example.com"),
/// 			EndDate:            pulumi.String("2023-05-01T01:02:03Z"),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_application" "example" {
///   display_name = "example"
/// }
/// resource "azuread_serviceprincipal" "example" {
///   client_id = azuread_application.example.client_id
/// }
/// resource "azuread_serviceprincipaltokensigningcertificate" "example" {
///   service_principal_id = azuread_serviceprincipal.example.id
///   display_name         = "CN=example.com"
///   end_date             = "2023-05-01T01:02:03Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.ServicePrincipalTokenSigningCertificate;
/// import com.pulumi.azuread.ServicePrincipalTokenSigningCertificateArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalTokenSigningCertificate = new ServicePrincipalTokenSigningCertificate("exampleServicePrincipalTokenSigningCertificate", ServicePrincipalTokenSigningCertificateArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .displayName("CN=example.com")
///             .endDate("2023-05-01T01:02:03Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleServicePrincipalTokenSigningCertificate:
///     type: azuread:ServicePrincipalTokenSigningCertificate
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
///       displayName: CN=example.com
///       endDate: 2023-05-01T01:02:03Z
/// ```
///
///
/// ## Import
///
/// Token signing certificates can be imported using the object ID of the associated service principal and the key ID of the verify certificate credential, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/servicePrincipalTokenSigningCertificate:ServicePrincipalTokenSigningCertificate example 00000000-0000-0000-0000-000000000000/tokenSigningCertificate/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the service principal's object ID, the string "tokenSigningCertificate" and the verify certificate's key ID in the format `{ServicePrincipalObjectId}/tokenSigningCertificate/{CertificateKeyId}`.
class ServicePrincipalTokenSigningCertificate extends pulumi.CustomResource {
  /// Specifies a friendly name for the certificate. Must start with `CN=`. Changing this field forces a new resource to be created.
  ///
  /// &gt; If not specified, it will default to `CN=Microsoft Azure Federated SSO Certificate`.
  late final pulumi.Output<String> displayName;
  /// The end date until which the token signing certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  late final pulumi.Output<String> endDate;
  /// A UUID used to uniquely identify the verify certificate.
  late final pulumi.Output<String> keyId;
  /// The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalId;
  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  late final pulumi.Output<String> startDate;
  /// A SHA-1 generated thumbprint of the token signing certificate, which can be used to set the preferred signing certificate for a service principal.
  late final pulumi.Output<String> thumbprint;
  /// The certificate data, which is PEM encoded but does not include the header `-----BEGIN CERTIFICATE-----\n` or the footer `\n-----END CERTIFICATE-----`.
  late final pulumi.Output<String> value;

  /// Creates a new [ServicePrincipalTokenSigningCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipalTokenSigningCertificate]. {@macro pulumi_index_service_principal_token_signing_certificate_service_principal_token_signing_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipalTokenSigningCertificate(
    String name, {
    ServicePrincipalTokenSigningCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/servicePrincipalTokenSigningCertificate:ServicePrincipalTokenSigningCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    endDate = registerOutput<String>('endDate');
    keyId = registerOutput<String>('keyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    thumbprint = registerOutput<String>('thumbprint');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ServicePrincipalTokenSigningCertificate] resource's state with the given [name] and [id].
  static ServicePrincipalTokenSigningCertificate get(
    String name,
    pulumi.Input<String> id, {
    ServicePrincipalTokenSigningCertificateState? state,
  }) {
    return ServicePrincipalTokenSigningCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePrincipalTokenSigningCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/servicePrincipalTokenSigningCertificate:ServicePrincipalTokenSigningCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    displayName = registerOutput<String>('displayName');
    endDate = registerOutput<String>('endDate');
    keyId = registerOutput<String>('keyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    thumbprint = registerOutput<String>('thumbprint');
    value = registerOutput<String>('value');
  }
}
