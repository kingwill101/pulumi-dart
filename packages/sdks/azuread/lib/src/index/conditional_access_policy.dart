import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_args.dart';
import 'conditional_access_policy_conditions.dart';
import 'conditional_access_policy_grant_controls.dart';
import 'conditional_access_policy_session_controls.dart';
import 'conditional_access_policy_state.dart';

/// Manages a Conditional Access Policy within Azure Active Directory.
///
/// &gt; **Licensing Requirements** Specifying `client_applications` property requires the activation of Microsoft Entra on your tenant and the availability of sufficient Workload Identities Premium licences (one per service principal managed by a conditional access).
///
/// &gt; **API Limits** This resource is subject to a restrictive API request limit of 1 request/second. Whilst Terraform will automatically back-off and retry throttled requests, if you have a large number of resource changes to make, you may wish to reduce parallelism or specify extended custom resource timeouts.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.ReadWrite.ConditionalAccess` and `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Conditional Access Administrator` or `Global Administrator`
///
/// ## Example Usage
///
/// ### All users except guests or external users
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.ConditionalAccessPolicy("example", {
///     displayName: "example policy",
///     state: "disabled",
///     conditions: {
///         clientAppTypes: ["all"],
///         signInRiskLevels: ["medium"],
///         userRiskLevels: ["medium"],
///         applications: {
///             includedApplications: ["All"],
///             excludedApplications: [],
///         },
///         devices: {
///             filter: {
///                 mode: "exclude",
///                 rule: "device.operatingSystem eq \"Doors\"",
///             },
///         },
///         locations: {
///             includedLocations: ["All"],
///             excludedLocations: ["AllTrusted"],
///         },
///         platforms: {
///             includedPlatforms: ["android"],
///             excludedPlatforms: ["iOS"],
///         },
///         users: {
///             includedUsers: ["All"],
///             excludedUsers: ["GuestsOrExternalUsers"],
///         },
///     },
///     grantControls: {
///         operator: "OR",
///         builtInControls: ["mfa"],
///     },
///     sessionControls: {
///         applicationEnforcedRestrictionsEnabled: true,
///         disableResilienceDefaults: false,
///         signInFrequency: 10,
///         signInFrequencyPeriod: "hours",
///         cloudAppSecurityPolicy: "monitorOnly",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.ConditionalAccessPolicy("example",
///     display_name="example policy",
///     state="disabled",
///     conditions={
///         "client_app_types": ["all"],
///         "sign_in_risk_levels": ["medium"],
///         "user_risk_levels": ["medium"],
///         "applications": {
///             "included_applications": ["All"],
///             "excluded_applications": [],
///         },
///         "devices": {
///             "filter": {
///                 "mode": "exclude",
///                 "rule": "device.operatingSystem eq \"Doors\"",
///             },
///         },
///         "locations": {
///             "included_locations": ["All"],
///             "excluded_locations": ["AllTrusted"],
///         },
///         "platforms": {
///             "included_platforms": ["android"],
///             "excluded_platforms": ["iOS"],
///         },
///         "users": {
///             "included_users": ["All"],
///             "excluded_users": ["GuestsOrExternalUsers"],
///         },
///     },
///     grant_controls={
///         "operator": "OR",
///         "built_in_controls": ["mfa"],
///     },
///     session_controls={
///         "application_enforced_restrictions_enabled": True,
///         "disable_resilience_defaults": False,
///         "sign_in_frequency": 10,
///         "sign_in_frequency_period": "hours",
///         "cloud_app_security_policy": "monitorOnly",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.ConditionalAccessPolicy("example", new()
///     {
///         DisplayName = "example policy",
///         State = "disabled",
///         Conditions = new AzureAD.Inputs.ConditionalAccessPolicyConditionsArgs
///         {
///             ClientAppTypes = new[]
///             {
///                 "all",
///             },
///             SignInRiskLevels = new[]
///             {
///                 "medium",
///             },
///             UserRiskLevels = new[]
///             {
///                 "medium",
///             },
///             Applications = new AzureAD.Inputs.ConditionalAccessPolicyConditionsApplicationsArgs
///             {
///                 IncludedApplications = new[]
///                 {
///                     "All",
///                 },
///                 ExcludedApplications = new() { },
///             },
///             Devices = new AzureAD.Inputs.ConditionalAccessPolicyConditionsDevicesArgs
///             {
///                 Filter = new AzureAD.Inputs.ConditionalAccessPolicyConditionsDevicesFilterArgs
///                 {
///                     Mode = "exclude",
///                     Rule = "device.operatingSystem eq \"Doors\"",
///                 },
///             },
///             Locations = new AzureAD.Inputs.ConditionalAccessPolicyConditionsLocationsArgs
///             {
///                 IncludedLocations = new[]
///                 {
///                     "All",
///                 },
///                 ExcludedLocations = new[]
///                 {
///                     "AllTrusted",
///                 },
///             },
///             Platforms = new AzureAD.Inputs.ConditionalAccessPolicyConditionsPlatformsArgs
///             {
///                 IncludedPlatforms = new[]
///                 {
///                     "android",
///                 },
///                 ExcludedPlatforms = new[]
///                 {
///                     "iOS",
///                 },
///             },
///             Users = new AzureAD.Inputs.ConditionalAccessPolicyConditionsUsersArgs
///             {
///                 IncludedUsers = new[]
///                 {
///                     "All",
///                 },
///                 ExcludedUsers = new[]
///                 {
///                     "GuestsOrExternalUsers",
///                 },
///             },
///         },
///         GrantControls = new AzureAD.Inputs.ConditionalAccessPolicyGrantControlsArgs
///         {
///             Operator = "OR",
///             BuiltInControls = new[]
///             {
///                 "mfa",
///             },
///         },
///         SessionControls = new AzureAD.Inputs.ConditionalAccessPolicySessionControlsArgs
///         {
///             ApplicationEnforcedRestrictionsEnabled = true,
///             DisableResilienceDefaults = false,
///             SignInFrequency = 10,
///             SignInFrequencyPeriod = "hours",
///             CloudAppSecurityPolicy = "monitorOnly",
///         },
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
/// 		_, err := azuread.NewConditionalAccessPolicy(ctx, "example", &azuread.ConditionalAccessPolicyArgs{
/// 			DisplayName: pulumi.String("example policy"),
/// 			State:       pulumi.String("disabled"),
/// 			Conditions: &azuread.ConditionalAccessPolicyConditionsArgs{
/// 				ClientAppTypes: pulumi.StringArray{
/// 					pulumi.String("all"),
/// 				},
/// 				SignInRiskLevels: pulumi.StringArray{
/// 					pulumi.String("medium"),
/// 				},
/// 				UserRiskLevels: pulumi.StringArray{
/// 					pulumi.String("medium"),
/// 				},
/// 				Applications: &azuread.ConditionalAccessPolicyConditionsApplicationsArgs{
/// 					IncludedApplications: pulumi.StringArray{
/// 						pulumi.String("All"),
/// 					},
/// 					ExcludedApplications: pulumi.StringArray{},
/// 				},
/// 				Devices: &azuread.ConditionalAccessPolicyConditionsDevicesArgs{
/// 					Filter: &azuread.ConditionalAccessPolicyConditionsDevicesFilterArgs{
/// 						Mode: pulumi.String("exclude"),
/// 						Rule: pulumi.String("device.operatingSystem eq \"Doors\""),
/// 					},
/// 				},
/// 				Locations: &azuread.ConditionalAccessPolicyConditionsLocationsArgs{
/// 					IncludedLocations: pulumi.StringArray{
/// 						pulumi.String("All"),
/// 					},
/// 					ExcludedLocations: pulumi.StringArray{
/// 						pulumi.String("AllTrusted"),
/// 					},
/// 				},
/// 				Platforms: &azuread.ConditionalAccessPolicyConditionsPlatformsArgs{
/// 					IncludedPlatforms: pulumi.StringArray{
/// 						pulumi.String("android"),
/// 					},
/// 					ExcludedPlatforms: pulumi.StringArray{
/// 						pulumi.String("iOS"),
/// 					},
/// 				},
/// 				Users: &azuread.ConditionalAccessPolicyConditionsUsersArgs{
/// 					IncludedUsers: pulumi.StringArray{
/// 						pulumi.String("All"),
/// 					},
/// 					ExcludedUsers: pulumi.StringArray{
/// 						pulumi.String("GuestsOrExternalUsers"),
/// 					},
/// 				},
/// 			},
/// 			GrantControls: &azuread.ConditionalAccessPolicyGrantControlsArgs{
/// 				Operator: pulumi.String("OR"),
/// 				BuiltInControls: pulumi.StringArray{
/// 					pulumi.String("mfa"),
/// 				},
/// 			},
/// 			SessionControls: &azuread.ConditionalAccessPolicySessionControlsArgs{
/// 				ApplicationEnforcedRestrictionsEnabled: pulumi.Bool(true),
/// 				DisableResilienceDefaults:              pulumi.Bool(false),
/// 				SignInFrequency:                        pulumi.Int(10),
/// 				SignInFrequencyPeriod:                  pulumi.String("hours"),
/// 				CloudAppSecurityPolicy:                 pulumi.String("monitorOnly"),
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
/// import com.pulumi.azuread.ConditionalAccessPolicy;
/// import com.pulumi.azuread.ConditionalAccessPolicyArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsApplicationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsDevicesArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsDevicesFilterArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsLocationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsPlatformsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsUsersArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyGrantControlsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicySessionControlsArgs;
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
///         var example = new ConditionalAccessPolicy("example", ConditionalAccessPolicyArgs.builder()
///             .displayName("example policy")
///             .state("disabled")
///             .conditions(ConditionalAccessPolicyConditionsArgs.builder()
///                 .clientAppTypes("all")
///                 .signInRiskLevels("medium")
///                 .userRiskLevels("medium")
///                 .applications(ConditionalAccessPolicyConditionsApplicationsArgs.builder()
///                     .includedApplications("All")
///                     .excludedApplications()
///                     .build())
///                 .devices(ConditionalAccessPolicyConditionsDevicesArgs.builder()
///                     .filter(ConditionalAccessPolicyConditionsDevicesFilterArgs.builder()
///                         .mode("exclude")
///                         .rule("device.operatingSystem eq \"Doors\"")
///                         .build())
///                     .build())
///                 .locations(ConditionalAccessPolicyConditionsLocationsArgs.builder()
///                     .includedLocations("All")
///                     .excludedLocations("AllTrusted")
///                     .build())
///                 .platforms(ConditionalAccessPolicyConditionsPlatformsArgs.builder()
///                     .includedPlatforms("android")
///                     .excludedPlatforms("iOS")
///                     .build())
///                 .users(ConditionalAccessPolicyConditionsUsersArgs.builder()
///                     .includedUsers("All")
///                     .excludedUsers("GuestsOrExternalUsers")
///                     .build())
///                 .build())
///             .grantControls(ConditionalAccessPolicyGrantControlsArgs.builder()
///                 .operator("OR")
///                 .builtInControls("mfa")
///                 .build())
///             .sessionControls(ConditionalAccessPolicySessionControlsArgs.builder()
///                 .applicationEnforcedRestrictionsEnabled(true)
///                 .disableResilienceDefaults(false)
///                 .signInFrequency(10)
///                 .signInFrequencyPeriod("hours")
///                 .cloudAppSecurityPolicy("monitorOnly")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ConditionalAccessPolicy
///     properties:
///       displayName: example policy
///       state: disabled
///       conditions:
///         clientAppTypes:
///           - all
///         signInRiskLevels:
///           - medium
///         userRiskLevels:
///           - medium
///         applications:
///           includedApplications:
///             - All
///           excludedApplications: []
///         devices:
///           filter:
///             mode: exclude
///             rule: device.operatingSystem eq "Doors"
///         locations:
///           includedLocations:
///             - All
///           excludedLocations:
///             - AllTrusted
///         platforms:
///           includedPlatforms:
///             - android
///           excludedPlatforms:
///             - iOS
///         users:
///           includedUsers:
///             - All
///           excludedUsers:
///             - GuestsOrExternalUsers
///       grantControls:
///         operator: OR
///         builtInControls:
///           - mfa
///       sessionControls:
///         applicationEnforcedRestrictionsEnabled: true
///         disableResilienceDefaults: false
///         signInFrequency: 10
///         signInFrequencyPeriod: hours
///         cloudAppSecurityPolicy: monitorOnly
/// ```
///
///
/// ### Included client applications / service principals
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.ConditionalAccessPolicy("example", {
///     displayName: "example policy",
///     state: "disabled",
///     conditions: {
///         clientAppTypes: ["all"],
///         applications: {
///             includedApplications: ["All"],
///         },
///         clientApplications: {
///             includedServicePrincipals: [current.then(current => current.objectId)],
///             excludedServicePrincipals: [],
///         },
///         users: {
///             includedUsers: ["None"],
///         },
///     },
///     grantControls: {
///         operator: "OR",
///         builtInControls: ["block"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.ConditionalAccessPolicy("example",
///     display_name="example policy",
///     state="disabled",
///     conditions={
///         "client_app_types": ["all"],
///         "applications": {
///             "included_applications": ["All"],
///         },
///         "client_applications": {
///             "included_service_principals": [current.object_id],
///             "excluded_service_principals": [],
///         },
///         "users": {
///             "included_users": ["None"],
///         },
///     },
///     grant_controls={
///         "operator": "OR",
///         "built_in_controls": ["block"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.ConditionalAccessPolicy("example", new()
///     {
///         DisplayName = "example policy",
///         State = "disabled",
///         Conditions = new AzureAD.Inputs.ConditionalAccessPolicyConditionsArgs
///         {
///             ClientAppTypes = new[]
///             {
///                 "all",
///             },
///             Applications = new AzureAD.Inputs.ConditionalAccessPolicyConditionsApplicationsArgs
///             {
///                 IncludedApplications = new[]
///                 {
///                     "All",
///                 },
///             },
///             ClientApplications = new AzureAD.Inputs.ConditionalAccessPolicyConditionsClientApplicationsArgs
///             {
///                 IncludedServicePrincipals = new[]
///                 {
///                     current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 },
///                 ExcludedServicePrincipals = new() { },
///             },
///             Users = new AzureAD.Inputs.ConditionalAccessPolicyConditionsUsersArgs
///             {
///                 IncludedUsers = new[]
///                 {
///                     "None",
///                 },
///             },
///         },
///         GrantControls = new AzureAD.Inputs.ConditionalAccessPolicyGrantControlsArgs
///         {
///             Operator = "OR",
///             BuiltInControls = new[]
///             {
///                 "block",
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
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewConditionalAccessPolicy(ctx, "example", &azuread.ConditionalAccessPolicyArgs{
/// 			DisplayName: pulumi.String("example policy"),
/// 			State:       pulumi.String("disabled"),
/// 			Conditions: &azuread.ConditionalAccessPolicyConditionsArgs{
/// 				ClientAppTypes: pulumi.StringArray{
/// 					pulumi.String("all"),
/// 				},
/// 				Applications: &azuread.ConditionalAccessPolicyConditionsApplicationsArgs{
/// 					IncludedApplications: pulumi.StringArray{
/// 						pulumi.String("All"),
/// 					},
/// 				},
/// 				ClientApplications: &azuread.ConditionalAccessPolicyConditionsClientApplicationsArgs{
/// 					IncludedServicePrincipals: pulumi.StringArray{
/// 						pulumi.String(current.ObjectId),
/// 					},
/// 					ExcludedServicePrincipals: pulumi.StringArray{},
/// 				},
/// 				Users: &azuread.ConditionalAccessPolicyConditionsUsersArgs{
/// 					IncludedUsers: pulumi.StringArray{
/// 						pulumi.String("None"),
/// 					},
/// 				},
/// 			},
/// 			GrantControls: &azuread.ConditionalAccessPolicyGrantControlsArgs{
/// 				Operator: pulumi.String("OR"),
/// 				BuiltInControls: pulumi.StringArray{
/// 					pulumi.String("block"),
/// 				},
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.ConditionalAccessPolicy;
/// import com.pulumi.azuread.ConditionalAccessPolicyArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsApplicationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsClientApplicationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsUsersArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyGrantControlsArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ConditionalAccessPolicy("example", ConditionalAccessPolicyArgs.builder()
///             .displayName("example policy")
///             .state("disabled")
///             .conditions(ConditionalAccessPolicyConditionsArgs.builder()
///                 .clientAppTypes("all")
///                 .applications(ConditionalAccessPolicyConditionsApplicationsArgs.builder()
///                     .includedApplications("All")
///                     .build())
///                 .clientApplications(ConditionalAccessPolicyConditionsClientApplicationsArgs.builder()
///                     .includedServicePrincipals(current.objectId())
///                     .excludedServicePrincipals()
///                     .build())
///                 .users(ConditionalAccessPolicyConditionsUsersArgs.builder()
///                     .includedUsers("None")
///                     .build())
///                 .build())
///             .grantControls(ConditionalAccessPolicyGrantControlsArgs.builder()
///                 .operator("OR")
///                 .builtInControls("block")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ConditionalAccessPolicy
///     properties:
///       displayName: example policy
///       state: disabled
///       conditions:
///         clientAppTypes:
///           - all
///         applications:
///           includedApplications:
///             - All
///         clientApplications:
///           includedServicePrincipals:
///             - ${current.objectId}
///           excludedServicePrincipals: []
///         users:
///           includedUsers:
///             - None
///       grantControls:
///         operator: OR
///         builtInControls:
///           - block
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// ### Excluded client applications / service principals
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.ConditionalAccessPolicy("example", {
///     displayName: "example policy",
///     state: "disabled",
///     conditions: {
///         clientAppTypes: ["all"],
///         applications: {
///             includedApplications: ["All"],
///         },
///         clientApplications: {
///             includedServicePrincipals: ["ServicePrincipalsInMyTenant"],
///             excludedServicePrincipals: [current.then(current => current.objectId)],
///         },
///         users: {
///             includedUsers: ["None"],
///         },
///     },
///     grantControls: {
///         operator: "OR",
///         builtInControls: ["block"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.ConditionalAccessPolicy("example",
///     display_name="example policy",
///     state="disabled",
///     conditions={
///         "client_app_types": ["all"],
///         "applications": {
///             "included_applications": ["All"],
///         },
///         "client_applications": {
///             "included_service_principals": ["ServicePrincipalsInMyTenant"],
///             "excluded_service_principals": [current.object_id],
///         },
///         "users": {
///             "included_users": ["None"],
///         },
///     },
///     grant_controls={
///         "operator": "OR",
///         "built_in_controls": ["block"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.ConditionalAccessPolicy("example", new()
///     {
///         DisplayName = "example policy",
///         State = "disabled",
///         Conditions = new AzureAD.Inputs.ConditionalAccessPolicyConditionsArgs
///         {
///             ClientAppTypes = new[]
///             {
///                 "all",
///             },
///             Applications = new AzureAD.Inputs.ConditionalAccessPolicyConditionsApplicationsArgs
///             {
///                 IncludedApplications = new[]
///                 {
///                     "All",
///                 },
///             },
///             ClientApplications = new AzureAD.Inputs.ConditionalAccessPolicyConditionsClientApplicationsArgs
///             {
///                 IncludedServicePrincipals = new[]
///                 {
///                     "ServicePrincipalsInMyTenant",
///                 },
///                 ExcludedServicePrincipals = new[]
///                 {
///                     current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 },
///             },
///             Users = new AzureAD.Inputs.ConditionalAccessPolicyConditionsUsersArgs
///             {
///                 IncludedUsers = new[]
///                 {
///                     "None",
///                 },
///             },
///         },
///         GrantControls = new AzureAD.Inputs.ConditionalAccessPolicyGrantControlsArgs
///         {
///             Operator = "OR",
///             BuiltInControls = new[]
///             {
///                 "block",
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
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewConditionalAccessPolicy(ctx, "example", &azuread.ConditionalAccessPolicyArgs{
/// 			DisplayName: pulumi.String("example policy"),
/// 			State:       pulumi.String("disabled"),
/// 			Conditions: &azuread.ConditionalAccessPolicyConditionsArgs{
/// 				ClientAppTypes: pulumi.StringArray{
/// 					pulumi.String("all"),
/// 				},
/// 				Applications: &azuread.ConditionalAccessPolicyConditionsApplicationsArgs{
/// 					IncludedApplications: pulumi.StringArray{
/// 						pulumi.String("All"),
/// 					},
/// 				},
/// 				ClientApplications: &azuread.ConditionalAccessPolicyConditionsClientApplicationsArgs{
/// 					IncludedServicePrincipals: pulumi.StringArray{
/// 						pulumi.String("ServicePrincipalsInMyTenant"),
/// 					},
/// 					ExcludedServicePrincipals: pulumi.StringArray{
/// 						pulumi.String(current.ObjectId),
/// 					},
/// 				},
/// 				Users: &azuread.ConditionalAccessPolicyConditionsUsersArgs{
/// 					IncludedUsers: pulumi.StringArray{
/// 						pulumi.String("None"),
/// 					},
/// 				},
/// 			},
/// 			GrantControls: &azuread.ConditionalAccessPolicyGrantControlsArgs{
/// 				Operator: pulumi.String("OR"),
/// 				BuiltInControls: pulumi.StringArray{
/// 					pulumi.String("block"),
/// 				},
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.ConditionalAccessPolicy;
/// import com.pulumi.azuread.ConditionalAccessPolicyArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsApplicationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsClientApplicationsArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyConditionsUsersArgs;
/// import com.pulumi.azuread.inputs.ConditionalAccessPolicyGrantControlsArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ConditionalAccessPolicy("example", ConditionalAccessPolicyArgs.builder()
///             .displayName("example policy")
///             .state("disabled")
///             .conditions(ConditionalAccessPolicyConditionsArgs.builder()
///                 .clientAppTypes("all")
///                 .applications(ConditionalAccessPolicyConditionsApplicationsArgs.builder()
///                     .includedApplications("All")
///                     .build())
///                 .clientApplications(ConditionalAccessPolicyConditionsClientApplicationsArgs.builder()
///                     .includedServicePrincipals("ServicePrincipalsInMyTenant")
///                     .excludedServicePrincipals(current.objectId())
///                     .build())
///                 .users(ConditionalAccessPolicyConditionsUsersArgs.builder()
///                     .includedUsers("None")
///                     .build())
///                 .build())
///             .grantControls(ConditionalAccessPolicyGrantControlsArgs.builder()
///                 .operator("OR")
///                 .builtInControls("block")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:ConditionalAccessPolicy
///     properties:
///       displayName: example policy
///       state: disabled
///       conditions:
///         clientAppTypes:
///           - all
///         applications:
///           includedApplications:
///             - All
///         clientApplications:
///           includedServicePrincipals:
///             - ServicePrincipalsInMyTenant
///           excludedServicePrincipals:
///             - ${current.objectId}
///         users:
///           includedUsers:
///             - None
///       grantControls:
///         operator: OR
///         builtInControls:
///           - block
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Conditional Access Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/conditionalAccessPolicy:ConditionalAccessPolicy my_location /identity/conditionalAccess/policies/00000000-0000-0000-0000-000000000000
/// ```
class ConditionalAccessPolicy extends pulumi.CustomResource {
  /// A `conditions` block as documented below, which specifies the rules that must be met for the policy to apply.
  late final pulumi.Output<ConditionalAccessPolicyConditions> conditions;

  /// The friendly name for this Conditional Access Policy.
  late final pulumi.Output<String> displayName;

  /// A `grant_controls` block as documented below, which specifies the grant controls that must be fulfilled to pass the policy.
  late final pulumi.Output<ConditionalAccessPolicyGrantControls?> grantControls;

  /// The object ID of the policy
  late final pulumi.Output<String> objectId;

  /// A `session_controls` block as documented below, which specifies the session controls that are enforced after sign-in.
  ///
  /// &gt; Note: At least one of `grant_controls` and/or `session_controls` blocks must be specified.
  late final pulumi.Output<ConditionalAccessPolicySessionControls?>
  sessionControls;

  /// Specifies the state of the policy object. Possible values are: `enabled`, `disabled` and `enabledForReportingButNotEnforced`
  late final pulumi.Output<String> state;

  /// Creates a new [ConditionalAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConditionalAccessPolicy]. {@macro pulumi_index_conditional_access_policy_conditional_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConditionalAccessPolicy(
    String name, {
    ConditionalAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/conditionalAccessPolicy:ConditionalAccessPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    conditions = registerOutput<ConditionalAccessPolicyConditions>(
      'conditions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicyConditions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    displayName = registerOutput<String>('displayName');
    grantControls = registerOutput<ConditionalAccessPolicyGrantControls?>(
      'grantControls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicyGrantControls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    objectId = registerOutput<String>('objectId');
    sessionControls = registerOutput<ConditionalAccessPolicySessionControls?>(
      'sessionControls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicySessionControls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    state = registerOutput<String>('state');
  }

  /// Gets an existing [ConditionalAccessPolicy] resource's state with the given [name] and [id].
  static ConditionalAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    ConditionalAccessPolicyState? state,
  }) {
    return ConditionalAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConditionalAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/conditionalAccessPolicy:ConditionalAccessPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    conditions = registerOutput<ConditionalAccessPolicyConditions>(
      'conditions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicyConditions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    displayName = registerOutput<String>('displayName');
    grantControls = registerOutput<ConditionalAccessPolicyGrantControls?>(
      'grantControls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicyGrantControls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    objectId = registerOutput<String>('objectId');
    sessionControls = registerOutput<ConditionalAccessPolicySessionControls?>(
      'sessionControls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConditionalAccessPolicySessionControls.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.state = registerOutput<String>('state');
  }
}
