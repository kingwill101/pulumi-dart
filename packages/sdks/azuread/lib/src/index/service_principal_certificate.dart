import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_certificate_args.dart';
import 'service_principal_certificate_state.dart';

/// Manages a certificate associated with a service principal within Azure Active Directory.
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
/// *Using a PEM certificate*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as std from "@pulumi/std";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalCertificate = new azuread.ServicePrincipalCertificate("example", {
///     servicePrincipalId: exampleServicePrincipal.id,
///     type: "AsymmetricX509Cert",
///     value: std.file({
///         input: "cert.pem",
///     }).then(invoke => invoke.result),
///     endDate: "2021-05-01T01:02:03Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_std as std
///
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_certificate = azuread.ServicePrincipalCertificate("example",
///     service_principal_id=example_service_principal.id,
///     type="AsymmetricX509Cert",
///     value=std.file(input="cert.pem").result,
///     end_date="2021-05-01T01:02:03Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Std = Pulumi.Std;
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
///     var exampleServicePrincipalCertificate = new AzureAD.ServicePrincipalCertificate("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
///         Type = "AsymmetricX509Cert",
///         Value = Std.File.Invoke(new()
///         {
///             Input = "cert.pem",
///         }).Apply(invoke => invoke.Result),
///         EndDate = "2021-05-01T01:02:03Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalCertificate(ctx, "example", &azuread.ServicePrincipalCertificateArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
/// 			Type:               pulumi.String("AsymmetricX509Cert"),
/// 			Value:              pulumi.String(invokeFile.Result),
/// 			EndDate:            pulumi.String("2021-05-01T01:02:03Z"),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.ServicePrincipalCertificate;
/// import com.pulumi.azuread.ServicePrincipalCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalCertificate = new ServicePrincipalCertificate("exampleServicePrincipalCertificate", ServicePrincipalCertificateArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .type("AsymmetricX509Cert")
///             .value(StdFunctions.file(FileArgs.builder()
///                 .input("cert.pem")
///                 .build()).result())
///             .endDate("2021-05-01T01:02:03Z")
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
///   exampleServicePrincipalCertificate:
///     type: azuread:ServicePrincipalCertificate
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
///       type: AsymmetricX509Cert
///       value:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: cert.pem
///           return: result
///       endDate: 2021-05-01T01:02:03Z
/// ```
///
///
/// *Using a DER certificate*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as std from "@pulumi/std";
///
/// const example = new azuread.Application("example", {displayName: "example"});
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalCertificate = new azuread.ServicePrincipalCertificate("example", {
///     servicePrincipalId: exampleServicePrincipal.id,
///     type: "AsymmetricX509Cert",
///     encoding: "base64",
///     value: std.file({
///         input: "cert.der",
///     }).then(invoke => std.base64encode({
///         input: invoke.result,
///     })).then(invoke => invoke.result),
///     endDate: "2021-05-01T01:02:03Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_std as std
///
/// example = azuread.Application("example", display_name="example")
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_certificate = azuread.ServicePrincipalCertificate("example",
///     service_principal_id=example_service_principal.id,
///     type="AsymmetricX509Cert",
///     encoding="base64",
///     value=std.base64encode(input=std.file(input="cert.der").result).result,
///     end_date="2021-05-01T01:02:03Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Std = Pulumi.Std;
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
///     var exampleServicePrincipalCertificate = new AzureAD.ServicePrincipalCertificate("example", new()
///     {
///         ServicePrincipalId = exampleServicePrincipal.Id,
///         Type = "AsymmetricX509Cert",
///         Encoding = "base64",
///         Value = Std.File.Invoke(new()
///         {
///             Input = "cert.der",
///         }).Apply(invoke => Std.Base64encode.Invoke(new()
///         {
///             Input = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///         EndDate = "2021-05-01T01:02:03Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: std.File(ctx, &std.FileArgs{
/// 				Input: "cert.der",
/// 			}, nil).Result,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalCertificate(ctx, "example", &azuread.ServicePrincipalCertificateArgs{
/// 			ServicePrincipalId: exampleServicePrincipal.ID(),
/// 			Type:               pulumi.String("AsymmetricX509Cert"),
/// 			Encoding:           pulumi.String("base64"),
/// 			Value:              pulumi.String(invokeBase64encode.Result),
/// 			EndDate:            pulumi.String("2021-05-01T01:02:03Z"),
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
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.ServicePrincipalCertificate;
/// import com.pulumi.azuread.ServicePrincipalCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalCertificate = new ServicePrincipalCertificate("exampleServicePrincipalCertificate", ServicePrincipalCertificateArgs.builder()
///             .servicePrincipalId(exampleServicePrincipal.id())
///             .type("AsymmetricX509Cert")
///             .encoding("base64")
///             .value(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input(StdFunctions.file(FileArgs.builder()
///                     .input("cert.der")
///                     .build()).result())
///                 .build()).result())
///             .endDate("2021-05-01T01:02:03Z")
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
///   exampleServicePrincipalCertificate:
///     type: azuread:ServicePrincipalCertificate
///     name: example
///     properties:
///       servicePrincipalId: ${exampleServicePrincipal.id}
///       type: AsymmetricX509Cert
///       encoding: base64
///       value:
///         fn::invoke:
///           function: std:base64encode
///           arguments:
///             input:
///               fn::invoke:
///                 function: std:file
///                 arguments:
///                   input: cert.der
///                 return: result
///           return: result
///       endDate: 2021-05-01T01:02:03Z
/// ```
///
///
/// ## Import
///
/// Certificates can be imported using the object ID of the associated service principal and the key ID of the certificate credential, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/servicePrincipalCertificate:ServicePrincipalCertificate example 00000000-0000-0000-0000-000000000000/certificate/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the service principal's object ID, the string "certificate" and the certificate's key ID in the format `{ServicePrincipalObjectId}/certificate/{CertificateKeyId}`.
class ServicePrincipalCertificate extends pulumi.CustomResource {
  /// Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  ///
  /// &gt; **Tip for Azure Key Vault** The `hex` encoding option is useful for consuming certificate data from the azurerm_key_vault_certificate resource.
  late final pulumi.Output<String?> encoding;

  /// The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  late final pulumi.Output<String> endDate;

  /// A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". Changing this field forces a new resource to be created.
  ///
  /// &gt; One of `end_date` or `end_date_relative` must be set. The maximum duration is determined by Azure AD.
  late final pulumi.Output<String?> endDateRelative;

  /// A UUID used to uniquely identify this certificate. If not specified a UUID will be automatically generated. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> keyId;

  /// The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalId;

  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> startDate;

  /// The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  late final pulumi.Output<String?> type;

  /// The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  late final pulumi.Output<String> value;

  /// Creates a new [ServicePrincipalCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipalCertificate]. {@macro pulumi_index_service_principal_certificate_service_principal_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipalCertificate(
    String name, {
    ServicePrincipalCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipalCertificate:ServicePrincipalCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    encoding = registerOutput<String?>('encoding');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String?>('type');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ServicePrincipalCertificate] resource's state with the given [name] and [id].
  static ServicePrincipalCertificate get(
    String name,
    pulumi.Input<String> id, {
    ServicePrincipalCertificateState? state,
  }) {
    return ServicePrincipalCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePrincipalCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/servicePrincipalCertificate:ServicePrincipalCertificate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    encoding = registerOutput<String?>('encoding');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String?>('type');
    value = registerOutput<String>('value');
  }
}
