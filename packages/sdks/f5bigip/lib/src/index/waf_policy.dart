import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy_args.dart';
import 'waf_policy_file_type.dart';
import 'waf_policy_graphql_profile.dart';
import 'waf_policy_host_name.dart';
import 'waf_policy_ip_exception.dart';
import 'waf_policy_policy_builder.dart';
import 'waf_policy_signatures_setting.dart';
import 'waf_policy_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const param1 = f5bigip.ssl.getWafEntityParameter({
///     name: "Param1",
///     type: "explicit",
///     dataType: "alpha-numeric",
///     performStaging: true,
/// });
/// const param2 = f5bigip.ssl.getWafEntityParameter({
///     name: "Param2",
///     type: "explicit",
///     dataType: "alpha-numeric",
///     performStaging: true,
/// });
/// const URL = f5bigip.ssl.getWafEntityUrl({
///     name: "URL1",
///     protocol: "http",
/// });
/// const URL2 = f5bigip.ssl.getWafEntityUrl({
///     name: "URL2",
/// });
/// const test_awaf = new f5bigip.WafPolicy("test-awaf", {
///     name: "testpolicyravi",
///     partition: "Common",
///     templateName: "POLICY_TEMPLATE_RAPID_DEPLOYMENT",
///     applicationLanguage: "utf-8",
///     enforcementMode: "blocking",
///     serverTechnologies: [
///         "MySQL",
///         "Unix/Linux",
///         "MongoDB",
///     ],
///     parameters: [
///         param1.then(param1 => param1.json),
///         param2.then(param2 => param2.json),
///     ],
///     urls: [
///         URL.then(URL => URL.json),
///         URL2.then(URL2 => URL2.json),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// param1 = f5bigip.ssl.get_waf_entity_parameter(name="Param1",
///     type="explicit",
///     data_type="alpha-numeric",
///     perform_staging=True)
/// param2 = f5bigip.ssl.get_waf_entity_parameter(name="Param2",
///     type="explicit",
///     data_type="alpha-numeric",
///     perform_staging=True)
/// url = f5bigip.ssl.get_waf_entity_url(name="URL1",
///     protocol="http")
/// url2 = f5bigip.ssl.get_waf_entity_url(name="URL2")
/// test_awaf = f5bigip.WafPolicy("test-awaf",
///     name="testpolicyravi",
///     partition="Common",
///     template_name="POLICY_TEMPLATE_RAPID_DEPLOYMENT",
///     application_language="utf-8",
///     enforcement_mode="blocking",
///     server_technologies=[
///         "MySQL",
///         "Unix/Linux",
///         "MongoDB",
///     ],
///     parameters=[
///         param1.json,
///         param2.json,
///     ],
///     urls=[
///         url.json,
///         url2.json,
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
///     var param1 = F5BigIP.Ssl.GetWafEntityParameter.Invoke(new()
///     {
///         Name = "Param1",
///         Type = "explicit",
///         DataType = "alpha-numeric",
///         PerformStaging = true,
///     });
///
///     var param2 = F5BigIP.Ssl.GetWafEntityParameter.Invoke(new()
///     {
///         Name = "Param2",
///         Type = "explicit",
///         DataType = "alpha-numeric",
///         PerformStaging = true,
///     });
///
///     var URL = F5BigIP.Ssl.GetWafEntityUrl.Invoke(new()
///     {
///         Name = "URL1",
///         Protocol = "http",
///     });
///
///     var URL2 = F5BigIP.Ssl.GetWafEntityUrl.Invoke(new()
///     {
///         Name = "URL2",
///     });
///
///     var test_awaf = new F5BigIP.WafPolicy("test-awaf", new()
///     {
///         Name = "testpolicyravi",
///         Partition = "Common",
///         TemplateName = "POLICY_TEMPLATE_RAPID_DEPLOYMENT",
///         ApplicationLanguage = "utf-8",
///         EnforcementMode = "blocking",
///         ServerTechnologies = new[]
///         {
///             "MySQL",
///             "Unix/Linux",
///             "MongoDB",
///         },
///         Parameters = new[]
///         {
///             param1.Apply(getWafEntityParameterResult => getWafEntityParameterResult.Json),
///             param2.Apply(getWafEntityParameterResult => getWafEntityParameterResult.Json),
///         },
///         Urls = new[]
///         {
///             URL.Apply(getWafEntityUrlResult => getWafEntityUrlResult.Json),
///             URL2.Apply(getWafEntityUrlResult => getWafEntityUrlResult.Json),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		param1, err := ssl.GetWafEntityParameter(ctx, &ssl.GetWafEntityParameterArgs{
/// 			Name:           "Param1",
/// 			Type:           pulumi.StringRef("explicit"),
/// 			DataType:       pulumi.StringRef("alpha-numeric"),
/// 			PerformStaging: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		param2, err := ssl.GetWafEntityParameter(ctx, &ssl.GetWafEntityParameterArgs{
/// 			Name:           "Param2",
/// 			Type:           pulumi.StringRef("explicit"),
/// 			DataType:       pulumi.StringRef("alpha-numeric"),
/// 			PerformStaging: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		URL, err := ssl.GetWafEntityUrl(ctx, &ssl.GetWafEntityUrlArgs{
/// 			Name:     "URL1",
/// 			Protocol: pulumi.StringRef("http"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		URL2, err := ssl.GetWafEntityUrl(ctx, &ssl.GetWafEntityUrlArgs{
/// 			Name: "URL2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = f5bigip.NewWafPolicy(ctx, "test-awaf", &f5bigip.WafPolicyArgs{
/// 			Name:                pulumi.String("testpolicyravi"),
/// 			Partition:           pulumi.String("Common"),
/// 			TemplateName:        pulumi.String("POLICY_TEMPLATE_RAPID_DEPLOYMENT"),
/// 			ApplicationLanguage: pulumi.String("utf-8"),
/// 			EnforcementMode:     pulumi.String("blocking"),
/// 			ServerTechnologies: pulumi.StringArray{
/// 				pulumi.String("MySQL"),
/// 				pulumi.String("Unix/Linux"),
/// 				pulumi.String("MongoDB"),
/// 			},
/// 			Parameters: pulumi.StringArray{
/// 				pulumi.String(param1.Json),
/// 				pulumi.String(param2.Json),
/// 			},
/// 			Urls: pulumi.StringArray{
/// 				pulumi.String(URL.Json),
/// 				pulumi.String(URL2.Json),
/// 			},
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
/// import com.pulumi.f5bigip.ssl.SslFunctions;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafEntityParameterArgs;
/// import com.pulumi.f5bigip.ssl.inputs.GetWafEntityUrlArgs;
/// import com.pulumi.f5bigip.WafPolicy;
/// import com.pulumi.f5bigip.WafPolicyArgs;
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
///         final var param1 = SslFunctions.getWafEntityParameter(GetWafEntityParameterArgs.builder()
///             .name("Param1")
///             .type("explicit")
///             .dataType("alpha-numeric")
///             .performStaging(true)
///             .build());
///
///         final var param2 = SslFunctions.getWafEntityParameter(GetWafEntityParameterArgs.builder()
///             .name("Param2")
///             .type("explicit")
///             .dataType("alpha-numeric")
///             .performStaging(true)
///             .build());
///
///         final var URL = SslFunctions.getWafEntityUrl(GetWafEntityUrlArgs.builder()
///             .name("URL1")
///             .protocol("http")
///             .build());
///
///         final var URL2 = SslFunctions.getWafEntityUrl(GetWafEntityUrlArgs.builder()
///             .name("URL2")
///             .build());
///
///         var test_awaf = new WafPolicy("test-awaf", WafPolicyArgs.builder()
///             .name("testpolicyravi")
///             .partition("Common")
///             .templateName("POLICY_TEMPLATE_RAPID_DEPLOYMENT")
///             .applicationLanguage("utf-8")
///             .enforcementMode("blocking")
///             .serverTechnologies(
///                 "MySQL",
///                 "Unix/Linux",
///                 "MongoDB")
///             .parameters(
///                 param1.json(),
///                 param2.json())
///             .urls(
///                 URL.json(),
///                 URL2.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-awaf:
///     type: f5bigip:WafPolicy
///     properties:
///       name: testpolicyravi
///       partition: Common
///       templateName: POLICY_TEMPLATE_RAPID_DEPLOYMENT
///       applicationLanguage: utf-8
///       enforcementMode: blocking
///       serverTechnologies:
///         - MySQL
///         - Unix/Linux
///         - MongoDB
///       parameters:
///         - ${param1.json}
///         - ${param2.json}
///       urls:
///         - ${URL.json}
///         - ${URL2.json}
/// variables:
///   param1:
///     fn::invoke:
///       function: f5bigip:ssl:getWafEntityParameter
///       arguments:
///         name: Param1
///         type: explicit
///         dataType: alpha-numeric
///         performStaging: true
///   param2:
///     fn::invoke:
///       function: f5bigip:ssl:getWafEntityParameter
///       arguments:
///         name: Param2
///         type: explicit
///         dataType: alpha-numeric
///         performStaging: true
///   URL:
///     fn::invoke:
///       function: f5bigip:ssl:getWafEntityUrl
///       arguments:
///         name: URL1
///         protocol: http
///   URL2:
///     fn::invoke:
///       function: f5bigip:ssl:getWafEntityUrl
///       arguments:
///         name: URL2
/// ```
///
///
/// ## Import
///
/// An existing WAF Policy or if the WAF Policy has been manually created or modified on the BIG-IP WebUI, it can be imported using its `id`.
///
/// e.g:
///
/// ```sh
/// $ pulumi import f5bigip:index/wafPolicy:WafPolicy example <id>
/// ```
class WafPolicy extends pulumi.CustomResource {
  /// The character encoding for the web application. The character encoding determines how the policy processes the character sets. The default is `utf-8`
  late final pulumi.Output<String?> applicationLanguage;
  /// Specifies whether the security policy treats microservice URLs, file types, URLs, and parameters as case sensitive or not. When this setting is enabled, the system stores these security policy elements in lowercase in the security policy configuration
  late final pulumi.Output<bool?> caseInsensitive;
  /// Specifies the description of the policy.
  late final pulumi.Output<String> description;
  /// Passive Mode allows the policy to be associated with a Performance L4 Virtual Server (using a FastL4 profile). With FastL4, traffic is analyzed but is not modified in any way.
  late final pulumi.Output<bool?> enablePassivemode;
  /// How the system processes a request that triggers a security policy violation
  late final pulumi.Output<String?> enforcementMode;
  /// `file_types` takes list of file-types options to be used for policy builder.
  /// See file types below for more details.
  late final pulumi.Output<List<WafPolicyFileType>?> fileTypes;
  /// `graphql_profiles` takes list of graphql profile options to be used for policy builder.
  /// See graphql profiles below for more details.
  late final pulumi.Output<List<WafPolicyGraphqlProfile>?> graphqlProfiles;
  /// specify the list of host name that is used to access the application
  late final pulumi.Output<List<WafPolicyHostName>?> hostNames;
  /// `ip_exceptions` takes list of IP address exception,An IP address exception is an IP address that you want the system to treat in a specific way for a security policy.For example, you can specify IP addresses from which the system should always trust traffic.
  /// See IP Exceptions below for more details.
  late final pulumi.Output<List<WafPolicyIpException>?> ipExceptions;
  /// the modifications section includes actions that modify the declarative policy as it is defined in the adjustments section. The modifications section is updated manually, with the changes generally driven by the learning suggestions provided by the BIG-IP.
  late final pulumi.Output<List<String>?> modifications;
  /// The unique user-given name of the policy. Policy names cannot contain spaces or special characters. Allowed characters are a-z, A-Z, 0-9, dot, dash (-), colon (:) and underscore (_).
  late final pulumi.Output<String> name;
  /// This section defines the Link for open api files on the policy.
  late final pulumi.Output<List<String>?> openApiFiles;
  /// This section defines parameters that the security policy permits in requests.
  late final pulumi.Output<List<String>?> parameters;
  /// Specifies the partition of the policy. Default is `Common`
  late final pulumi.Output<String?> partition;
  /// `policy_builder` block will provide `learning_mode` options to be used for policy builder.
  /// See policy builder below for more details.
  late final pulumi.Output<List<WafPolicyPolicyBuilder>?> policyBuilders;
  /// Exported WAF policy deployed on BIGIP.
  late final pulumi.Output<String> policyExportJson;
  /// The id of the A.WAF Policy as it would be calculated on the BIG-IP.
  late final pulumi.Output<String> policyId;
  /// The payload of the WAF Policy to be used for IMPORT on to BIG-IP.
  late final pulumi.Output<String?> policyImportJson;
  /// When creating a security policy, you can determine whether a security policy differentiates between HTTP and HTTPS URLs. If enabled, the security policy differentiates between HTTP and HTTPS URLs. If disabled, the security policy configures URLs without specifying a specific protocol. This is useful for applications that behave the same for HTTP and HTTPS, and it keeps the security policy from including the same URL twice.
  late final pulumi.Output<bool?> protocolIndependent;
  /// The server technology is a server-side application, framework, web server or operating system type that is configured in the policy in order to adapt the policy to the checks needed for the respective technology.
  late final pulumi.Output<List<String>?> serverTechnologies;
  /// Defines behavior when signatures found within a signature-set are detected in a request. Settings are culmulative, so if a signature is found in any set with block enabled, that signature will have block enabled.
  late final pulumi.Output<List<String>?> signatureSets;
  /// This section defines the properties of a signature on the policy.
  late final pulumi.Output<List<String>?> signatures;
  /// bulk signature setting
  late final pulumi.Output<List<WafPolicySignaturesSetting>?> signaturesSettings;
  /// Specifies the Link of the template used for the policy creation.
  late final pulumi.Output<String?> templateLink;
  /// Specifies the name of the template used for the policy creation.
  late final pulumi.Output<String> templateName;
  /// The type of policy you want to create. The default policy type is `security`.
  late final pulumi.Output<String?> type;
  /// In a security policy, you can manually specify the HTTP URLs that are allowed (or disallowed) in traffic to the web application being protected. If you are using automatic policy building (and the policy includes learning URLs), the system can determine which URLs to add, based on legitimate traffic.
  late final pulumi.Output<List<String>?> urls;

  /// Creates a new [WafPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WafPolicy]. {@macro pulumi_index_waf_policy_waf_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WafPolicy(
    String name, {
    WafPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/wafPolicy:WafPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationLanguage = registerOutput<String?>('applicationLanguage');
    this.caseInsensitive = registerOutput<bool?>('caseInsensitive');
    this.description = registerOutput<String>('description');
    this.enablePassivemode = registerOutput<bool?>('enablePassivemode');
    this.enforcementMode = registerOutput<String?>('enforcementMode');
    this.fileTypes = registerOutput<List<WafPolicyFileType>?>('fileTypes');
    this.graphqlProfiles = registerOutput<List<WafPolicyGraphqlProfile>?>('graphqlProfiles');
    this.hostNames = registerOutput<List<WafPolicyHostName>?>('hostNames');
    this.ipExceptions = registerOutput<List<WafPolicyIpException>?>('ipExceptions');
    this.modifications = registerOutput<List<String>?>('modifications');
    this.name = registerOutput<String>('name');
    this.openApiFiles = registerOutput<List<String>?>('openApiFiles');
    this.parameters = registerOutput<List<String>?>('parameters');
    this.partition = registerOutput<String?>('partition');
    this.policyBuilders = registerOutput<List<WafPolicyPolicyBuilder>?>('policyBuilders');
    this.policyExportJson = registerOutput<String>('policyExportJson');
    this.policyId = registerOutput<String>('policyId');
    this.policyImportJson = registerOutput<String?>('policyImportJson');
    this.protocolIndependent = registerOutput<bool?>('protocolIndependent');
    this.serverTechnologies = registerOutput<List<String>?>('serverTechnologies');
    this.signatureSets = registerOutput<List<String>?>('signatureSets');
    this.signatures = registerOutput<List<String>?>('signatures');
    this.signaturesSettings = registerOutput<List<WafPolicySignaturesSetting>?>('signaturesSettings');
    this.templateLink = registerOutput<String?>('templateLink');
    this.templateName = registerOutput<String>('templateName');
    this.type = registerOutput<String?>('type');
    this.urls = registerOutput<List<String>?>('urls');
  }

  /// Gets an existing [WafPolicy] resource's state with the given [name] and [id].
  static WafPolicy get(
    String name,
    pulumi.Input<String> id, {
    WafPolicyState? state,
  }) {
    return WafPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WafPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/wafPolicy:WafPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationLanguage = registerOutput<String?>('applicationLanguage');
    this.caseInsensitive = registerOutput<bool?>('caseInsensitive');
    this.description = registerOutput<String>('description');
    this.enablePassivemode = registerOutput<bool?>('enablePassivemode');
    this.enforcementMode = registerOutput<String?>('enforcementMode');
    this.fileTypes = registerOutput<List<WafPolicyFileType>?>('fileTypes');
    this.graphqlProfiles = registerOutput<List<WafPolicyGraphqlProfile>?>('graphqlProfiles');
    this.hostNames = registerOutput<List<WafPolicyHostName>?>('hostNames');
    this.ipExceptions = registerOutput<List<WafPolicyIpException>?>('ipExceptions');
    this.modifications = registerOutput<List<String>?>('modifications');
    this.name = registerOutput<String>('name');
    this.openApiFiles = registerOutput<List<String>?>('openApiFiles');
    this.parameters = registerOutput<List<String>?>('parameters');
    this.partition = registerOutput<String?>('partition');
    this.policyBuilders = registerOutput<List<WafPolicyPolicyBuilder>?>('policyBuilders');
    this.policyExportJson = registerOutput<String>('policyExportJson');
    this.policyId = registerOutput<String>('policyId');
    this.policyImportJson = registerOutput<String?>('policyImportJson');
    this.protocolIndependent = registerOutput<bool?>('protocolIndependent');
    this.serverTechnologies = registerOutput<List<String>?>('serverTechnologies');
    this.signatureSets = registerOutput<List<String>?>('signatureSets');
    this.signatures = registerOutput<List<String>?>('signatures');
    this.signaturesSettings = registerOutput<List<WafPolicySignaturesSetting>?>('signaturesSettings');
    this.templateLink = registerOutput<String?>('templateLink');
    this.templateName = registerOutput<String>('templateName');
    this.type = registerOutput<String?>('type');
    this.urls = registerOutput<List<String>?>('urls');
  }
}
