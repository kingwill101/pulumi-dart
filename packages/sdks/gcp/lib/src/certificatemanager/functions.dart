import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_args.dart';
import 'get_certificate_map_result.dart';
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';
import 'get_dns_authorization_args.dart';
import 'get_dns_authorization_result.dart';

/// Get info about a Google Certificate Manager Certificate Map resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificateMap({
///     name: "cert-map",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificate_map(name="cert-map")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateManager.GetCertificateMap.Invoke(new()
///     {
///         Name = "cert-map",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificatemanager.GetCertificateMap(ctx, &certificatemanager.GetCertificateMapArgs{
/// 			Name: "cert-map",
/// 		}, nil)
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
/// data "gcp_certificatemanager_getcertificatemap" "default" {
///   name = "cert-map"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.CertificatemanagerFunctions;
/// import com.pulumi.gcp.certificatemanager.inputs.GetCertificateMapArgs;
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
///         final var default = CertificatemanagerFunctions.getCertificateMap(GetCertificateMapArgs.builder()
///             .name("cert-map")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:certificatemanager:getCertificateMap
///       arguments:
///         name: cert-map
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_get_certificate_map_get_certificate_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateMapResult> getCertificateMap(
  GetCertificateMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificateMap:getCertificateMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapResult.fromMap(result);
}

/// List all certificates within Google Certificate Manager for a given project, region or filter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({});
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates()
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateManager.GetCertificates.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
///         {
///             return cert.Name;
///         }).ToList()),
///     };
/// });
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
/// data "gcp_certificatemanager_getcertificates" "default" {
/// }
///
/// output "certificatesNames" {
///   value = [for cert in data.gcp_certificatemanager_getcertificates.default.certificates : cert.name]
/// }
/// ```
///
///
/// ### With A Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({
///     filter: "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates(filter="name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*")
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateManager.GetCertificates.Invoke(new()
///     {
///         Filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
///         {
///             return cert.Name;
///         }).ToList()),
///     };
/// });
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
/// data "gcp_certificatemanager_getcertificates" "default" {
///   filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*"
/// }
///
/// output "certificatesNames" {
///   value = [for cert in data.gcp_certificatemanager_getcertificates.default.certificates : cert.name]
/// }
/// ```
///
///
/// ### Regional Certificates With A Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificates({
///     region: "REGION",
///     filter: "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
/// });
/// export const certificatesNames = _default.then(_default => .map(cert => (cert.name)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificates(region="REGION",
///     filter="name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*")
/// pulumi.export("certificatesNames", [cert.name for cert in default.certificates])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateManager.GetCertificates.Invoke(new()
///     {
///         Region = "REGION",
///         Filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificatesNames"] = @default.Apply(@default => .Select(cert =>
///         {
///             return cert.Name;
///         }).ToList()),
///     };
/// });
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
/// data "gcp_certificatemanager_getcertificates" "default" {
///   region = "REGION"
///   filter = "name:projects/PROJECT_ID/locations/REGION/certificates/certificate-name-*"
/// }
///
/// output "certificatesNames" {
///   value = [for cert in data.gcp_certificatemanager_getcertificates.default.certificates : cert.name]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_get_certificates_get_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificates:getCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}

/// Use this data source to get information about a Certificate Manager DNS Authorization. For more details, see the [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.dnsAuthorizations).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getDnsAuthorization({
///     name: "my-dns-auth",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_dns_authorization(name="my-dns-auth",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateManager.GetDnsAuthorization.Invoke(new()
///     {
///         Name = "my-dns-auth",
///         Location = "global",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificatemanager.LookupDnsAuthorization(ctx, &certificatemanager.LookupDnsAuthorizationArgs{
/// 			Name:     "my-dns-auth",
/// 			Location: pulumi.StringRef("global"),
/// 		}, nil)
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
/// data "gcp_certificatemanager_getdnsauthorization" "default" {
///   name     = "my-dns-auth"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificatemanager.CertificatemanagerFunctions;
/// import com.pulumi.gcp.certificatemanager.inputs.GetDnsAuthorizationArgs;
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
///         final var default = CertificatemanagerFunctions.getDnsAuthorization(GetDnsAuthorizationArgs.builder()
///             .name("my-dns-auth")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:certificatemanager:getDnsAuthorization
///       arguments:
///         name: my-dns-auth
///         location: global
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_get_dns_authorization_get_dns_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsAuthorizationResult> getDnsAuthorization(
  GetDnsAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getDnsAuthorization:getDnsAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsAuthorizationResult.fromMap(result);
}
