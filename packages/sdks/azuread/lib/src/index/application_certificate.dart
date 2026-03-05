import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_certificate_args.dart';
import 'application_certificate_state.dart';

/// Manages a certificate associated with an application within Azure Active Directory. These are also referred to as client certificates during authentication.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Application.ReadWrite.OwnedBy` or `Application.ReadWrite.All`
///
/// &gt; When using the `Application.ReadWrite.OwnedBy` application role, the principal being used to run Terraform must be an owner of the application.
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
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationCertificate = new azuread.ApplicationCertificate("example", {
///     applicationId: example.id,
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
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_certificate = azuread.ApplicationCertificate("example",
///     application_id=example.id,
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
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationCertificate = new AzureAD.ApplicationCertificate("example", new()
///     {
///         ApplicationId = example.Id,
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
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
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
/// 		_, err = azuread.NewApplicationCertificate(ctx, "example", &azuread.ApplicationCertificateArgs{
/// 			ApplicationId: example.ID(),
/// 			Type:          pulumi.String("AsymmetricX509Cert"),
/// 			Value:         pulumi.String(invokeFile.Result),
/// 			EndDate:       pulumi.String("2021-05-01T01:02:03Z"),
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
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationCertificate;
/// import com.pulumi.azuread.ApplicationCertificateArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationCertificate = new ApplicationCertificate("exampleApplicationCertificate", ApplicationCertificateArgs.builder()
///             .applicationId(example.id())
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
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleApplicationCertificate:
///     type: azuread:ApplicationCertificate
///     name: example
///     properties:
///       applicationId: ${example.id}
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
/// const example = new azuread.ApplicationRegistration("example", {displayName: "example"});
/// const exampleApplicationCertificate = new azuread.ApplicationCertificate("example", {
///     applicationId: example.id,
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
/// example = azuread.ApplicationRegistration("example", display_name="example")
/// example_application_certificate = azuread.ApplicationCertificate("example",
///     application_id=example.id,
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
///     var example = new AzureAD.ApplicationRegistration("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleApplicationCertificate = new AzureAD.ApplicationCertificate("example", new()
///     {
///         ApplicationId = example.Id,
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
/// 		example, err := azuread.NewApplicationRegistration(ctx, "example", &azuread.ApplicationRegistrationArgs{
/// 			DisplayName: pulumi.String("example"),
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
/// 		_, err = azuread.NewApplicationCertificate(ctx, "example", &azuread.ApplicationCertificateArgs{
/// 			ApplicationId: example.ID(),
/// 			Type:          pulumi.String("AsymmetricX509Cert"),
/// 			Encoding:      pulumi.String("base64"),
/// 			Value:         pulumi.String(invokeBase64encode.Result),
/// 			EndDate:       pulumi.String("2021-05-01T01:02:03Z"),
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
/// import com.pulumi.azuread.ApplicationRegistration;
/// import com.pulumi.azuread.ApplicationRegistrationArgs;
/// import com.pulumi.azuread.ApplicationCertificate;
/// import com.pulumi.azuread.ApplicationCertificateArgs;
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
///         var example = new ApplicationRegistration("example", ApplicationRegistrationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleApplicationCertificate = new ApplicationCertificate("exampleApplicationCertificate", ApplicationCertificateArgs.builder()
///             .applicationId(example.id())
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
///     type: azuread:ApplicationRegistration
///     properties:
///       displayName: example
///   exampleApplicationCertificate:
///     type: azuread:ApplicationCertificate
///     name: example
///     properties:
///       applicationId: ${example.id}
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
/// ### Using a certificate from Azure Key Vault
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
/// import * as azurerm from "@pulumi/azurerm";
///
/// const exampleApplication = new azuread.Application("example", {displayName: "example"});
/// const example = new azurerm.index.KeyVaultCertificate("example", {
///     name: "generated-cert",
///     keyVaultId: exampleAzurermKeyVault.id,
///     certificatePolicy: [{
///         issuerParameters: [{
///             name: "Self",
///         }],
///         keyProperties: [{
///             exportable: true,
///             keySize: 2048,
///             keyType: "RSA",
///             reuseKey: true,
///         }],
///         lifetimeAction: [{
///             action: [{
///                 actionType: "AutoRenew",
///             }],
///             trigger: [{
///                 daysBeforeExpiry: 30,
///             }],
///         }],
///         secretProperties: [{
///             contentType: "application/x-pkcs12",
///         }],
///         x509CertificateProperties: [{
///             extendedKeyUsage: ["1.3.6.1.5.5.7.3.2"],
///             keyUsage: [
///                 "dataEncipherment",
///                 "digitalSignature",
///                 "keyCertSign",
///                 "keyEncipherment",
///             ],
///             subjectAlternativeNames: [{
///                 dnsNames: [
///                     "internal.contoso.com",
///                     "domain.hello.world",
///                 ],
///             }],
///             subject: `CN=${exampleApplication.name}`,
///             validityInMonths: 12,
///         }],
///     }],
/// });
/// const exampleApplicationCertificate = new azuread.ApplicationCertificate("example", {
///     applicationId: exampleApplication.id,
///     type: "AsymmetricX509Cert",
///     encoding: "hex",
///     value: example.certificateData,
///     endDate: example.certificateAttribute[0].expires,
///     startDate: example.certificateAttribute[0].notBefore,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
/// import pulumi_azurerm as azurerm
///
/// example_application = azuread.Application("example", display_name="example")
/// example = azurerm.index.KeyVaultCertificate("example",
///     name=generated-cert,
///     key_vault_id=example_azurerm_key_vault.id,
///     certificate_policy=[{
///         issuerParameters: [{
///             name: Self,
///         }],
///         keyProperties: [{
///             exportable: True,
///             keySize: 2048,
///             keyType: RSA,
///             reuseKey: True,
///         }],
///         lifetimeAction: [{
///             action: [{
///                 actionType: AutoRenew,
///             }],
///             trigger: [{
///                 daysBeforeExpiry: 30,
///             }],
///         }],
///         secretProperties: [{
///             contentType: application/x-pkcs12,
///         }],
///         x509CertificateProperties: [{
///             extendedKeyUsage: [1.3.6.1.5.5.7.3.2],
///             keyUsage: [
///                 dataEncipherment,
///                 digitalSignature,
///                 keyCertSign,
///                 keyEncipherment,
///             ],
///             subjectAlternativeNames: [{
///                 dnsNames: [
///                     internal.contoso.com,
///                     domain.hello.world,
///                 ],
///             }],
///             subject: fCN={example_application.name},
///             validityInMonths: 12,
///         }],
///     }])
/// example_application_certificate = azuread.ApplicationCertificate("example",
///     application_id=example_application.id,
///     type="AsymmetricX509Cert",
///     encoding="hex",
///     value=example["certificateData"],
///     end_date=example["certificateAttribute"][0]["expires"],
///     start_date=example["certificateAttribute"][0]["notBefore"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
/// using Azurerm = Pulumi.Azurerm;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApplication = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var example = new Azurerm.Index.KeyVaultCertificate("example", new()
///     {
///         Name = "generated-cert",
///         KeyVaultId = exampleAzurermKeyVault.Id,
///         CertificatePolicy = new[]
///         {
///
///             {
///                 { "issuerParameters", new[]
///                 {
///
///                     {
///                         { "name", "Self" },
///                     },
///                 } },
///                 { "keyProperties", new[]
///                 {
///
///                     {
///                         { "exportable", true },
///                         { "keySize", 2048 },
///                         { "keyType", "RSA" },
///                         { "reuseKey", true },
///                     },
///                 } },
///                 { "lifetimeAction", new[]
///                 {
///
///                     {
///                         { "action", new[]
///                         {
///
///                             {
///                                 { "actionType", "AutoRenew" },
///                             },
///                         } },
///                         { "trigger", new[]
///                         {
///
///                             {
///                                 { "daysBeforeExpiry", 30 },
///                             },
///                         } },
///                     },
///                 } },
///                 { "secretProperties", new[]
///                 {
///
///                     {
///                         { "contentType", "application/x-pkcs12" },
///                     },
///                 } },
///                 { "x509CertificateProperties", new[]
///                 {
///
///                     {
///                         { "extendedKeyUsage", new[]
///                         {
///                             "1.3.6.1.5.5.7.3.2",
///                         } },
///                         { "keyUsage", new[]
///                         {
///                             "dataEncipherment",
///                             "digitalSignature",
///                             "keyCertSign",
///                             "keyEncipherment",
///                         } },
///                         { "subjectAlternativeNames", new[]
///                         {
///
///                             {
///                                 { "dnsNames", new[]
///                                 {
///                                     "internal.contoso.com",
///                                     "domain.hello.world",
///                                 } },
///                             },
///                         } },
///                         { "subject", $"CN={exampleApplication.Name}" },
///                         { "validityInMonths", 12 },
///                     },
///                 } },
///             },
///         },
///     });
///
///     var exampleApplicationCertificate = new AzureAD.ApplicationCertificate("example", new()
///     {
///         ApplicationId = exampleApplication.Id,
///         Type = "AsymmetricX509Cert",
///         Encoding = "hex",
///         Value = example.CertificateData,
///         EndDate = example.CertificateAttribute[0].Expires,
///         StartDate = example.CertificateAttribute[0].NotBefore,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi-azurerm/sdk/go/azurerm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleApplication, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azurerm.NewKeyVaultCertificate(ctx, "example", &azurerm.KeyVaultCertificateArgs{
/// 			Name:       "generated-cert",
/// 			KeyVaultId: exampleAzurermKeyVault.Id,
/// 			CertificatePolicy: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"issuerParameters": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"name": "Self",
/// 						},
/// 					},
/// 					"keyProperties": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"exportable": true,
/// 							"keySize":    2048,
/// 							"keyType":    "RSA",
/// 							"reuseKey":   true,
/// 						},
/// 					},
/// 					"lifetimeAction": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"action": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"actionType": "AutoRenew",
/// 								},
/// 							},
/// 							"trigger": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"daysBeforeExpiry": 30,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					"secretProperties": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"contentType": "application/x-pkcs12",
/// 						},
/// 					},
/// 					"x509CertificateProperties": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"extendedKeyUsage": []string{
/// 								"1.3.6.1.5.5.7.3.2",
/// 							},
/// 							"keyUsage": []string{
/// 								"dataEncipherment",
/// 								"digitalSignature",
/// 								"keyCertSign",
/// 								"keyEncipherment",
/// 							},
/// 							"subjectAlternativeNames": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"dnsNames": []string{
/// 										"internal.contoso.com",
/// 										"domain.hello.world",
/// 									},
/// 								},
/// 							},
/// 							"subject":          fmt.Sprintf("CN=%v", exampleApplication.Name),
/// 							"validityInMonths": 12,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewApplicationCertificate(ctx, "example", &azuread.ApplicationCertificateArgs{
/// 			ApplicationId: exampleApplication.ID(),
/// 			Type:          pulumi.String("AsymmetricX509Cert"),
/// 			Encoding:      pulumi.String("hex"),
/// 			Value:         example.CertificateData,
/// 			EndDate:       example.CertificateAttribute[0].Expires,
/// 			StartDate:     example.CertificateAttribute[0].NotBefore,
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
/// import com.pulumi.azurerm.KeyVaultCertificate;
/// import com.pulumi.azurerm.KeyVaultCertificateArgs;
/// import com.pulumi.azuread.ApplicationCertificate;
/// import com.pulumi.azuread.ApplicationCertificateArgs;
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
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .displayName("example")
///             .build());
///
///         var example = new KeyVaultCertificate("example", KeyVaultCertificateArgs.builder()
///             .name("generated-cert")
///             .keyVaultId(exampleAzurermKeyVault.id())
///             .certificatePolicy(List.of(Map.ofEntries(
///                 Map.entry("issuerParameters", List.of(Map.of("name", "Self"))),
///                 Map.entry("keyProperties", List.of(Map.ofEntries(
///                     Map.entry("exportable", true),
///                     Map.entry("keySize", 2048),
///                     Map.entry("keyType", "RSA"),
///                     Map.entry("reuseKey", true)
///                 ))),
///                 Map.entry("lifetimeAction", List.of(Map.ofEntries(
///                     Map.entry("action", List.of(Map.of("actionType", "AutoRenew"))),
///                     Map.entry("trigger", List.of(Map.of("daysBeforeExpiry", 30)))
///                 ))),
///                 Map.entry("secretProperties", List.of(Map.of("contentType", "application/x-pkcs12"))),
///                 Map.entry("x509CertificateProperties", List.of(Map.ofEntries(
///                     Map.entry("extendedKeyUsage", List.of("1.3.6.1.5.5.7.3.2")),
///                     Map.entry("keyUsage", List.of(
///                         "dataEncipherment",
///                         "digitalSignature",
///                         "keyCertSign",
///                         "keyEncipherment")),
///                     Map.entry("subjectAlternativeNames", List.of(Map.of("dnsNames", List.of(
///                         "internal.contoso.com",
///                         "domain.hello.world")))),
///                     Map.entry("subject", String.format("CN=%s", exampleApplication.name())),
///                     Map.entry("validityInMonths", 12)
///                 )))
///             )))
///             .build());
///
///         var exampleApplicationCertificate = new ApplicationCertificate("exampleApplicationCertificate", ApplicationCertificateArgs.builder()
///             .applicationId(exampleApplication.id())
///             .type("AsymmetricX509Cert")
///             .encoding("hex")
///             .value(example.certificateData())
///             .endDate(example.certificateAttribute()[0].expires())
///             .startDate(example.certificateAttribute()[0].notBefore())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azurerm:KeyVaultCertificate
///     properties:
///       name: generated-cert
///       keyVaultId: ${exampleAzurermKeyVault.id}
///       certificatePolicy:
///         - issuerParameters:
///             - name: Self
///           keyProperties:
///             - exportable: true
///               keySize: 2048
///               keyType: RSA
///               reuseKey: true
///           lifetimeAction:
///             - action:
///                 - actionType: AutoRenew
///               trigger:
///                 - daysBeforeExpiry: 30
///           secretProperties:
///             - contentType: application/x-pkcs12
///           x509CertificateProperties:
///             - extendedKeyUsage:
///                 - 1.3.6.1.5.5.7.3.2
///               keyUsage:
///                 - dataEncipherment
///                 - digitalSignature
///                 - keyCertSign
///                 - keyEncipherment
///               subjectAlternativeNames:
///                 - dnsNames:
///                     - internal.contoso.com
///                     - domain.hello.world
///               subject: CN=${exampleApplication.name}
///               validityInMonths: 12
///   exampleApplication:
///     type: azuread:Application
///     name: example
///     properties:
///       displayName: example
///   exampleApplicationCertificate:
///     type: azuread:ApplicationCertificate
///     name: example
///     properties:
///       applicationId: ${exampleApplication.id}
///       type: AsymmetricX509Cert
///       encoding: hex
///       value: ${example.certificateData}
///       endDate: ${example.certificateAttribute[0].expires}
///       startDate: ${example.certificateAttribute[0].notBefore}
/// ```
///
///
/// ## Import
///
/// Certificates can be imported using the object ID of the associated application and the key ID of the certificate credential, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/applicationCertificate:ApplicationCertificate example 00000000-0000-0000-0000-000000000000/certificate/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the application's object ID, the string "certificate" and the certificate's key ID in the format `{ObjectId}/certificate/{CertificateKeyId}`.
class ApplicationCertificate extends pulumi.CustomResource {
  /// The resource ID of the application for which this certificate should be created. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> applicationId;
  /// Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  ///
  /// &gt; **Tip for Azure Key Vault** The `hex` encoding option is useful for consuming certificate data from the azurerm_key_vault_certificate resource.
  late final pulumi.Output<String?> encoding;
  /// The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If omitted, the API will decide a suitable expiry date, which is typically around 2 years from the start date. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> endDate;
  /// A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  ///
  /// &gt; One of `end_date` or `end_date_relative` must be specified. The maximum allowed duration is determined by Azure AD and is typically around 2 years from the creation date.
  late final pulumi.Output<String?> endDateRelative;
  /// A UUID used to uniquely identify this certificate. If omitted, a random UUID will be automatically generated. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> keyId;
  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  late final pulumi.Output<String> startDate;
  /// The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  late final pulumi.Output<String?> type;
  /// The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  late final pulumi.Output<String> value;

  /// Creates a new [ApplicationCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationCertificate]. {@macro pulumi_index_application_certificate_application_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationCertificate(
    String name, {
    ApplicationCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationCertificate:ApplicationCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    encoding = registerOutput<String?>('encoding');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String?>('type');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [ApplicationCertificate] resource's state with the given [name] and [id].
  static ApplicationCertificate get(
    String name,
    pulumi.Input<String> id, {
    ApplicationCertificateState? state,
  }) {
    return ApplicationCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/applicationCertificate:ApplicationCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    encoding = registerOutput<String?>('encoding');
    endDate = registerOutput<String>('endDate');
    endDateRelative = registerOutput<String?>('endDateRelative');
    keyId = registerOutput<String>('keyId');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String?>('type');
    value = registerOutput<String>('value');
  }
}
