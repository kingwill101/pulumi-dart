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
///         "testing_score": 1,
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
///             TestingScore = 1,
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
///         Labels = null,
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
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
///
/// * `projects/{{project}}/keys/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Key can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default projects/{{project}}/keys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:recaptcha/enterpriseKey:EnterpriseKey default {{name}}
/// ```
class EnterpriseKey extends pulumi.CustomResource {
  /// Settings for keys that can be used by Android apps.
  late final pulumi.Output<EnterpriseKeyAndroidSettings?> androidSettings;
  /// The timestamp corresponding to the creation of this Key.
  late final pulumi.Output<String> createTime;
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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.androidSettings = registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.testingOptions = registerOutput<EnterpriseKeyTestingOptions?>('testingOptions');
    this.wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings');
    this.webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings');
  }

  /// Gets an existing [EnterpriseKey] resource's state with the given [name] and [id].
  static EnterpriseKey get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseKeyState? state,
  }) {
    return EnterpriseKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.androidSettings = registerOutput<EnterpriseKeyAndroidSettings?>('androidSettings');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.iosSettings = registerOutput<EnterpriseKeyIosSettings?>('iosSettings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.testingOptions = registerOutput<EnterpriseKeyTestingOptions?>('testingOptions');
    this.wafSettings = registerOutput<EnterpriseKeyWafSettings?>('wafSettings');
    this.webSettings = registerOutput<EnterpriseKeyWebSettings?>('webSettings');
  }
}
