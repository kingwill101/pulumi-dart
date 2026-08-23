import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_trust_certificate_args.dart';

/// Server trust certificate imported from box to enable connection between box and Sql Managed Instance.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create server trust certificate.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverTrustCertificate = new AzureNative.Sql.ServerTrustCertificate("serverTrustCertificate", new()
///     {
///         CertificateName = "customerCertificateName",
///         ManagedInstanceName = "testcl",
///         PublicBlob = "308203AE30820296A0030201020210",
///         ResourceGroupName = "testrg",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerTrustCertificate(ctx, "serverTrustCertificate", &sql.ServerTrustCertificateArgs{
/// 			CertificateName:     pulumi.String("customerCertificateName"),
/// 			ManagedInstanceName: pulumi.String("testcl"),
/// 			PublicBlob:          pulumi.String("308203AE30820296A0030201020210"),
/// 			ResourceGroupName:   pulumi.String("testrg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_servertrustcertificate" "serverTrustCertificate" {
///   certificate_name      = "customerCertificateName"
///   managed_instance_name = "testcl"
///   public_blob           = "308203AE30820296A0030201020210"
///   resource_group_name   = "testrg"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ServerTrustCertificate;
/// import com.pulumi.azurenative.sql.ServerTrustCertificateArgs;
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
///         var serverTrustCertificate = new ServerTrustCertificate("serverTrustCertificate", ServerTrustCertificateArgs.builder()
///             .certificateName("customerCertificateName")
///             .managedInstanceName("testcl")
///             .publicBlob("308203AE30820296A0030201020210")
///             .resourceGroupName("testrg")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const serverTrustCertificate = new azure_native.sql.ServerTrustCertificate("serverTrustCertificate", {
///     certificateName: "customerCertificateName",
///     managedInstanceName: "testcl",
///     publicBlob: "308203AE30820296A0030201020210",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_trust_certificate = azure_native.sql.ServerTrustCertificate("serverTrustCertificate",
///     certificate_name="customerCertificateName",
///     managed_instance_name="testcl",
///     public_blob="308203AE30820296A0030201020210",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   serverTrustCertificate:
///     type: azure-native:sql:ServerTrustCertificate
///     properties:
///       certificateName: customerCertificateName
///       managedInstanceName: testcl
///       publicBlob: 308203AE30820296A0030201020210
///       resourceGroupName: testrg
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:ServerTrustCertificate customerCertificateName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/serverTrustCertificates/{certificateName}
/// ```
class ServerTrustCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The certificate name
  late final pulumi.Output<String> certificateName;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The certificate public blob
  late final pulumi.Output<String?> publicBlob;
  /// The certificate thumbprint
  late final pulumi.Output<String> thumbprint;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerTrustCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerTrustCertificate]. {@macro pulumi_sql_server_trust_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerTrustCertificate(
    String name, {
    ServerTrustCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerTrustCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificateName = registerOutput<String>('certificateName');
    this.name = registerOutput<String>('name');
    publicBlob = registerOutput<String?>('publicBlob');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }
}
