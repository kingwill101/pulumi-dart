import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_anthropic.dart';
import 'zero_trust_casb_integration_args.dart';
import 'zero_trust_casb_integration_aws.dart';
import 'zero_trust_casb_integration_box.dart';
import 'zero_trust_casb_integration_google_cloud_platform.dart';
import 'zero_trust_casb_integration_google_workspace.dart';
import 'zero_trust_casb_integration_openai.dart';
import 'zero_trust_casb_integration_state.dart';

/// Creates and manages a CASB integration. Exactly one vendor and exactly one authentication method must be configured.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
/// import * as std from "@pulumi/std";
///
/// // Exactly one vendor and exactly one authentication method must be configured.
/// //
/// // Confidential arguments (API keys, service account keys) are write-only:
/// // Pulumi sends them to the provider but does not store them directly in state.
/// // Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
/// // a secret updates the integration in place; it does not recreate it.
/// //
/// // Non-confidential arguments are stored in state and diffed normally.
/// //
/// // Changing the vendor or the authentication method does force the integration to
/// // be recreated, because the update API cannot change either one.
/// //
/// // Write-only arguments require Pulumi 1.11 or later, and may be fed from
/// // ephemeral resources so the secret never touches disk.
/// const googleCloudPlatform = new cloudflare.ZeroTrustCasbIntegration("google_cloud_platform", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Google Cloud Platform integration",
///     paused: false,
///     googleCloudPlatform: {
///         googleCloudPlatformServiceAccount: {
///             serviceAccountKeyJson: std.file({
///                 input: "service-account-key.json",
///             }).then(invoke => invoke.result),
///         },
///     },
/// });
/// const googleWorkspace = new cloudflare.ZeroTrustCasbIntegration("google_workspace", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Google Workspace integration",
///     paused: false,
///     googleWorkspace: {
///         googleDomainWideDelegationServiceAccount: {
///             serviceAccountKeyJson: std.file({
///                 input: "service-account-key.json",
///             }).then(invoke => invoke.result),
///             administratorEmail: "admin@example.com",
///         },
///     },
/// });
/// const anthropic = new cloudflare.ZeroTrustCasbIntegration("anthropic", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Anthropic integration",
///     paused: false,
///     anthropic: {
///         anthropicAdminApiKey: {
///             apiKey: anthropicAdminApiKey,
///             tenantId: "org_01234567-89ab-cdef-0123-456789abcdef",
///         },
///     },
/// });
/// const openai = new cloudflare.ZeroTrustCasbIntegration("openai", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My OpenAI integration",
///     paused: false,
///     useCases: [
///         "casb",
///         "ces",
///         "auto_remediation",
///     ],
///     openai: {
///         chatgptStandardApiKey: {
///             adminApiKey: openaiAdminApiKey,
///             organizationId: "org-abc123",
///             projectApiKey: openaiProjectApiKey,
///             projectId: "proj_abc123",
///         },
///     },
/// });
/// const aws = new cloudflare.ZeroTrustCasbIntegration("aws", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My AWS integration",
///     paused: false,
///     aws: {
///         awsIamRole: {
///             roleArn: "arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor",
///             externalId: awsExternalId,
///         },
///     },
/// });
/// // Before creating a Box integration, add the Cloudflare CASB application to
/// // your Box account:
/// //
/// // 1. Sign in to the Box Admin Console with Admin permission.
/// // 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
/// // 3. Click Add Platform App and enter the Cloudflare CASB client ID:
/// //    puaghckpy0578r8p6f3g0rf860unup4r
/// // 4. In Accounts & Billing, copy the Enterprise ID and use it below.
/// //
/// // For details, refer to:
/// // https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
/// const box = new cloudflare.ZeroTrustCasbIntegration("box", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Box integration",
///     paused: false,
///     dlpProfiles: ["b0d1e2f3-4567-89ab-cdef-0123456789ab"],
///     box: {
///         boxServerAuthentication: {
///             enterpriseId: "1234567",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
/// import pulumi_std as std
///
/// # Exactly one vendor and exactly one authentication method must be configured.
/// #
/// # Confidential arguments (API keys, service account keys) are write-only:
/// # Pulumi sends them to the provider but does not store them directly in state.
/// # Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
/// # a secret updates the integration in place; it does not recreate it.
/// #
/// # Non-confidential arguments are stored in state and diffed normally.
/// #
/// # Changing the vendor or the authentication method does force the integration to
/// # be recreated, because the update API cannot change either one.
/// #
/// # Write-only arguments require Pulumi 1.11 or later, and may be fed from
/// # ephemeral resources so the secret never touches disk.
/// google_cloud_platform = cloudflare.ZeroTrustCasbIntegration("google_cloud_platform",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Google Cloud Platform integration",
///     paused=False,
///     google_cloud_platform={
///         "google_cloud_platform_service_account": {
///             "service_account_key_json": std.file(input="service-account-key.json").result,
///         },
///     })
/// google_workspace = cloudflare.ZeroTrustCasbIntegration("google_workspace",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Google Workspace integration",
///     paused=False,
///     google_workspace={
///         "google_domain_wide_delegation_service_account": {
///             "service_account_key_json": std.file(input="service-account-key.json").result,
///             "administrator_email": "admin@example.com",
///         },
///     })
/// anthropic = cloudflare.ZeroTrustCasbIntegration("anthropic",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Anthropic integration",
///     paused=False,
///     anthropic={
///         "anthropic_admin_api_key": {
///             "api_key": anthropic_admin_api_key,
///             "tenant_id": "org_01234567-89ab-cdef-0123-456789abcdef",
///         },
///     })
/// openai = cloudflare.ZeroTrustCasbIntegration("openai",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My OpenAI integration",
///     paused=False,
///     use_cases=[
///         "casb",
///         "ces",
///         "auto_remediation",
///     ],
///     openai={
///         "chatgpt_standard_api_key": {
///             "admin_api_key": openai_admin_api_key,
///             "organization_id": "org-abc123",
///             "project_api_key": openai_project_api_key,
///             "project_id": "proj_abc123",
///         },
///     })
/// aws = cloudflare.ZeroTrustCasbIntegration("aws",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My AWS integration",
///     paused=False,
///     aws={
///         "aws_iam_role": {
///             "role_arn": "arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor",
///             "external_id": aws_external_id,
///         },
///     })
/// # Before creating a Box integration, add the Cloudflare CASB application to
/// # your Box account:
/// #
/// # 1. Sign in to the Box Admin Console with Admin permission.
/// # 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
/// # 3. Click Add Platform App and enter the Cloudflare CASB client ID:
/// #    puaghckpy0578r8p6f3g0rf860unup4r
/// # 4. In Accounts & Billing, copy the Enterprise ID and use it below.
/// #
/// # For details, refer to:
/// # https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
/// box = cloudflare.ZeroTrustCasbIntegration("box",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Box integration",
///     paused=False,
///     dlp_profiles=["b0d1e2f3-4567-89ab-cdef-0123456789ab"],
///     box={
///         "box_server_authentication": {
///             "enterprise_id": "1234567",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Exactly one vendor and exactly one authentication method must be configured.
///     //
///     // Confidential arguments (API keys, service account keys) are write-only:
///     // Pulumi sends them to the provider but does not store them directly in state.
///     // Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
///     // a secret updates the integration in place; it does not recreate it.
///     //
///     // Non-confidential arguments are stored in state and diffed normally.
///     //
///     // Changing the vendor or the authentication method does force the integration to
///     // be recreated, because the update API cannot change either one.
///     //
///     // Write-only arguments require Pulumi 1.11 or later, and may be fed from
///     // ephemeral resources so the secret never touches disk.
///     var googleCloudPlatform = new Cloudflare.ZeroTrustCasbIntegration("google_cloud_platform", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Google Cloud Platform integration",
///         Paused = false,
///         GoogleCloudPlatform = new Cloudflare.Inputs.ZeroTrustCasbIntegrationGoogleCloudPlatformArgs
///         {
///             GoogleCloudPlatformServiceAccount = new Cloudflare.Inputs.ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccountArgs
///             {
///                 ServiceAccountKeyJson = Std.File.Invoke(new()
///                 {
///                     Input = "service-account-key.json",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///     });
///
///     var googleWorkspace = new Cloudflare.ZeroTrustCasbIntegration("google_workspace", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Google Workspace integration",
///         Paused = false,
///         GoogleWorkspace = new Cloudflare.Inputs.ZeroTrustCasbIntegrationGoogleWorkspaceArgs
///         {
///             GoogleDomainWideDelegationServiceAccount = new Cloudflare.Inputs.ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccountArgs
///             {
///                 ServiceAccountKeyJson = Std.File.Invoke(new()
///                 {
///                     Input = "service-account-key.json",
///                 }).Apply(invoke => invoke.Result),
///                 AdministratorEmail = "admin@example.com",
///             },
///         },
///     });
///
///     var anthropic = new Cloudflare.ZeroTrustCasbIntegration("anthropic", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Anthropic integration",
///         Paused = false,
///         Anthropic = new Cloudflare.Inputs.ZeroTrustCasbIntegrationAnthropicArgs
///         {
///             AnthropicAdminApiKey = new Cloudflare.Inputs.ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKeyArgs
///             {
///                 ApiKey = anthropicAdminApiKey,
///                 TenantId = "org_01234567-89ab-cdef-0123-456789abcdef",
///             },
///         },
///     });
///
///     var openai = new Cloudflare.ZeroTrustCasbIntegration("openai", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My OpenAI integration",
///         Paused = false,
///         UseCases = new[]
///         {
///             "casb",
///             "ces",
///             "auto_remediation",
///         },
///         Openai = new Cloudflare.Inputs.ZeroTrustCasbIntegrationOpenaiArgs
///         {
///             ChatgptStandardApiKey = new Cloudflare.Inputs.ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKeyArgs
///             {
///                 AdminApiKey = openaiAdminApiKey,
///                 OrganizationId = "org-abc123",
///                 ProjectApiKey = openaiProjectApiKey,
///                 ProjectId = "proj_abc123",
///             },
///         },
///     });
///
///     var aws = new Cloudflare.ZeroTrustCasbIntegration("aws", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My AWS integration",
///         Paused = false,
///         Aws = new Cloudflare.Inputs.ZeroTrustCasbIntegrationAwsArgs
///         {
///             AwsIamRole = new Cloudflare.Inputs.ZeroTrustCasbIntegrationAwsAwsIamRoleArgs
///             {
///                 RoleArn = "arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor",
///                 ExternalId = awsExternalId,
///             },
///         },
///     });
///
///     // Before creating a Box integration, add the Cloudflare CASB application to
///     // your Box account:
///     //
///     // 1. Sign in to the Box Admin Console with Admin permission.
///     // 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
///     // 3. Click Add Platform App and enter the Cloudflare CASB client ID:
///     //    puaghckpy0578r8p6f3g0rf860unup4r
///     // 4. In Accounts & Billing, copy the Enterprise ID and use it below.
///     //
///     // For details, refer to:
///     // https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
///     var box = new Cloudflare.ZeroTrustCasbIntegration("box", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Box integration",
///         Paused = false,
///         DlpProfiles = new[]
///         {
///             "b0d1e2f3-4567-89ab-cdef-0123456789ab",
///         },
///         Box = new Cloudflare.Inputs.ZeroTrustCasbIntegrationBoxArgs
///         {
///             BoxServerAuthentication = new Cloudflare.Inputs.ZeroTrustCasbIntegrationBoxBoxServerAuthenticationArgs
///             {
///                 EnterpriseId = "1234567",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "service-account-key.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Exactly one vendor and exactly one authentication method must be configured.
/// 		//
/// 		// Confidential arguments (API keys, service account keys) are write-only:
/// 		// Pulumi sends them to the provider but does not store them directly in state.
/// 		// Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
/// 		// a secret updates the integration in place; it does not recreate it.
/// 		//
/// 		// Non-confidential arguments are stored in state and diffed normally.
/// 		//
/// 		// Changing the vendor or the authentication method does force the integration to
/// 		// be recreated, because the update API cannot change either one.
/// 		//
/// 		// Write-only arguments require Pulumi 1.11 or later, and may be fed from
/// 		// ephemeral resources so the secret never touches disk.
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "google_cloud_platform", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Google Cloud Platform integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			GoogleCloudPlatform: &cloudflare.ZeroTrustCasbIntegrationGoogleCloudPlatformArgs{
/// 				GoogleCloudPlatformServiceAccount: &cloudflare.ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccountArgs{
/// 					ServiceAccountKeyJson: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "service-account-key.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "google_workspace", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Google Workspace integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			GoogleWorkspace: &cloudflare.ZeroTrustCasbIntegrationGoogleWorkspaceArgs{
/// 				GoogleDomainWideDelegationServiceAccount: &cloudflare.ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccountArgs{
/// 					ServiceAccountKeyJson: pulumi.String(invokeFile1.Result),
/// 					AdministratorEmail:    pulumi.String("admin@example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "anthropic", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Anthropic integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			Anthropic: &cloudflare.ZeroTrustCasbIntegrationAnthropicArgs{
/// 				AnthropicAdminApiKey: &cloudflare.ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKeyArgs{
/// 					ApiKey:   pulumi.Any(anthropicAdminApiKey),
/// 					TenantId: pulumi.String("org_01234567-89ab-cdef-0123-456789abcdef"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "openai", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My OpenAI integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			UseCases: pulumi.StringArray{
/// 				pulumi.String("casb"),
/// 				pulumi.String("ces"),
/// 				pulumi.String("auto_remediation"),
/// 			},
/// 			Openai: &cloudflare.ZeroTrustCasbIntegrationOpenaiArgs{
/// 				ChatgptStandardApiKey: &cloudflare.ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKeyArgs{
/// 					AdminApiKey:    pulumi.Any(openaiAdminApiKey),
/// 					OrganizationId: pulumi.String("org-abc123"),
/// 					ProjectApiKey:  pulumi.Any(openaiProjectApiKey),
/// 					ProjectId:      pulumi.String("proj_abc123"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "aws", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My AWS integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			Aws: &cloudflare.ZeroTrustCasbIntegrationAwsArgs{
/// 				AwsIamRole: &cloudflare.ZeroTrustCasbIntegrationAwsAwsIamRoleArgs{
/// 					RoleArn:    pulumi.String("arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor"),
/// 					ExternalId: pulumi.Any(awsExternalId),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Before creating a Box integration, add the Cloudflare CASB application to
/// 		// your Box account:
/// 		//
/// 		// 1. Sign in to the Box Admin Console with Admin permission.
/// 		// 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
/// 		// 3. Click Add Platform App and enter the Cloudflare CASB client ID:
/// 		//    puaghckpy0578r8p6f3g0rf860unup4r
/// 		// 4. In Accounts & Billing, copy the Enterprise ID and use it below.
/// 		//
/// 		// For details, refer to:
/// 		// https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
/// 		_, err = cloudflare.NewZeroTrustCasbIntegration(ctx, "box", &cloudflare.ZeroTrustCasbIntegrationArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Box integration"),
/// 			Paused:    pulumi.Bool(false),
/// 			DlpProfiles: pulumi.StringArray{
/// 				pulumi.String("b0d1e2f3-4567-89ab-cdef-0123456789ab"),
/// 			},
/// 			Box: &cloudflare.ZeroTrustCasbIntegrationBoxArgs{
/// 				BoxServerAuthentication: &cloudflare.ZeroTrustCasbIntegrationBoxBoxServerAuthenticationArgs{
/// 					EnterpriseId: pulumi.String("1234567"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// # Exactly one vendor and exactly one authentication method must be configured.
/// #
/// # Confidential arguments (API keys, service account keys) are write-only:
/// # Pulumi sends them to the provider but does not store them directly in state.
/// # Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
/// # a secret updates the integration in place; it does not recreate it.
/// #
/// # Non-confidential arguments are stored in state and diffed normally.
/// #
/// # Changing the vendor or the authentication method does force the integration to
/// # be recreated, because the update API cannot change either one.
/// #
/// # Write-only arguments require Pulumi 1.11 or later, and may be fed from
/// # ephemeral resources so the secret never touches disk.
/// resource "cloudflare_zero_trust_casb_integration" "google_cloud_platform" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My Google Cloud Platform integration"
///   paused     = false
///   google_cloud_platform = {
///     google_cloud_platform_service_account = {
///       service_account_key_json = file("service-account-key.json")
///     }
///   }
/// }
/// resource "cloudflare_zero_trust_casb_integration" "google_workspace" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My Google Workspace integration"
///   paused     = false
///   google_workspace = {
///     google_domain_wide_delegation_service_account = {
///       service_account_key_json = file("service-account-key.json")
///       administrator_email      = "admin@example.com"
///     }
///   }
/// }
/// resource "cloudflare_zero_trust_casb_integration" "anthropic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My Anthropic integration"
///   paused     = false
///   anthropic = {
///     anthropic_admin_api_key = {
///       api_key   = anthropicAdminApiKey
///       tenant_id = "org_01234567-89ab-cdef-0123-456789abcdef"
///     }
///   }
/// }
/// resource "cloudflare_zero_trust_casb_integration" "openai" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My OpenAI integration"
///   paused     = false
///   # Also enrol the integration in continuous evaluation and let it remediate
///   # findings automatically. Defaults to ["casb"] when omitted.
///   use_cases = ["casb", "ces", "auto_remediation"]
///   openai = {
///     chatgpt_standard_api_key = {
///       admin_api_key   = openaiAdminApiKey
///       organization_id = "org-abc123"
///       project_api_key = openaiProjectApiKey
///       project_id      = "proj_abc123"
///     }
///   }
/// }
/// resource "cloudflare_zero_trust_casb_integration" "aws" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My AWS integration"
///   paused     = false
///   aws = {
///     aws_iam_role = {
///       role_arn    = "arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor"
///       external_id = awsExternalId
///     }
///   }
/// }
/// # Before creating a Box integration, add the Cloudflare CASB application to
/// # your Box account:
/// #
/// # 1. Sign in to the Box Admin Console with Admin permission.
/// # 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
/// # 3. Click Add Platform App and enter the Cloudflare CASB client ID:
/// #    puaghckpy0578r8p6f3g0rf860unup4r
/// # 4. In Accounts & Billing, copy the Enterprise ID and use it below.
/// #
/// # For details, refer to:
/// # https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
/// resource "cloudflare_zero_trust_casb_integration" "box" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My Box integration"
///   paused     = false
///   # Restrict DLP scanning to specific profiles. Omit to let Cloudflare assign
///   # the account defaults.
///   dlp_profiles = ["b0d1e2f3-4567-89ab-cdef-0123456789ab"]
///   box = {
///     box_server_authentication = {
///       enterprise_id = "1234567"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustCasbIntegration;
/// import com.pulumi.cloudflare.ZeroTrustCasbIntegrationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationGoogleCloudPlatformArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccountArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationGoogleWorkspaceArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccountArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationAnthropicArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKeyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationOpenaiArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKeyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationAwsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationAwsAwsIamRoleArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationBoxArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustCasbIntegrationBoxBoxServerAuthenticationArgs;
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
///         // Exactly one vendor and exactly one authentication method must be configured.
///         //
///         // Confidential arguments (API keys, service account keys) are write-only:
///         // Pulumi sends them to the provider but does not store them directly in state.
///         // Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
///         // a secret updates the integration in place; it does not recreate it.
///         //
///         // Non-confidential arguments are stored in state and diffed normally.
///         //
///         // Changing the vendor or the authentication method does force the integration to
///         // be recreated, because the update API cannot change either one.
///         //
///         // Write-only arguments require Pulumi 1.11 or later, and may be fed from
///         // ephemeral resources so the secret never touches disk.
///         var googleCloudPlatform = new ZeroTrustCasbIntegration("googleCloudPlatform", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Google Cloud Platform integration")
///             .paused(false)
///             .googleCloudPlatform(ZeroTrustCasbIntegrationGoogleCloudPlatformArgs.builder()
///                 .googleCloudPlatformServiceAccount(ZeroTrustCasbIntegrationGoogleCloudPlatformGoogleCloudPlatformServiceAccountArgs.builder()
///                     .serviceAccountKeyJson(StdFunctions.file(FileArgs.builder()
///                         .input("service-account-key.json")
///                         .build()).result())
///                     .build())
///                 .build())
///             .build());
///
///         var googleWorkspace = new ZeroTrustCasbIntegration("googleWorkspace", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Google Workspace integration")
///             .paused(false)
///             .googleWorkspace(ZeroTrustCasbIntegrationGoogleWorkspaceArgs.builder()
///                 .googleDomainWideDelegationServiceAccount(ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccountArgs.builder()
///                     .serviceAccountKeyJson(StdFunctions.file(FileArgs.builder()
///                         .input("service-account-key.json")
///                         .build()).result())
///                     .administratorEmail("admin@example.com")
///                     .build())
///                 .build())
///             .build());
///
///         var anthropic = new ZeroTrustCasbIntegration("anthropic", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Anthropic integration")
///             .paused(false)
///             .anthropic(ZeroTrustCasbIntegrationAnthropicArgs.builder()
///                 .anthropicAdminApiKey(ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKeyArgs.builder()
///                     .apiKey(anthropicAdminApiKey)
///                     .tenantId("org_01234567-89ab-cdef-0123-456789abcdef")
///                     .build())
///                 .build())
///             .build());
///
///         var openai = new ZeroTrustCasbIntegration("openai", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My OpenAI integration")
///             .paused(false)
///             .useCases(
///                 "casb",
///                 "ces",
///                 "auto_remediation")
///             .openai(ZeroTrustCasbIntegrationOpenaiArgs.builder()
///                 .chatgptStandardApiKey(ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKeyArgs.builder()
///                     .adminApiKey(openaiAdminApiKey)
///                     .organizationId("org-abc123")
///                     .projectApiKey(openaiProjectApiKey)
///                     .projectId("proj_abc123")
///                     .build())
///                 .build())
///             .build());
///
///         var aws = new ZeroTrustCasbIntegration("aws", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My AWS integration")
///             .paused(false)
///             .aws(ZeroTrustCasbIntegrationAwsArgs.builder()
///                 .awsIamRole(ZeroTrustCasbIntegrationAwsAwsIamRoleArgs.builder()
///                     .roleArn("arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor")
///                     .externalId(awsExternalId)
///                     .build())
///                 .build())
///             .build());
///
///         // Before creating a Box integration, add the Cloudflare CASB application to
///         // your Box account:
///         //
///         // 1. Sign in to the Box Admin Console with Admin permission.
///         // 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
///         // 3. Click Add Platform App and enter the Cloudflare CASB client ID:
///         //    puaghckpy0578r8p6f3g0rf860unup4r
///         // 4. In Accounts & Billing, copy the Enterprise ID and use it below.
///         //
///         // For details, refer to:
///         // https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
///         var box = new ZeroTrustCasbIntegration("box", ZeroTrustCasbIntegrationArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Box integration")
///             .paused(false)
///             .dlpProfiles("b0d1e2f3-4567-89ab-cdef-0123456789ab")
///             .box(ZeroTrustCasbIntegrationBoxArgs.builder()
///                 .boxServerAuthentication(ZeroTrustCasbIntegrationBoxBoxServerAuthenticationArgs.builder()
///                     .enterpriseId("1234567")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Exactly one vendor and exactly one authentication method must be configured.
///   #
///   # Confidential arguments (API keys, service account keys) are write-only:
///   # Pulumi sends them to the provider but does not store them directly in state.
///   # Only a secure digest is stored so Pulumi can detect secret rotation. Rotating
///   # a secret updates the integration in place; it does not recreate it.
///   #
///   # Non-confidential arguments are stored in state and diffed normally.
///   #
///   # Changing the vendor or the authentication method does force the integration to
///   # be recreated, because the update API cannot change either one.
///   #
///   # Write-only arguments require Pulumi 1.11 or later, and may be fed from
///   # ephemeral resources so the secret never touches disk.
///   googleCloudPlatform:
///     type: cloudflare:ZeroTrustCasbIntegration
///     name: google_cloud_platform
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Google Cloud Platform integration
///       paused: false
///       googleCloudPlatform:
///         googleCloudPlatformServiceAccount:
///           serviceAccountKeyJson:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: service-account-key.json
///               return: result
///   googleWorkspace:
///     type: cloudflare:ZeroTrustCasbIntegration
///     name: google_workspace
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Google Workspace integration
///       paused: false
///       googleWorkspace:
///         googleDomainWideDelegationServiceAccount:
///           serviceAccountKeyJson:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: service-account-key.json
///               return: result
///           administratorEmail: admin@example.com
///   anthropic:
///     type: cloudflare:ZeroTrustCasbIntegration
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Anthropic integration
///       paused: false
///       anthropic:
///         anthropicAdminApiKey:
///           apiKey: ${anthropicAdminApiKey}
///           tenantId: org_01234567-89ab-cdef-0123-456789abcdef
///   openai:
///     type: cloudflare:ZeroTrustCasbIntegration
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My OpenAI integration
///       paused: false # Also enrol the integration in continuous evaluation and let it remediate
///       #   # findings automatically. Defaults to ["casb"] when omitted.
///       useCases:
///         - casb
///         - ces
///         - auto_remediation
///       openai:
///         chatgptStandardApiKey:
///           adminApiKey: ${openaiAdminApiKey}
///           organizationId: org-abc123
///           projectApiKey: ${openaiProjectApiKey}
///           projectId: proj_abc123
///   aws:
///     type: cloudflare:ZeroTrustCasbIntegration
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My AWS integration
///       paused: false
///       aws:
///         awsIamRole:
///           roleArn: arn:aws:iam::123456789012:role/Cloudflare_DSPM_Auditor
///           externalId: ${awsExternalId}
///   # Before creating a Box integration, add the Cloudflare CASB application to
///   # your Box account:
///   #
///   # 1. Sign in to the Box Admin Console with Admin permission.
///   # 2. Open Integrations > Platform Apps Manager and select Server Authentication Apps.
///   # 3. Click Add Platform App and enter the Cloudflare CASB client ID:
///   #    puaghckpy0578r8p6f3g0rf860unup4r
///   # 4. In Accounts & Billing, copy the Enterprise ID and use it below.
///   #
///   # For details, refer to:
///   # https://developer.box.com/guides/authorization/platform-app-approval/#as-an-admin
///   box:
///     type: cloudflare:ZeroTrustCasbIntegration
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Box integration
///       paused: false # Restrict DLP scanning to specific profiles. Omit to let Cloudflare assign
///       #   # the account defaults.
///       dlpProfiles:
///         - b0d1e2f3-4567-89ab-cdef-0123456789ab
///       box:
///         boxServerAuthentication:
///           enterpriseId: '1234567'
/// ```
///
///
/// ## Import
///
/// Define the resource with its vendor, authentication method, and credentials before importing.
///
/// ```sh
/// $ pulumi import cloudflare:index/zeroTrustCasbIntegration:ZeroTrustCasbIntegration example '<account_id>/<id>'
/// ```
class ZeroTrustCasbIntegration extends pulumi.CustomResource {
  /// Cloudflare account identifier.
  late final pulumi.Output<String> accountId;
  /// Anthropic integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationAnthropic?> anthropic;
  /// AWS integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationAws?> aws;
  /// Box integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationBox?> box;
  /// DLP profile IDs to associate with the integration.
  late final pulumi.Output<List<String>> dlpProfiles;
  /// Google Cloud Platform integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationGoogleCloudPlatform?> googleCloudPlatform;
  /// Google Workspace integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationGoogleWorkspace?> googleWorkspace;
  /// Name of the integration.
  late final pulumi.Output<String> name;
  /// OpenAI integration configuration.
  late final pulumi.Output<ZeroTrustCasbIntegrationOpenai?> openai;
  /// Whether the integration is paused.
  late final pulumi.Output<bool> paused;
  /// Permission scopes granted to the integration.
  late final pulumi.Output<List<String>?> permissions;
  /// Secure digest of the confidential arguments. Managed by the provider.
  late final pulumi.Output<String> secretsDigest;
  /// Use cases to enroll the integration in.
  late final pulumi.Output<List<String>> useCases;

  /// Creates a new [ZeroTrustCasbIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZeroTrustCasbIntegration]. {@macro pulumi_index_zero_trust_casb_integration_zero_trust_casb_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZeroTrustCasbIntegration(
    String name, {
    ZeroTrustCasbIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbIntegration:ZeroTrustCasbIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    anthropic = registerOutput<ZeroTrustCasbIntegrationAnthropic?>('anthropic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAnthropic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    aws = registerOutput<ZeroTrustCasbIntegrationAws?>('aws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAws.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    box = registerOutput<ZeroTrustCasbIntegrationBox?>('box', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationBox.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dlpProfiles = registerOutput<List<String>>('dlpProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    googleCloudPlatform = registerOutput<ZeroTrustCasbIntegrationGoogleCloudPlatform?>('googleCloudPlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleCloudPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleWorkspace = registerOutput<ZeroTrustCasbIntegrationGoogleWorkspace?>('googleWorkspace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openai = registerOutput<ZeroTrustCasbIntegrationOpenai?>('openai', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationOpenai.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    secretsDigest = registerOutput<String>('secretsDigest');
    useCases = registerOutput<List<String>>('useCases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [ZeroTrustCasbIntegration] resource's state with the given [name] and [id].
  static ZeroTrustCasbIntegration get(
    String name,
    pulumi.Input<String> id, {
    ZeroTrustCasbIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZeroTrustCasbIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZeroTrustCasbIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zeroTrustCasbIntegration:ZeroTrustCasbIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    anthropic = registerOutput<ZeroTrustCasbIntegrationAnthropic?>('anthropic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAnthropic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    aws = registerOutput<ZeroTrustCasbIntegrationAws?>('aws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAws.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    box = registerOutput<ZeroTrustCasbIntegrationBox?>('box', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationBox.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dlpProfiles = registerOutput<List<String>>('dlpProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    googleCloudPlatform = registerOutput<ZeroTrustCasbIntegrationGoogleCloudPlatform?>('googleCloudPlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleCloudPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleWorkspace = registerOutput<ZeroTrustCasbIntegrationGoogleWorkspace?>('googleWorkspace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openai = registerOutput<ZeroTrustCasbIntegrationOpenai?>('openai', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationOpenai.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    secretsDigest = registerOutput<String>('secretsDigest');
    useCases = registerOutput<List<String>>('useCases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ZeroTrustCasbIntegration] resource.
  ZeroTrustCasbIntegration.reference(String urn)
    : super(
        'cloudflare:index/zeroTrustCasbIntegration:ZeroTrustCasbIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    anthropic = registerOutput<ZeroTrustCasbIntegrationAnthropic?>('anthropic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAnthropic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    aws = registerOutput<ZeroTrustCasbIntegrationAws?>('aws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationAws.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    box = registerOutput<ZeroTrustCasbIntegrationBox?>('box', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationBox.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dlpProfiles = registerOutput<List<String>>('dlpProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    googleCloudPlatform = registerOutput<ZeroTrustCasbIntegrationGoogleCloudPlatform?>('googleCloudPlatform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleCloudPlatform.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    googleWorkspace = registerOutput<ZeroTrustCasbIntegrationGoogleWorkspace?>('googleWorkspace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationGoogleWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    openai = registerOutput<ZeroTrustCasbIntegrationOpenai?>('openai', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZeroTrustCasbIntegrationOpenai.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    paused = registerOutput<bool>('paused');
    permissions = registerOutput<List<String>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    secretsDigest = registerOutput<String>('secretsDigest');
    useCases = registerOutput<List<String>>('useCases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
