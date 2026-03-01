import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_args.dart';
import 'workload_compliance_status.dart';
import 'workload_ekm_provisioning_response.dart';
import 'workload_kms_settings.dart';
import 'workload_partner_permissions.dart';
import 'workload_resource.dart';
import 'workload_resource_setting.dart';
import 'workload_saa_enrollment_response.dart';
import 'workload_state.dart';
import 'workload_workload_options.dart';

/// The AssuredWorkloads Workload resource
///
/// ## Example Usage
///
/// ### Basic_workload
/// A basic test of a assuredworkloads api
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.assuredworkloads.Workload("primary", {
///     complianceRegime: "FEDRAMP_MODERATE",
///     displayName: "{{display}}",
///     location: "us-west1",
///     organization: "123456789",
///     billingAccount: "billingAccounts/000000-0000000-0000000-000000",
///     kmsSettings: {
///         nextRotationTime: "9999-10-02T15:01:23Z",
///         rotationPeriod: "10368000s",
///     },
///     provisionedResourcesParent: "folders/519620126891",
///     resourceSettings: [
///         {
///             displayName: "{{name}}",
///             resourceType: "CONSUMER_FOLDER",
///         },
///         {
///             resourceType: "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             resourceId: "ring",
///             resourceType: "KEYRING",
///         },
///     ],
///     violationNotificationsEnabled: true,
///     workloadOptions: {
///         kajEnrollmentType: "KEY_ACCESS_TRANSPARENCY_OFF",
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
/// primary = gcp.assuredworkloads.Workload("primary",
///     compliance_regime="FEDRAMP_MODERATE",
///     display_name="{{display}}",
///     location="us-west1",
///     organization="123456789",
///     billing_account="billingAccounts/000000-0000000-0000000-000000",
///     kms_settings={
///         "next_rotation_time": "9999-10-02T15:01:23Z",
///         "rotation_period": "10368000s",
///     },
///     provisioned_resources_parent="folders/519620126891",
///     resource_settings=[
///         {
///             "display_name": "{{name}}",
///             "resource_type": "CONSUMER_FOLDER",
///         },
///         {
///             "resource_type": "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             "resource_id": "ring",
///             "resource_type": "KEYRING",
///         },
///     ],
///     violation_notifications_enabled=True,
///     workload_options={
///         "kaj_enrollment_type": "KEY_ACCESS_TRANSPARENCY_OFF",
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
///     var primary = new Gcp.AssuredWorkloads.Workload("primary", new()
///     {
///         ComplianceRegime = "FEDRAMP_MODERATE",
///         DisplayName = "{{display}}",
///         Location = "us-west1",
///         Organization = "123456789",
///         BillingAccount = "billingAccounts/000000-0000000-0000000-000000",
///         KmsSettings = new Gcp.AssuredWorkloads.Inputs.WorkloadKmsSettingsArgs
///         {
///             NextRotationTime = "9999-10-02T15:01:23Z",
///             RotationPeriod = "10368000s",
///         },
///         ProvisionedResourcesParent = "folders/519620126891",
///         ResourceSettings = new[]
///         {
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 DisplayName = "{{name}}",
///                 ResourceType = "CONSUMER_FOLDER",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceType = "ENCRYPTION_KEYS_PROJECT",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceId = "ring",
///                 ResourceType = "KEYRING",
///             },
///         },
///         ViolationNotificationsEnabled = true,
///         WorkloadOptions = new Gcp.AssuredWorkloads.Inputs.WorkloadWorkloadOptionsArgs
///         {
///             KajEnrollmentType = "KEY_ACCESS_TRANSPARENCY_OFF",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/assuredworkloads"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := assuredworkloads.NewWorkload(ctx, "primary", &assuredworkloads.WorkloadArgs{
/// 			ComplianceRegime: pulumi.String("FEDRAMP_MODERATE"),
/// 			DisplayName:      pulumi.String("{{display}}"),
/// 			Location:         pulumi.String("us-west1"),
/// 			Organization:     pulumi.String("123456789"),
/// 			BillingAccount:   pulumi.String("billingAccounts/000000-0000000-0000000-000000"),
/// 			KmsSettings: &assuredworkloads.WorkloadKmsSettingsArgs{
/// 				NextRotationTime: pulumi.String("9999-10-02T15:01:23Z"),
/// 				RotationPeriod:   pulumi.String("10368000s"),
/// 			},
/// 			ProvisionedResourcesParent: pulumi.String("folders/519620126891"),
/// 			ResourceSettings: assuredworkloads.WorkloadResourceSettingArray{
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					DisplayName:  pulumi.String("{{name}}"),
/// 					ResourceType: pulumi.String("CONSUMER_FOLDER"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceType: pulumi.String("ENCRYPTION_KEYS_PROJECT"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceId:   pulumi.String("ring"),
/// 					ResourceType: pulumi.String("KEYRING"),
/// 				},
/// 			},
/// 			ViolationNotificationsEnabled: pulumi.Bool(true),
/// 			WorkloadOptions: &assuredworkloads.WorkloadWorkloadOptionsArgs{
/// 				KajEnrollmentType: pulumi.String("KEY_ACCESS_TRANSPARENCY_OFF"),
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
/// import com.pulumi.gcp.assuredworkloads.Workload;
/// import com.pulumi.gcp.assuredworkloads.WorkloadArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadKmsSettingsArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadResourceSettingArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadWorkloadOptionsArgs;
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
///         var primary = new Workload("primary", WorkloadArgs.builder()
///             .complianceRegime("FEDRAMP_MODERATE")
///             .displayName("{{display}}")
///             .location("us-west1")
///             .organization("123456789")
///             .billingAccount("billingAccounts/000000-0000000-0000000-000000")
///             .kmsSettings(WorkloadKmsSettingsArgs.builder()
///                 .nextRotationTime("9999-10-02T15:01:23Z")
///                 .rotationPeriod("10368000s")
///                 .build())
///             .provisionedResourcesParent("folders/519620126891")
///             .resourceSettings(
///                 WorkloadResourceSettingArgs.builder()
///                     .displayName("{{name}}")
///                     .resourceType("CONSUMER_FOLDER")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceType("ENCRYPTION_KEYS_PROJECT")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceId("ring")
///                     .resourceType("KEYRING")
///                     .build())
///             .violationNotificationsEnabled(true)
///             .workloadOptions(WorkloadWorkloadOptionsArgs.builder()
///                 .kajEnrollmentType("KEY_ACCESS_TRANSPARENCY_OFF")
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
///     type: gcp:assuredworkloads:Workload
///     properties:
///       complianceRegime: FEDRAMP_MODERATE
///       displayName: '{{display}}'
///       location: us-west1
///       organization: '123456789'
///       billingAccount: billingAccounts/000000-0000000-0000000-000000
///       kmsSettings:
///         nextRotationTime: 9999-10-02T15:01:23Z
///         rotationPeriod: 10368000s
///       provisionedResourcesParent: folders/519620126891
///       resourceSettings:
///         - displayName: '{{name}}'
///           resourceType: CONSUMER_FOLDER
///         - resourceType: ENCRYPTION_KEYS_PROJECT
///         - resourceId: ring
///           resourceType: KEYRING
///       violationNotificationsEnabled: true
///       workloadOptions:
///         kajEnrollmentType: KEY_ACCESS_TRANSPARENCY_OFF
///       labels:
///         label-one: value-one
/// ```
///
/// ### Sovereign_controls_workload
/// A Sovereign Controls test of the assuredworkloads api
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.assuredworkloads.Workload("primary", {
///     complianceRegime: "EU_REGIONS_AND_SUPPORT",
///     displayName: "display",
///     location: "europe-west9",
///     organization: "123456789",
///     billingAccount: "billingAccounts/000000-0000000-0000000-000000",
///     enableSovereignControls: true,
///     kmsSettings: {
///         nextRotationTime: "9999-10-02T15:01:23Z",
///         rotationPeriod: "10368000s",
///     },
///     resourceSettings: [
///         {
///             resourceType: "CONSUMER_FOLDER",
///         },
///         {
///             resourceType: "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             resourceId: "ring",
///             resourceType: "KEYRING",
///         },
///     ],
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.assuredworkloads.Workload("primary",
///     compliance_regime="EU_REGIONS_AND_SUPPORT",
///     display_name="display",
///     location="europe-west9",
///     organization="123456789",
///     billing_account="billingAccounts/000000-0000000-0000000-000000",
///     enable_sovereign_controls=True,
///     kms_settings={
///         "next_rotation_time": "9999-10-02T15:01:23Z",
///         "rotation_period": "10368000s",
///     },
///     resource_settings=[
///         {
///             "resource_type": "CONSUMER_FOLDER",
///         },
///         {
///             "resource_type": "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             "resource_id": "ring",
///             "resource_type": "KEYRING",
///         },
///     ],
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
///     var primary = new Gcp.AssuredWorkloads.Workload("primary", new()
///     {
///         ComplianceRegime = "EU_REGIONS_AND_SUPPORT",
///         DisplayName = "display",
///         Location = "europe-west9",
///         Organization = "123456789",
///         BillingAccount = "billingAccounts/000000-0000000-0000000-000000",
///         EnableSovereignControls = true,
///         KmsSettings = new Gcp.AssuredWorkloads.Inputs.WorkloadKmsSettingsArgs
///         {
///             NextRotationTime = "9999-10-02T15:01:23Z",
///             RotationPeriod = "10368000s",
///         },
///         ResourceSettings = new[]
///         {
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceType = "CONSUMER_FOLDER",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceType = "ENCRYPTION_KEYS_PROJECT",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceId = "ring",
///                 ResourceType = "KEYRING",
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/assuredworkloads"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := assuredworkloads.NewWorkload(ctx, "primary", &assuredworkloads.WorkloadArgs{
/// 			ComplianceRegime:        pulumi.String("EU_REGIONS_AND_SUPPORT"),
/// 			DisplayName:             pulumi.String("display"),
/// 			Location:                pulumi.String("europe-west9"),
/// 			Organization:            pulumi.String("123456789"),
/// 			BillingAccount:          pulumi.String("billingAccounts/000000-0000000-0000000-000000"),
/// 			EnableSovereignControls: pulumi.Bool(true),
/// 			KmsSettings: &assuredworkloads.WorkloadKmsSettingsArgs{
/// 				NextRotationTime: pulumi.String("9999-10-02T15:01:23Z"),
/// 				RotationPeriod:   pulumi.String("10368000s"),
/// 			},
/// 			ResourceSettings: assuredworkloads.WorkloadResourceSettingArray{
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceType: pulumi.String("CONSUMER_FOLDER"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceType: pulumi.String("ENCRYPTION_KEYS_PROJECT"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceId:   pulumi.String("ring"),
/// 					ResourceType: pulumi.String("KEYRING"),
/// 				},
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
/// import com.pulumi.gcp.assuredworkloads.Workload;
/// import com.pulumi.gcp.assuredworkloads.WorkloadArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadKmsSettingsArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadResourceSettingArgs;
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
///         var primary = new Workload("primary", WorkloadArgs.builder()
///             .complianceRegime("EU_REGIONS_AND_SUPPORT")
///             .displayName("display")
///             .location("europe-west9")
///             .organization("123456789")
///             .billingAccount("billingAccounts/000000-0000000-0000000-000000")
///             .enableSovereignControls(true)
///             .kmsSettings(WorkloadKmsSettingsArgs.builder()
///                 .nextRotationTime("9999-10-02T15:01:23Z")
///                 .rotationPeriod("10368000s")
///                 .build())
///             .resourceSettings(
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceType("CONSUMER_FOLDER")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceType("ENCRYPTION_KEYS_PROJECT")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceId("ring")
///                     .resourceType("KEYRING")
///                     .build())
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:assuredworkloads:Workload
///     properties:
///       complianceRegime: EU_REGIONS_AND_SUPPORT
///       displayName: display
///       location: europe-west9
///       organization: '123456789'
///       billingAccount: billingAccounts/000000-0000000-0000000-000000
///       enableSovereignControls: true
///       kmsSettings:
///         nextRotationTime: 9999-10-02T15:01:23Z
///         rotationPeriod: 10368000s
///       resourceSettings:
///         - resourceType: CONSUMER_FOLDER
///         - resourceType: ENCRYPTION_KEYS_PROJECT
///         - resourceId: ring
///           resourceType: KEYRING
///       labels:
///         label-one: value-one
/// ```
///
/// ### Split_billing_partner_workload
/// A Split billing partner test of the assuredworkloads api
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.assuredworkloads.Workload("primary", {
///     complianceRegime: "ASSURED_WORKLOADS_FOR_PARTNERS",
///     displayName: "display",
///     location: "europe-west8",
///     organization: "123456789",
///     billingAccount: "billingAccounts/000000-0000000-0000000-000000",
///     partner: "SOVEREIGN_CONTROLS_BY_PSN",
///     partnerPermissions: {
///         assuredWorkloadsMonitoring: true,
///         dataLogsViewer: true,
///         serviceAccessApprover: true,
///     },
///     partnerServicesBillingAccount: "billingAccounts/01BF3F-2C6DE5-30C607",
///     resourceSettings: [
///         {
///             resourceType: "CONSUMER_FOLDER",
///         },
///         {
///             resourceType: "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             resourceId: "ring",
///             resourceType: "KEYRING",
///         },
///     ],
///     violationNotificationsEnabled: true,
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.assuredworkloads.Workload("primary",
///     compliance_regime="ASSURED_WORKLOADS_FOR_PARTNERS",
///     display_name="display",
///     location="europe-west8",
///     organization="123456789",
///     billing_account="billingAccounts/000000-0000000-0000000-000000",
///     partner="SOVEREIGN_CONTROLS_BY_PSN",
///     partner_permissions={
///         "assured_workloads_monitoring": True,
///         "data_logs_viewer": True,
///         "service_access_approver": True,
///     },
///     partner_services_billing_account="billingAccounts/01BF3F-2C6DE5-30C607",
///     resource_settings=[
///         {
///             "resource_type": "CONSUMER_FOLDER",
///         },
///         {
///             "resource_type": "ENCRYPTION_KEYS_PROJECT",
///         },
///         {
///             "resource_id": "ring",
///             "resource_type": "KEYRING",
///         },
///     ],
///     violation_notifications_enabled=True,
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
///     var primary = new Gcp.AssuredWorkloads.Workload("primary", new()
///     {
///         ComplianceRegime = "ASSURED_WORKLOADS_FOR_PARTNERS",
///         DisplayName = "display",
///         Location = "europe-west8",
///         Organization = "123456789",
///         BillingAccount = "billingAccounts/000000-0000000-0000000-000000",
///         Partner = "SOVEREIGN_CONTROLS_BY_PSN",
///         PartnerPermissions = new Gcp.AssuredWorkloads.Inputs.WorkloadPartnerPermissionsArgs
///         {
///             AssuredWorkloadsMonitoring = true,
///             DataLogsViewer = true,
///             ServiceAccessApprover = true,
///         },
///         PartnerServicesBillingAccount = "billingAccounts/01BF3F-2C6DE5-30C607",
///         ResourceSettings = new[]
///         {
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceType = "CONSUMER_FOLDER",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceType = "ENCRYPTION_KEYS_PROJECT",
///             },
///             new Gcp.AssuredWorkloads.Inputs.WorkloadResourceSettingArgs
///             {
///                 ResourceId = "ring",
///                 ResourceType = "KEYRING",
///             },
///         },
///         ViolationNotificationsEnabled = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/assuredworkloads"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := assuredworkloads.NewWorkload(ctx, "primary", &assuredworkloads.WorkloadArgs{
/// 			ComplianceRegime: pulumi.String("ASSURED_WORKLOADS_FOR_PARTNERS"),
/// 			DisplayName:      pulumi.String("display"),
/// 			Location:         pulumi.String("europe-west8"),
/// 			Organization:     pulumi.String("123456789"),
/// 			BillingAccount:   pulumi.String("billingAccounts/000000-0000000-0000000-000000"),
/// 			Partner:          pulumi.String("SOVEREIGN_CONTROLS_BY_PSN"),
/// 			PartnerPermissions: &assuredworkloads.WorkloadPartnerPermissionsArgs{
/// 				AssuredWorkloadsMonitoring: pulumi.Bool(true),
/// 				DataLogsViewer:             pulumi.Bool(true),
/// 				ServiceAccessApprover:      pulumi.Bool(true),
/// 			},
/// 			PartnerServicesBillingAccount: pulumi.String("billingAccounts/01BF3F-2C6DE5-30C607"),
/// 			ResourceSettings: assuredworkloads.WorkloadResourceSettingArray{
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceType: pulumi.String("CONSUMER_FOLDER"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceType: pulumi.String("ENCRYPTION_KEYS_PROJECT"),
/// 				},
/// 				&assuredworkloads.WorkloadResourceSettingArgs{
/// 					ResourceId:   pulumi.String("ring"),
/// 					ResourceType: pulumi.String("KEYRING"),
/// 				},
/// 			},
/// 			ViolationNotificationsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.assuredworkloads.Workload;
/// import com.pulumi.gcp.assuredworkloads.WorkloadArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadPartnerPermissionsArgs;
/// import com.pulumi.gcp.assuredworkloads.inputs.WorkloadResourceSettingArgs;
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
///         var primary = new Workload("primary", WorkloadArgs.builder()
///             .complianceRegime("ASSURED_WORKLOADS_FOR_PARTNERS")
///             .displayName("display")
///             .location("europe-west8")
///             .organization("123456789")
///             .billingAccount("billingAccounts/000000-0000000-0000000-000000")
///             .partner("SOVEREIGN_CONTROLS_BY_PSN")
///             .partnerPermissions(WorkloadPartnerPermissionsArgs.builder()
///                 .assuredWorkloadsMonitoring(true)
///                 .dataLogsViewer(true)
///                 .serviceAccessApprover(true)
///                 .build())
///             .partnerServicesBillingAccount("billingAccounts/01BF3F-2C6DE5-30C607")
///             .resourceSettings(
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceType("CONSUMER_FOLDER")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceType("ENCRYPTION_KEYS_PROJECT")
///                     .build(),
///                 WorkloadResourceSettingArgs.builder()
///                     .resourceId("ring")
///                     .resourceType("KEYRING")
///                     .build())
///             .violationNotificationsEnabled(true)
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:assuredworkloads:Workload
///     properties:
///       complianceRegime: ASSURED_WORKLOADS_FOR_PARTNERS
///       displayName: display
///       location: europe-west8
///       organization: '123456789'
///       billingAccount: billingAccounts/000000-0000000-0000000-000000
///       partner: SOVEREIGN_CONTROLS_BY_PSN
///       partnerPermissions:
///         assuredWorkloadsMonitoring: true
///         dataLogsViewer: true
///         serviceAccessApprover: true
///       partnerServicesBillingAccount: billingAccounts/01BF3F-2C6DE5-30C607
///       resourceSettings:
///         - resourceType: CONSUMER_FOLDER
///         - resourceType: ENCRYPTION_KEYS_PROJECT
///         - resourceId: ring
///           resourceType: KEYRING
///       violationNotificationsEnabled: true
///       labels:
///         label-one: value-one
/// ```
///
///
/// ## Import
///
/// Workload can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/workloads/{{name}}`
///
/// * `{{organization}}/{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Workload can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:assuredworkloads/workload:Workload default organizations/{{organization}}/locations/{{location}}/workloads/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:assuredworkloads/workload:Workload default {{organization}}/{{location}}/{{name}}
/// ```
class Workload extends pulumi.CustomResource {
  /// Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`.
  late final pulumi.Output<String?> billingAccount;
  /// Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT, KSA_REGIONS_AND_SUPPORT_WITH_SOVEREIGNTY_CONTROLS, REGIONAL_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS, HEALTHCARE_AND_LIFE_SCIENCES_CONTROLS_US_SUPPORT, IRS_1075
  late final pulumi.Output<String> complianceRegime;
  /// Output only. Count of active Violations in the Workload.
  late final pulumi.Output<List<WorkloadComplianceStatus>> complianceStatuses;
  /// Output only. Urls for services which are compliant for this Assured Workload, but which are currently disallowed by the ResourceUsageRestriction org policy. Invoke workloads.restrictAllowedResources endpoint to allow your project developers to use these services in their environment.
  late final pulumi.Output<List<String>> compliantButDisallowedServices;
  /// Output only. Immutable. The Workload creation timestamp.
  late final pulumi.Output<String> createTime;
  /// Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  late final pulumi.Output<String> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Optional. Represents the Ekm Provisioning State of the given workload.
  late final pulumi.Output<List<WorkloadEkmProvisioningResponse>> ekmProvisioningResponses;
  /// Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers.
  late final pulumi.Output<bool> enableSovereignControls;
  /// Output only. Represents the KAJ enrollment state of the given workload. Possible values: KAJ_ENROLLMENT_STATE_UNSPECIFIED, KAJ_ENROLLMENT_STATE_PENDING, KAJ_ENROLLMENT_STATE_COMPLETE
  late final pulumi.Output<String> kajEnrollmentState;
  /// **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field.
  late final pulumi.Output<WorkloadKmsSettings?> kmsSettings;
  /// Optional. Labels applied to the workload.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// Output only. The resource name of the workload.
  late final pulumi.Output<String> name;
  /// The organization for the resource
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> organization;
  /// Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN, SOVEREIGN_CONTROLS_BY_CNTXT, SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM
  late final pulumi.Output<String?> partner;
  /// Optional. Permissions granted to the AW Partner SA account for the customer workload
  late final pulumi.Output<WorkloadPartnerPermissions?> partnerPermissions;
  /// Optional. Input only. Billing account necessary for purchasing services from Sovereign Partners. This field is required for creating SIA/PSN/CNTXT partner workloads. The caller should have 'billing.resourceAssociations.create' IAM permission on this billing-account. The format of this string is billingAccounts/AAAAAA-BBBBBB-CCCCCC.
  late final pulumi.Output<String?> partnerServicesBillingAccount;
  /// Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id}
  late final pulumi.Output<String?> provisionedResourcesParent;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional.
  late final pulumi.Output<List<WorkloadResourceSetting>?> resourceSettings;
  /// Output only. The resources associated with this workload. These resources will be created when creating the workload. If any of the projects already exist, the workload creation will fail. Always read only.
  late final pulumi.Output<List<WorkloadResource>> resources;
  /// Output only. Represents the SAA enrollment response of the given workload. SAA enrollment response is queried during workloads.get call. In failure cases, user friendly error message is shown in SAA details page.
  late final pulumi.Output<List<WorkloadSaaEnrollmentResponse>> saaEnrollmentResponses;
  /// Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload.
  late final pulumi.Output<bool> violationNotificationsEnabled;
  /// Optional. Used to specify certain options for a workload during workload creation - currently only supporting KAT Optionality for Regional Controls workloads.
  late final pulumi.Output<WorkloadWorkloadOptions?> workloadOptions;

  /// Creates a new [Workload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workload]. {@macro pulumi_assuredworkloads_workload_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:assuredworkloads/workload:Workload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String?>('billingAccount');
    this.complianceRegime = registerOutput<String>('complianceRegime');
    this.complianceStatuses = registerOutput<List<WorkloadComplianceStatus>>('complianceStatuses');
    this.compliantButDisallowedServices = registerOutput<List<String>>('compliantButDisallowedServices');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.ekmProvisioningResponses = registerOutput<List<WorkloadEkmProvisioningResponse>>('ekmProvisioningResponses');
    this.enableSovereignControls = registerOutput<bool>('enableSovereignControls');
    this.kajEnrollmentState = registerOutput<String>('kajEnrollmentState');
    this.kmsSettings = registerOutput<WorkloadKmsSettings?>('kmsSettings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.partner = registerOutput<String?>('partner');
    this.partnerPermissions = registerOutput<WorkloadPartnerPermissions?>('partnerPermissions');
    this.partnerServicesBillingAccount = registerOutput<String?>('partnerServicesBillingAccount');
    this.provisionedResourcesParent = registerOutput<String?>('provisionedResourcesParent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceSettings = registerOutput<List<WorkloadResourceSetting>?>('resourceSettings');
    this.resources = registerOutput<List<WorkloadResource>>('resources');
    this.saaEnrollmentResponses = registerOutput<List<WorkloadSaaEnrollmentResponse>>('saaEnrollmentResponses');
    this.violationNotificationsEnabled = registerOutput<bool>('violationNotificationsEnabled');
    this.workloadOptions = registerOutput<WorkloadWorkloadOptions?>('workloadOptions');
  }

  /// Gets an existing [Workload] resource's state with the given [name] and [id].
  static Workload get(
    String name,
    pulumi.Input<String> id, {
    WorkloadState? state,
  }) {
    return Workload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:assuredworkloads/workload:Workload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String?>('billingAccount');
    this.complianceRegime = registerOutput<String>('complianceRegime');
    this.complianceStatuses = registerOutput<List<WorkloadComplianceStatus>>('complianceStatuses');
    this.compliantButDisallowedServices = registerOutput<List<String>>('compliantButDisallowedServices');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.ekmProvisioningResponses = registerOutput<List<WorkloadEkmProvisioningResponse>>('ekmProvisioningResponses');
    this.enableSovereignControls = registerOutput<bool>('enableSovereignControls');
    this.kajEnrollmentState = registerOutput<String>('kajEnrollmentState');
    this.kmsSettings = registerOutput<WorkloadKmsSettings?>('kmsSettings');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.partner = registerOutput<String?>('partner');
    this.partnerPermissions = registerOutput<WorkloadPartnerPermissions?>('partnerPermissions');
    this.partnerServicesBillingAccount = registerOutput<String?>('partnerServicesBillingAccount');
    this.provisionedResourcesParent = registerOutput<String?>('provisionedResourcesParent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceSettings = registerOutput<List<WorkloadResourceSetting>?>('resourceSettings');
    this.resources = registerOutput<List<WorkloadResource>>('resources');
    this.saaEnrollmentResponses = registerOutput<List<WorkloadSaaEnrollmentResponse>>('saaEnrollmentResponses');
    this.violationNotificationsEnabled = registerOutput<bool>('violationNotificationsEnabled');
    this.workloadOptions = registerOutput<WorkloadWorkloadOptions?>('workloadOptions');
  }
}
