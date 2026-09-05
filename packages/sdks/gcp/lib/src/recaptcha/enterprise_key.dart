import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_key_android_settings.dart';
import 'enterprise_key_args.dart';
import 'enterprise_key_ios_settings.dart';
import 'enterprise_key_state.dart';
import 'enterprise_key_testing_options.dart';
import 'enterprise_key_waf_settings.dart';
import 'enterprise_key_web_settings.dart';

/// The RecaptchaEnterprise Key resource
///
/// ## Example Usage
///
/// ### Android_key
/// A basic test of recaptcha enterprise key that can be used by Android apps
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     androidSettings: {
///         allowAllPackageNames: true,
///         allowedPackageNames: [],
///     },
///     project: "my-project-name",
///     testingOptions: {
///         testingScore: 0.8,
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     android_settings={
///         "allow_all_package_names": True,
///         "allowed_package_names": [],
///     },
///     project="my-project-name",
///     testing_options={
///         "testing_score": 0.8,
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         AndroidSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyAndroidSettingsArgs
///         {
///             AllowAllPackageNames = true,
///             AllowedPackageNames = new() { },
///         },
///         Project = "my-project-name",
///         TestingOptions = new Gcp.Recaptcha.Inputs.EnterpriseKeyTestingOptionsArgs
///         {
///             TestingScore = 0.8,
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			AndroidSettings: &recaptcha.EnterpriseKeyAndroidSettingsArgs{
/// 				AllowAllPackageNames: pulumi.Bool(true),
/// 				AllowedPackageNames:  pulumi.StringArray{},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 			TestingOptions: &recaptcha.EnterpriseKeyTestingOptionsArgs{
/// 				TestingScore: pulumi.Float64(0.8),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   android_settings = {
///     allow_all_package_names = true
///     allowed_package_names   = []
///   }
///   project = "my-project-name"
///   testing_options = {
///     testing_score = 0.8
///   }
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyAndroidSettingsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyTestingOptionsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .androidSettings(EnterpriseKeyAndroidSettingsArgs.builder()
///                 .allowAllPackageNames(true)
///                 .allowedPackageNames()
///                 .build())
///             .project("my-project-name")
///             .testingOptions(EnterpriseKeyTestingOptionsArgs.builder()
///                 .testingScore(0.8)
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       androidSettings:
///         allowAllPackageNames: true
///         allowedPackageNames: []
///       project: my-project-name
///       testingOptions:
///         testingScore: 0.8
///       labels:
///         label-one: value-one
/// ```
///
/// ### Ios_key
/// A basic test of recaptcha enterprise key that can be used by iOS apps
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     iosSettings: {
///         allowAllBundleIds: true,
///         allowedBundleIds: [],
///     },
///     project: "my-project-name",
///     testingOptions: {
///         testingScore: 1,
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     ios_settings={
///         "allow_all_bundle_ids": True,
///         "allowed_bundle_ids": [],
///     },
///     project="my-project-name",
///     testing_options={
///         "testing_score": float(1),
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         IosSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyIosSettingsArgs
///         {
///             AllowAllBundleIds = true,
///             AllowedBundleIds = new() { },
///         },
///         Project = "my-project-name",
///         TestingOptions = new Gcp.Recaptcha.Inputs.EnterpriseKeyTestingOptionsArgs
///         {
///             TestingScore = 1.0,
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			IosSettings: &recaptcha.EnterpriseKeyIosSettingsArgs{
/// 				AllowAllBundleIds: pulumi.Bool(true),
/// 				AllowedBundleIds:  pulumi.StringArray{},
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 			TestingOptions: &recaptcha.EnterpriseKeyTestingOptionsArgs{
/// 				TestingScore: pulumi.Float64(1),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   ios_settings = {
///     allow_all_bundle_ids = true
///     allowed_bundle_ids   = []
///   }
///   project = "my-project-name"
///   testing_options = {
///     testing_score = 1
///   }
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyIosSettingsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyTestingOptionsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .iosSettings(EnterpriseKeyIosSettingsArgs.builder()
///                 .allowAllBundleIds(true)
///                 .allowedBundleIds()
///                 .build())
///             .project("my-project-name")
///             .testingOptions(EnterpriseKeyTestingOptionsArgs.builder()
///                 .testingScore(1.0)
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       iosSettings:
///         allowAllBundleIds: true
///         allowedBundleIds: []
///       project: my-project-name
///       testingOptions:
///         testingScore: 1
///       labels:
///         label-one: value-one
/// ```
///
/// ### Minimal_key
/// A minimal test of recaptcha enterprise key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     project: "my-project-name",
///     webSettings: {
///         integrationType: "SCORE",
///         allowAllDomains: true,
///     },
///     labels: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     project="my-project-name",
///     web_settings={
///         "integration_type": "SCORE",
///         "allow_all_domains": True,
///     },
///     labels={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         Project = "my-project-name",
///         WebSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWebSettingsArgs
///         {
///             IntegrationType = "SCORE",
///             AllowAllDomains = true,
///         },
///         Labels = new() { },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			WebSettings: &recaptcha.EnterpriseKeyWebSettingsArgs{
/// 				IntegrationType: pulumi.String("SCORE"),
/// 				AllowAllDomains: pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   project      = "my-project-name"
///   web_settings = {
///     integration_type  = "SCORE"
///     allow_all_domains = true
///   }
///   labels = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .project("my-project-name")
///             .webSettings(EnterpriseKeyWebSettingsArgs.builder()
///                 .integrationType("SCORE")
///                 .allowAllDomains(true)
///                 .build())
///             .labels(Map.ofEntries(
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       project: my-project-name
///       webSettings:
///         integrationType: SCORE
///         allowAllDomains: true
///       labels: {}
/// ```
///
/// ### Waf_key
/// A basic test of recaptcha enterprise key that includes WAF settings
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     project: "my-project-name",
///     testingOptions: {
///         testingChallenge: "NOCAPTCHA",
///         testingScore: 0.5,
///     },
///     wafSettings: {
///         wafFeature: "CHALLENGE_PAGE",
///         wafService: "CA",
///     },
///     webSettings: {
///         integrationType: "INVISIBLE",
///         allowAllDomains: true,
///         allowedDomains: [],
///         challengeSecurityPreference: "USABILITY",
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     project="my-project-name",
///     testing_options={
///         "testing_challenge": "NOCAPTCHA",
///         "testing_score": 0.5,
///     },
///     waf_settings={
///         "waf_feature": "CHALLENGE_PAGE",
///         "waf_service": "CA",
///     },
///     web_settings={
///         "integration_type": "INVISIBLE",
///         "allow_all_domains": True,
///         "allowed_domains": [],
///         "challenge_security_preference": "USABILITY",
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         Project = "my-project-name",
///         TestingOptions = new Gcp.Recaptcha.Inputs.EnterpriseKeyTestingOptionsArgs
///         {
///             TestingChallenge = "NOCAPTCHA",
///             TestingScore = 0.5,
///         },
///         WafSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWafSettingsArgs
///         {
///             WafFeature = "CHALLENGE_PAGE",
///             WafService = "CA",
///         },
///         WebSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWebSettingsArgs
///         {
///             IntegrationType = "INVISIBLE",
///             AllowAllDomains = true,
///             AllowedDomains = new() { },
///             ChallengeSecurityPreference = "USABILITY",
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			TestingOptions: &recaptcha.EnterpriseKeyTestingOptionsArgs{
/// 				TestingChallenge: pulumi.String("NOCAPTCHA"),
/// 				TestingScore:     pulumi.Float64(0.5),
/// 			},
/// 			WafSettings: &recaptcha.EnterpriseKeyWafSettingsArgs{
/// 				WafFeature: pulumi.String("CHALLENGE_PAGE"),
/// 				WafService: pulumi.String("CA"),
/// 			},
/// 			WebSettings: &recaptcha.EnterpriseKeyWebSettingsArgs{
/// 				IntegrationType:             pulumi.String("INVISIBLE"),
/// 				AllowAllDomains:             pulumi.Bool(true),
/// 				AllowedDomains:              pulumi.StringArray{},
/// 				ChallengeSecurityPreference: pulumi.String("USABILITY"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   project      = "my-project-name"
///   testing_options = {
///     testing_challenge = "NOCAPTCHA"
///     testing_score     = 0.5
///   }
///   waf_settings = {
///     waf_feature = "CHALLENGE_PAGE"
///     waf_service = "CA"
///   }
///   web_settings = {
///     integration_type              = "INVISIBLE"
///     allow_all_domains             = true
///     allowed_domains               = []
///     challenge_security_preference = "USABILITY"
///   }
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyTestingOptionsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWafSettingsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .project("my-project-name")
///             .testingOptions(EnterpriseKeyTestingOptionsArgs.builder()
///                 .testingChallenge("NOCAPTCHA")
///                 .testingScore(0.5)
///                 .build())
///             .wafSettings(EnterpriseKeyWafSettingsArgs.builder()
///                 .wafFeature("CHALLENGE_PAGE")
///                 .wafService("CA")
///                 .build())
///             .webSettings(EnterpriseKeyWebSettingsArgs.builder()
///                 .integrationType("INVISIBLE")
///                 .allowAllDomains(true)
///                 .allowedDomains()
///                 .challengeSecurityPreference("USABILITY")
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       project: my-project-name
///       testingOptions:
///         testingChallenge: NOCAPTCHA
///         testingScore: 0.5
///       wafSettings:
///         wafFeature: CHALLENGE_PAGE
///         wafService: CA
///       webSettings:
///         integrationType: INVISIBLE
///         allowAllDomains: true
///         allowedDomains: []
///         challengeSecurityPreference: USABILITY
///       labels:
///         label-one: value-one
/// ```
///
/// ### Web_key
/// A basic test of recaptcha enterprise key that can be used by websites
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     project: "my-project-name",
///     testingOptions: {
///         testingChallenge: "NOCAPTCHA",
///         testingScore: 0.5,
///     },
///     webSettings: {
///         integrationType: "CHECKBOX",
///         allowAllDomains: true,
///         allowedDomains: [],
///         challengeSecurityPreference: "USABILITY",
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     project="my-project-name",
///     testing_options={
///         "testing_challenge": "NOCAPTCHA",
///         "testing_score": 0.5,
///     },
///     web_settings={
///         "integration_type": "CHECKBOX",
///         "allow_all_domains": True,
///         "allowed_domains": [],
///         "challenge_security_preference": "USABILITY",
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         Project = "my-project-name",
///         TestingOptions = new Gcp.Recaptcha.Inputs.EnterpriseKeyTestingOptionsArgs
///         {
///             TestingChallenge = "NOCAPTCHA",
///             TestingScore = 0.5,
///         },
///         WebSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWebSettingsArgs
///         {
///             IntegrationType = "CHECKBOX",
///             AllowAllDomains = true,
///             AllowedDomains = new() { },
///             ChallengeSecurityPreference = "USABILITY",
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			TestingOptions: &recaptcha.EnterpriseKeyTestingOptionsArgs{
/// 				TestingChallenge: pulumi.String("NOCAPTCHA"),
/// 				TestingScore:     pulumi.Float64(0.5),
/// 			},
/// 			WebSettings: &recaptcha.EnterpriseKeyWebSettingsArgs{
/// 				IntegrationType:             pulumi.String("CHECKBOX"),
/// 				AllowAllDomains:             pulumi.Bool(true),
/// 				AllowedDomains:              pulumi.StringArray{},
/// 				ChallengeSecurityPreference: pulumi.String("USABILITY"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   project      = "my-project-name"
///   testing_options = {
///     testing_challenge = "NOCAPTCHA"
///     testing_score     = 0.5
///   }
///   web_settings = {
///     integration_type              = "CHECKBOX"
///     allow_all_domains             = true
///     allowed_domains               = []
///     challenge_security_preference = "USABILITY"
///   }
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyTestingOptionsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .project("my-project-name")
///             .testingOptions(EnterpriseKeyTestingOptionsArgs.builder()
///                 .testingChallenge("NOCAPTCHA")
///                 .testingScore(0.5)
///                 .build())
///             .webSettings(EnterpriseKeyWebSettingsArgs.builder()
///                 .integrationType("CHECKBOX")
///                 .allowAllDomains(true)
///                 .allowedDomains()
///                 .challengeSecurityPreference("USABILITY")
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       project: my-project-name
///       testingOptions:
///         testingChallenge: NOCAPTCHA
///         testingScore: 0.5
///       webSettings:
///         integrationType: CHECKBOX
///         allowAllDomains: true
///         allowedDomains: []
///         challengeSecurityPreference: USABILITY
///       labels:
///         label-one: value-one
/// ```
///
/// ### Web_score_key
/// A basic test of recaptcha enterprise key with score integration type that can be used by websites
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name-one",
///     project: "my-project-name",
///     testingOptions: {
///         testingScore: 0.5,
///     },
///     webSettings: {
///         integrationType: "SCORE",
///         allowAllDomains: true,
///         allowAmpTraffic: false,
///         allowedDomains: [],
///     },
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name-one",
///     project="my-project-name",
///     testing_options={
///         "testing_score": 0.5,
///     },
///     web_settings={
///         "integration_type": "SCORE",
///         "allow_all_domains": True,
///         "allow_amp_traffic": False,
///         "allowed_domains": [],
///     },
///     labels={
///         "label-one": "value-one",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name-one",
///         Project = "my-project-name",
///         TestingOptions = new Gcp.Recaptcha.Inputs.EnterpriseKeyTestingOptionsArgs
///         {
///             TestingScore = 0.5,
///         },
///         WebSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWebSettingsArgs
///         {
///             IntegrationType = "SCORE",
///             AllowAllDomains = true,
///             AllowAmpTraffic = false,
///             AllowedDomains = new() { },
///         },
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name-one"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			TestingOptions: &recaptcha.EnterpriseKeyTestingOptionsArgs{
/// 				TestingScore: pulumi.Float64(0.5),
/// 			},
/// 			WebSettings: &recaptcha.EnterpriseKeyWebSettingsArgs{
/// 				IntegrationType: pulumi.String("SCORE"),
/// 				AllowAllDomains: pulumi.Bool(true),
/// 				AllowAmpTraffic: pulumi.Bool(false),
/// 				AllowedDomains:  pulumi.StringArray{},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name-one"
///   project      = "my-project-name"
///   testing_options = {
///     testing_score = 0.5
///   }
///   web_settings = {
///     integration_type  = "SCORE"
///     allow_all_domains = true
///     allow_amp_traffic = false
///     allowed_domains   = []
///   }
///   labels = {
///     "label-one" = "value-one"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyTestingOptionsArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name-one")
///             .project("my-project-name")
///             .testingOptions(EnterpriseKeyTestingOptionsArgs.builder()
///                 .testingScore(0.5)
///                 .build())
///             .webSettings(EnterpriseKeyWebSettingsArgs.builder()
///                 .integrationType("SCORE")
///                 .allowAllDomains(true)
///                 .allowAmpTraffic(false)
///                 .allowedDomains()
///                 .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name-one
///       project: my-project-name
///       testingOptions:
///         testingScore: 0.5
///       webSettings:
///         integrationType: SCORE
///         allowAllDomains: true
///         allowAmpTraffic: false
///         allowedDomains: []
///       labels:
///         label-one: value-one
/// ```
///
///
/// ## Import
///
/// Key can be imported using any of these accepted formats:
/// * `projects/{{project}}/keys/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Key can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default projects/{{project}}/keys/{{name}}
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{project}}/{{name}}
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{name}}
/// ```
class EnterpriseKey extends pulumi.CustomResource {
  /// Settings for keys that can be used by Android apps.
  late final pulumi.Output<EnterpriseKeyAndroidSettings?> androidSettings;
  /// The timestamp corresponding to the creation of this Key.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human-readable display name of this key. Modifiable by user.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Settings for keys that can be used by iOS apps.
  late final pulumi.Output<EnterpriseKeyIosSettings?> iosSettings;
  /// See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource id for the Key, which is the same as the Site Key itself.
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Options for user acceptance testing.
  late final pulumi.Output<EnterpriseKeyTestingOptions?> testingOptions;
  /// Settings specific to keys that can be used for WAF (Web Application Firewall).
  late final pulumi.Output<EnterpriseKeyWafSettings?> wafSettings;
  /// Settings for keys that can be used by websites.
  late final pulumi.Output<EnterpriseKeyWebSettings?> webSettings;

  /// Creates a new [EnterpriseKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseKey]. {@macro pulumi_recaptcha_enterprise_key_enterprise_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseKey(
    String name, {
    EnterpriseKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:recaptcha/enterpriseKey:EnterpriseKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    androidSettings = registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyAndroidSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyIosSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    testingOptions = registerOutput<EnterpriseKeyTestingOptions?>('testingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyTestingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWafSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWebSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EnterpriseKey] resource's state with the given [name] and [id].
  static EnterpriseKey get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnterpriseKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnterpriseKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:recaptcha/enterpriseKey:EnterpriseKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    androidSettings = registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyAndroidSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyIosSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    testingOptions = registerOutput<EnterpriseKeyTestingOptions?>('testingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyTestingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWafSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWebSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EnterpriseKey] resource.
  EnterpriseKey.reference(String urn)
    : super(
        'gcp:recaptcha/enterpriseKey:EnterpriseKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    androidSettings = registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyAndroidSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyIosSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    testingOptions = registerOutput<EnterpriseKeyTestingOptions?>('testingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyTestingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWafSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKeyWebSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
