import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_vwan_config_args.dart';
import 'get_vwan_config_result.dart';
import 'get_waf_entity_parameter_args.dart';
import 'get_waf_entity_parameter_result.dart';
import 'get_waf_entity_url_args.dart';
import 'get_waf_entity_url_result.dart';
import 'get_waf_pb_suggestions_args.dart';
import 'get_waf_pb_suggestions_result.dart';
import 'get_waf_policy_args.dart';
import 'get_waf_policy_result.dart';
import 'get_waf_signatures_args.dart';
import 'get_waf_signatures_result.dart';

/// Use this data source (`f5bigip.ssl.Certificate`) to get the ssl-certificate details available on BIG-IP
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test = f5bigip.ssl.getCertificate({
///     name: "terraform_ssl_certificate",
///     partition: "Common",
/// });
/// export const bigipSslCertificateName = test.then(test => test.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test = f5bigip.ssl.get_certificate(name="terraform_ssl_certificate",
///     partition="Common")
/// pulumi.export("bigipSslCertificateName", test.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = F5BigIP.Ssl.GetCertificate.Invoke(new()
///     {
///         Name = "terraform_ssl_certificate",
///         Partition = "Common",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["bigipSslCertificateName"] = test.Apply(getCertificateResult => getCertificateResult.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := ssl.LookupCertificate(ctx, &ssl.LookupCertificateArgs{
/// 			Name:      "terraform_ssl_certificate",
/// 			Partition: "Common",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("bigipSslCertificateName", test.Name)
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetCertificateArgs;
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
///         final var test = SslFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("terraform_ssl_certificate")
///             .partition("Common")
///             .build());
///
///         ctx.export("bigipSslCertificateName", test.name());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: f5bigip:ssl:getCertificate
///       arguments:
///         name: terraform_ssl_certificate
///         partition: Common
/// outputs:
///   bigipSslCertificateName: ${test.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source (`f5bigip.ssl.getVWanConfig`) to get the vWAN site config from Azure VWAN Site
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const vwanconfig = f5bigip.ssl.getVWanConfig({
///     azureVwanResourcegroup: "azurevwan-bigip-rg-9c8d",
///     azureVwanName: "azurevwan-bigip-vwan-9c8d",
///     azureVwanVpnsite: "azurevwan-bigip-vsite-9c8d",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// vwanconfig = f5bigip.ssl.get_v_wan_config(azure_vwan_resourcegroup="azurevwan-bigip-rg-9c8d",
///     azure_vwan_name="azurevwan-bigip-vwan-9c8d",
///     azure_vwan_vpnsite="azurevwan-bigip-vsite-9c8d")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vwanconfig = F5BigIP.Ssl.GetVWanConfig.Invoke(new()
///     {
///         AzureVwanResourcegroup = "azurevwan-bigip-rg-9c8d",
///         AzureVwanName = "azurevwan-bigip-vwan-9c8d",
///         AzureVwanVpnsite = "azurevwan-bigip-vsite-9c8d",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssl.GetVWanConfig(ctx, &ssl.GetVWanConfigArgs{
/// 			AzureVwanResourcegroup: "azurevwan-bigip-rg-9c8d",
/// 			AzureVwanName:          "azurevwan-bigip-vwan-9c8d",
/// 			AzureVwanVpnsite:       "azurevwan-bigip-vsite-9c8d",
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetVWanConfigArgs;
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
///         final var vwanconfig = SslFunctions.getVWanConfig(GetVWanConfigArgs.builder()
///             .azureVwanResourcegroup("azurevwan-bigip-rg-9c8d")
///             .azureVwanName("azurevwan-bigip-vwan-9c8d")
///             .azureVwanVpnsite("azurevwan-bigip-vsite-9c8d")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vwanconfig:
///     fn::invoke:
///       function: f5bigip:ssl:getVWanConfig
///       arguments:
///         azureVwanResourcegroup: azurevwan-bigip-rg-9c8d
///         azureVwanName: azurevwan-bigip-vwan-9c8d
///         azureVwanVpnsite: azurevwan-bigip-vsite-9c8d
/// ```
///
///
/// ## Pre-required Environment Settings:
///
/// * `AZURE_CLIENT_ID` - (Required) Set this environment variable with the Azure app client ID to use.
///
/// * `AZURE_CLIENT_SECRET` - (Required) Set this environment variable with the Azure app secret to use.
///
/// * `AZURE_SUBSCRIPTION_ID` - (Required) Set this environment variable with the Azure subscription ID to use.
///
/// * `AZURE_TENANT_ID` - (Required) Set this environment variable with the Tenant ID to which to authenticate.
///
/// * `STORAGE_ACCOUNT_NAME` - (Required) Set this environment variable with the storage account for download config.
///
/// * `STORAGE_ACCOUNT_KEY` - (Required) Specifies the storage account key to authenticate,set this Environment variable with account key value.
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_vwan_config_get_vwan_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVWanConfigResult> getVWanConfig(
  GetVWanConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getVWanConfig:getVWanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVWanConfigResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_waf_entity_parameter_get_waf_entity_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafEntityParameterResult> getWafEntityParameter(
  GetWafEntityParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getWafEntityParameter:getWafEntityParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafEntityParameterResult.fromMap(result);
}

/// Use this data source (`f5bigip.ssl.getWafPbSuggestions`) to create JSON for WAF URL to later use with an existing WAF policy.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const WAFURL1 = f5bigip.ssl.getWafEntityUrl({
///     name: "/foobar",
///     description: "this is a test",
///     type: "explicit",
///     protocol: "HTTP",
///     performStaging: true,
///     signatureOverridesDisables: [
///         12345678,
///         87654321,
///     ],
///     methodOverrides: [
///         {
///             allow: false,
///             method: "BCOPY",
///         },
///         {
///             allow: true,
///             method: "BDELETE",
///         },
///     ],
///     crossOriginRequestsEnforcements: [
///         {
///             includeSubdomains: true,
///             originName: "app1.com",
///             originPort: "80",
///             originProtocol: "http",
///         },
///         {
///             includeSubdomains: true,
///             originName: "app2.com",
///             originPort: "443",
///             originProtocol: "http",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// wafurl1 = f5bigip.ssl.get_waf_entity_url(name="/foobar",
///     description="this is a test",
///     type="explicit",
///     protocol="HTTP",
///     perform_staging=True,
///     signature_overrides_disables=[
///         12345678,
///         87654321,
///     ],
///     method_overrides=[
///         {
///             "allow": False,
///             "method": "BCOPY",
///         },
///         {
///             "allow": True,
///             "method": "BDELETE",
///         },
///     ],
///     cross_origin_requests_enforcements=[
///         {
///             "include_subdomains": True,
///             "origin_name": "app1.com",
///             "origin_port": "80",
///             "origin_protocol": "http",
///         },
///         {
///             "include_subdomains": True,
///             "origin_name": "app2.com",
///             "origin_port": "443",
///             "origin_protocol": "http",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var WAFURL1 = F5BigIP.Ssl.GetWafEntityUrl.Invoke(new()
///     {
///         Name = "/foobar",
///         Description = "this is a test",
///         Type = "explicit",
///         Protocol = "HTTP",
///         PerformStaging = true,
///         SignatureOverridesDisables = new[]
///         {
///             12345678,
///             87654321,
///         },
///         MethodOverrides = new[]
///         {
///             new F5BigIP.Ssl.Inputs.GetWafEntityUrlMethodOverrideInputArgs
///             {
///                 Allow = false,
///                 Method = "BCOPY",
///             },
///             new F5BigIP.Ssl.Inputs.GetWafEntityUrlMethodOverrideInputArgs
///             {
///                 Allow = true,
///                 Method = "BDELETE",
///             },
///         },
///         CrossOriginRequestsEnforcements = new[]
///         {
///             new F5BigIP.Ssl.Inputs.GetWafEntityUrlCrossOriginRequestsEnforcementInputArgs
///             {
///                 IncludeSubdomains = true,
///                 OriginName = "app1.com",
///                 OriginPort = "80",
///                 OriginProtocol = "http",
///             },
///             new F5BigIP.Ssl.Inputs.GetWafEntityUrlCrossOriginRequestsEnforcementInputArgs
///             {
///                 IncludeSubdomains = true,
///                 OriginName = "app2.com",
///                 OriginPort = "443",
///                 OriginProtocol = "http",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssl.GetWafEntityUrl(ctx, &ssl.GetWafEntityUrlArgs{
/// Name: "/foobar",
/// Description: pulumi.StringRef("this is a test"),
/// Type: pulumi.StringRef("explicit"),
/// Protocol: pulumi.StringRef("HTTP"),
/// PerformStaging: pulumi.BoolRef(true),
/// SignatureOverridesDisables: interface{}{
/// 12345678,
/// 87654321,
/// },
/// MethodOverrides: []ssl.GetWafEntityUrlMethodOverride{
/// {
/// Allow: false,
/// Method: "BCOPY",
/// },
/// {
/// Allow: true,
/// Method: "BDELETE",
/// },
/// },
/// CrossOriginRequestsEnforcements: []ssl.GetWafEntityUrlCrossOriginRequestsEnforcement{
/// {
/// IncludeSubdomains: pulumi.BoolRef(true),
/// OriginName: "app1.com",
/// OriginPort: "80",
/// OriginProtocol: "http",
/// },
/// {
/// IncludeSubdomains: pulumi.BoolRef(true),
/// OriginName: "app2.com",
/// OriginPort: "443",
/// OriginProtocol: "http",
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafEntityUrlArgs;
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
///         final var WAFURL1 = SslFunctions.getWafEntityUrl(GetWafEntityUrlArgs.builder()
///             .name("/foobar")
///             .description("this is a test")
///             .type("explicit")
///             .protocol("HTTP")
///             .performStaging(true)
///             .signatureOverridesDisables(
///                 12345678,
///                 87654321)
///             .methodOverrides(
///                 GetWafEntityUrlMethodOverrideArgs.builder()
///                     .allow(false)
///                     .method("BCOPY")
///                     .build(),
///                 GetWafEntityUrlMethodOverrideArgs.builder()
///                     .allow(true)
///                     .method("BDELETE")
///                     .build())
///             .crossOriginRequestsEnforcements(
///                 GetWafEntityUrlCrossOriginRequestsEnforcementArgs.builder()
///                     .includeSubdomains(true)
///                     .originName("app1.com")
///                     .originPort("80")
///                     .originProtocol("http")
///                     .build(),
///                 GetWafEntityUrlCrossOriginRequestsEnforcementArgs.builder()
///                     .includeSubdomains(true)
///                     .originName("app2.com")
///                     .originPort("443")
///                     .originProtocol("http")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   WAFURL1:
///     fn::invoke:
///       function: f5bigip:ssl:getWafEntityUrl
///       arguments:
///         name: /foobar
///         description: this is a test
///         type: explicit
///         protocol: HTTP
///         performStaging: true
///         signatureOverridesDisables:
///           - 1.2345678e+07
///           - 8.7654321e+07
///         methodOverrides:
///           - allow: false
///             method: BCOPY
///           - allow: true
///             method: BDELETE
///         crossOriginRequestsEnforcements:
///           - includeSubdomains: true
///             originName: app1.com
///             originPort: '80'
///             originProtocol: http
///           - includeSubdomains: true
///             originName: app2.com
///             originPort: '443'
///             originProtocol: http
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_waf_entity_url_get_waf_entity_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafEntityUrlResult> getWafEntityUrl(
  GetWafEntityUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getWafEntityUrl:getWafEntityUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafEntityUrlResult.fromMap(result);
}

/// Use this data source (`f5bigip.ssl.getWafPbSuggestions`) to export PB suggestions from an existing WAF policy.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const PBWAF1 = f5bigip.ssl.getWafPbSuggestions({
///     policyName: "protect_me_policy",
///     partition: "Common",
///     minimumLearningScore: 20,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// pbwaf1 = f5bigip.ssl.get_waf_pb_suggestions(policy_name="protect_me_policy",
///     partition="Common",
///     minimum_learning_score=20)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var PBWAF1 = F5BigIP.Ssl.GetWafPbSuggestions.Invoke(new()
///     {
///         PolicyName = "protect_me_policy",
///         Partition = "Common",
///         MinimumLearningScore = 20,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssl.GetWafPbSuggestions(ctx, &ssl.GetWafPbSuggestionsArgs{
/// 			PolicyName:           "protect_me_policy",
/// 			Partition:            "Common",
/// 			MinimumLearningScore: 20,
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafPbSuggestionsArgs;
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
///         final var PBWAF1 = SslFunctions.getWafPbSuggestions(GetWafPbSuggestionsArgs.builder()
///             .policyName("protect_me_policy")
///             .partition("Common")
///             .minimumLearningScore(20)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   PBWAF1:
///     fn::invoke:
///       function: f5bigip:ssl:getWafPbSuggestions
///       arguments:
///         policyName: protect_me_policy
///         partition: Common
///         minimumLearningScore: 20
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_waf_pb_suggestions_get_waf_pb_suggestions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafPbSuggestionsResult> getWafPbSuggestions(
  GetWafPbSuggestionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getWafPbSuggestions:getWafPbSuggestions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafPbSuggestionsResult.fromMap(result);
}

/// Use this data source (`f5bigip.WafPolicy`) to get the details of exist WAF policy BIG-IP.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const existpolicy = f5bigip.ssl.getWafPolicy({
///     policyId: "xxxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// existpolicy = f5bigip.ssl.get_waf_policy(policy_id="xxxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existpolicy = F5BigIP.Ssl.GetWafPolicy.Invoke(new()
///     {
///         PolicyId = "xxxxx",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssl.GetWafPolicy(ctx, &ssl.GetWafPolicyArgs{
/// 			PolicyId: "xxxxx",
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafPolicyArgs;
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
///         final var existpolicy = SslFunctions.getWafPolicy(GetWafPolicyArgs.builder()
///             .policyId("xxxxx")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existpolicy:
///     fn::invoke:
///       function: f5bigip:ssl:getWafPolicy
///       arguments:
///         policyId: xxxxx
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_waf_policy_get_waf_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafPolicyResult> getWafPolicy(
  GetWafPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getWafPolicy:getWafPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafPolicyResult.fromMap(result);
}

/// Use this data source (`f5bigip.ssl.getWafSignatures`) to get the details of attack signatures available on BIG-IP WAF
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const WAFSIG1 = f5bigip.ssl.getWafSignatures({
///     signatureId: 200104004,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// wafsig1 = f5bigip.ssl.get_waf_signatures(signature_id=200104004)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var WAFSIG1 = F5BigIP.Ssl.GetWafSignatures.Invoke(new()
///     {
///         SignatureId = 200104004,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssl.GetWafSignatures(ctx, &ssl.GetWafSignaturesArgs{
/// 			SignatureId: 200104004,
/// 		}, nil)
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafSignaturesArgs;
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
///         final var WAFSIG1 = SslFunctions.getWafSignatures(GetWafSignaturesArgs.builder()
///             .signatureId(200104004)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   WAFSIG1:
///     fn::invoke:
///       function: f5bigip:ssl:getWafSignatures
///       arguments:
///         signatureId: 2.00104004e+08
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ssl_get_waf_signatures_get_waf_signatures_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWafSignaturesResult> getWafSignatures(
  GetWafSignaturesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'f5bigip:ssl/getWafSignatures:getWafSignatures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWafSignaturesResult.fromMap(result);
}
