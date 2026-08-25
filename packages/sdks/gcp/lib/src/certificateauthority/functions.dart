import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_args.dart';
import 'get_authority_result.dart';
import 'get_ca_pool_iam_policy_args.dart';
import 'get_ca_pool_iam_policy_result.dart';
import 'get_certificate_template_iam_policy_args.dart';
import 'get_certificate_template_iam_policy_result.dart';

/// Get info about a Google CAS Certificate Authority.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificateauthority.getAuthority({
///     location: "us-west1",
///     pool: "pool-name",
///     certificateAuthorityId: "ca-id",
/// });
/// export const csr = _default.then(_default => _default.pemCsr);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.get_authority(location="us-west1",
///     pool="pool-name",
///     certificate_authority_id="ca-id")
/// pulumi.export("csr", default.pem_csr)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.CertificateAuthority.GetAuthority.Invoke(new()
///     {
///         Location = "us-west1",
///         Pool = "pool-name",
///         CertificateAuthorityId = "ca-id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["csr"] = @default.Apply(@default => @default.Apply(getAuthorityResult => getAuthorityResult.PemCsr)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := certificateauthority.LookupAuthority(ctx, &certificateauthority.LookupAuthorityArgs{
/// 			Location:               pulumi.StringRef("us-west1"),
/// 			Pool:                   pulumi.StringRef("pool-name"),
/// 			CertificateAuthorityId: pulumi.StringRef("ca-id"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("csr", _default.PemCsr)
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
/// data "gcp_certificateauthority_getauthority" "default" {
///   location                 = "us-west1"
///   pool                     = "pool-name"
///   certificate_authority_id = "ca-id"
/// }
///
/// output "csr" {
///   value = data.gcp_certificateauthority_getauthority.default.pem_csr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CertificateauthorityFunctions;
/// import com.pulumi.gcp.certificateauthority.inputs.GetAuthorityArgs;
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
///         final var default = CertificateauthorityFunctions.getAuthority(GetAuthorityArgs.builder()
///             .location("us-west1")
///             .pool("pool-name")
///             .certificateAuthorityId("ca-id")
///             .build());
///
///         ctx.export("csr", default_.pemCsr());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:certificateauthority:getAuthority
///       arguments:
///         location: us-west1
///         pool: pool-name
///         certificateAuthorityId: ca-id
/// outputs:
///   csr: ${default.pemCsr}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificateauthority_get_authority_get_authority_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorityResult> getAuthority(
  GetAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getAuthority:getAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorityResult.fromMap(result);
}

pulumi.Output<GetAuthorityResult> getAuthorityOutput(
  GetAuthorityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:certificateauthority/getAuthority:getAuthority',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorityResult.fromMap);
}

/// Retrieves the current IAM policy data for capool
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.certificateauthority.getCaPoolIamPolicy({
///     caPool: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.certificateauthority.get_ca_pool_iam_policy(ca_pool=default["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CertificateAuthority.GetCaPoolIamPolicy.Invoke(new()
///     {
///         CaPool = @default.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.LookupCaPoolIamPolicy(ctx, &certificateauthority.LookupCaPoolIamPolicyArgs{
/// 			CaPool: _default.Id,
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
/// data "gcp_certificateauthority_getcapooliampolicy" "policy" {
///   ca_pool = default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CertificateauthorityFunctions;
/// import com.pulumi.gcp.certificateauthority.inputs.GetCaPoolIamPolicyArgs;
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
///         final var policy = CertificateauthorityFunctions.getCaPoolIamPolicy(GetCaPoolIamPolicyArgs.builder()
///             .caPool(default_.get("id"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:certificateauthority:getCaPoolIamPolicy
///       arguments:
///         caPool: ${default.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificateauthority_get_ca_pool_iam_policy_get_ca_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaPoolIamPolicyResult> getCaPoolIamPolicy(
  GetCaPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getCaPoolIamPolicy:getCaPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCaPoolIamPolicyResult> getCaPoolIamPolicyOutput(
  GetCaPoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:certificateauthority/getCaPoolIamPolicy:getCaPoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCaPoolIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for certificatetemplate
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.certificateauthority.getCertificateTemplateIamPolicy({
///     certificateTemplate: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.certificateauthority.get_certificate_template_iam_policy(certificate_template=default["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.CertificateAuthority.GetCertificateTemplateIamPolicy.Invoke(new()
///     {
///         CertificateTemplate = @default.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := certificateauthority.LookupCertificateTemplateIamPolicy(ctx, &certificateauthority.LookupCertificateTemplateIamPolicyArgs{
/// 			CertificateTemplate: _default.Id,
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
/// data "gcp_certificateauthority_getcertificatetemplateiampolicy" "policy" {
///   certificate_template = default.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.certificateauthority.CertificateauthorityFunctions;
/// import com.pulumi.gcp.certificateauthority.inputs.GetCertificateTemplateIamPolicyArgs;
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
///         final var policy = CertificateauthorityFunctions.getCertificateTemplateIamPolicy(GetCertificateTemplateIamPolicyArgs.builder()
///             .certificateTemplate(default_.get("id"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:certificateauthority:getCertificateTemplateIamPolicy
///       arguments:
///         certificateTemplate: ${default.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_certificateauthority_get_certificate_template_iam_policy_get_certificate_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateTemplateIamPolicyResult> getCertificateTemplateIamPolicy(
  GetCertificateTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getCertificateTemplateIamPolicy:getCertificateTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCertificateTemplateIamPolicyResult> getCertificateTemplateIamPolicyOutput(
  GetCertificateTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:certificateauthority/getCertificateTemplateIamPolicy:getCertificateTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateTemplateIamPolicyResult.fromMap);
}
