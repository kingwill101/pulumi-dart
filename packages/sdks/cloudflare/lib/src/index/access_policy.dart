import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_approval_group.dart';
import 'access_policy_args.dart';
import 'access_policy_connection_rules.dart';
import 'access_policy_exclude.dart';
import 'access_policy_include.dart';
import 'access_policy_mfa_config.dart';
import 'access_policy_require.dart';
import 'access_policy_state.dart';

/// Accepted Permissions
///
/// - `Access: Apps and Policies Read`
/// - `Access: Apps and Policies Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustAccessPolicy = new cloudflare.ZeroTrustAccessPolicy("example_zero_trust_access_policy", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     decision: "allow",
///     includes: [{
///         certificate: {},
///     }],
///     name: "Allow devs",
///     approvalGroups: [
///         {
///             approvalsNeeded: 1,
///             emailAddresses: [
///                 "test1@cloudflare.com",
///                 "test2@cloudflare.com",
///             ],
///             emailListUuid: "email_list_uuid",
///         },
///         {
///             approvalsNeeded: 3,
///             emailAddresses: [
///                 "test@cloudflare.com",
///                 "test2@cloudflare.com",
///             ],
///             emailListUuid: "597147a1-976b-4ef2-9af0-81d5d007fc34",
///         },
///     ],
///     approvalRequired: true,
///     connectionRules: {
///         rdp: {
///             allowedClipboardLocalToRemoteFormats: [
///                 "text",
///                 "file",
///             ],
///             allowedClipboardRemoteToLocalFormats: [
///                 "text",
///                 "file",
///             ],
///         },
///     },
///     excludes: [{
///         certificate: {},
///     }],
///     isolationRequired: false,
///     mfaConfig: {
///         allowedAuthenticators: [
///             "totp",
///             "biometrics",
///             "security_key",
///         ],
///         mfaDisabled: false,
///         sessionDuration: "24h",
///     },
///     purposeJustificationPrompt: "Please enter a justification for entering this protected domain.",
///     purposeJustificationRequired: true,
///     requires: [{
///         certificate: {},
///     }],
///     sessionDuration: "24h",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_access_policy = cloudflare.ZeroTrustAccessPolicy("example_zero_trust_access_policy",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     decision="allow",
///     includes=[{
///         "certificate": {},
///     }],
///     name="Allow devs",
///     approval_groups=[
///         {
///             "approvals_needed": float(1),
///             "email_addresses": [
///                 "test1@cloudflare.com",
///                 "test2@cloudflare.com",
///             ],
///             "email_list_uuid": "email_list_uuid",
///         },
///         {
///             "approvals_needed": float(3),
///             "email_addresses": [
///                 "test@cloudflare.com",
///                 "test2@cloudflare.com",
///             ],
///             "email_list_uuid": "597147a1-976b-4ef2-9af0-81d5d007fc34",
///         },
///     ],
///     approval_required=True,
///     connection_rules={
///         "rdp": {
///             "allowed_clipboard_local_to_remote_formats": [
///                 "text",
///                 "file",
///             ],
///             "allowed_clipboard_remote_to_local_formats": [
///                 "text",
///                 "file",
///             ],
///         },
///     },
///     excludes=[{
///         "certificate": {},
///     }],
///     isolation_required=False,
///     mfa_config={
///         "allowed_authenticators": [
///             "totp",
///             "biometrics",
///             "security_key",
///         ],
///         "mfa_disabled": False,
///         "session_duration": "24h",
///     },
///     purpose_justification_prompt="Please enter a justification for entering this protected domain.",
///     purpose_justification_required=True,
///     requires=[{
///         "certificate": {},
///     }],
///     session_duration="24h")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustAccessPolicy = new Cloudflare.ZeroTrustAccessPolicy("example_zero_trust_access_policy", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Decision = "allow",
///         Includes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessPolicyIncludeArgs
///             {
///                 Certificate = null,
///             },
///         },
///         Name = "Allow devs",
///         ApprovalGroups = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessPolicyApprovalGroupArgs
///             {
///                 ApprovalsNeeded = 1,
///                 EmailAddresses = new[]
///                 {
///                     "test1@cloudflare.com",
///                     "test2@cloudflare.com",
///                 },
///                 EmailListUuid = "email_list_uuid",
///             },
///             new Cloudflare.Inputs.ZeroTrustAccessPolicyApprovalGroupArgs
///             {
///                 ApprovalsNeeded = 3,
///                 EmailAddresses = new[]
///                 {
///                     "test@cloudflare.com",
///                     "test2@cloudflare.com",
///                 },
///                 EmailListUuid = "597147a1-976b-4ef2-9af0-81d5d007fc34",
///             },
///         },
///         ApprovalRequired = true,
///         ConnectionRules = new Cloudflare.Inputs.ZeroTrustAccessPolicyConnectionRulesArgs
///         {
///             Rdp = new Cloudflare.Inputs.ZeroTrustAccessPolicyConnectionRulesRdpArgs
///             {
///                 AllowedClipboardLocalToRemoteFormats = new[]
///                 {
///                     "text",
///                     "file",
///                 },
///                 AllowedClipboardRemoteToLocalFormats = new[]
///                 {
///                     "text",
///                     "file",
///                 },
///             },
///         },
///         Excludes = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessPolicyExcludeArgs
///             {
///                 Certificate = null,
///             },
///         },
///         IsolationRequired = false,
///         MfaConfig = new Cloudflare.Inputs.ZeroTrustAccessPolicyMfaConfigArgs
///         {
///             AllowedAuthenticators = new[]
///             {
///                 "totp",
///                 "biometrics",
///                 "security_key",
///             },
///             MfaDisabled = false,
///             SessionDuration = "24h",
///         },
///         PurposeJustificationPrompt = "Please enter a justification for entering this protected domain.",
///         PurposeJustificationRequired = true,
///         Requires = new[]
///         {
///             new Cloudflare.Inputs.ZeroTrustAccessPolicyRequireArgs
///             {
///                 Certificate = null,
///             },
///         },
///         SessionDuration = "24h",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewZeroTrustAccessPolicy(ctx, "example_zero_trust_access_policy", &cloudflare.ZeroTrustAccessPolicyArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Decision:  pulumi.String("allow"),
/// 			Includes: cloudflare.ZeroTrustAccessPolicyIncludeArray{
/// 				&cloudflare.ZeroTrustAccessPolicyIncludeArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessPolicyIncludeCertificateArgs{},
/// 				},
/// 			},
/// 			Name: pulumi.String("Allow devs"),
/// 			ApprovalGroups: cloudflare.ZeroTrustAccessPolicyApprovalGroupArray{
/// 				&cloudflare.ZeroTrustAccessPolicyApprovalGroupArgs{
/// 					ApprovalsNeeded: pulumi.Float64(1),
/// 					EmailAddresses: pulumi.StringArray{
/// 						pulumi.String("test1@cloudflare.com"),
/// 						pulumi.String("test2@cloudflare.com"),
/// 					},
/// 					EmailListUuid: pulumi.String("email_list_uuid"),
/// 				},
/// 				&cloudflare.ZeroTrustAccessPolicyApprovalGroupArgs{
/// 					ApprovalsNeeded: pulumi.Float64(3),
/// 					EmailAddresses: pulumi.StringArray{
/// 						pulumi.String("test@cloudflare.com"),
/// 						pulumi.String("test2@cloudflare.com"),
/// 					},
/// 					EmailListUuid: pulumi.String("597147a1-976b-4ef2-9af0-81d5d007fc34"),
/// 				},
/// 			},
/// 			ApprovalRequired: pulumi.Bool(true),
/// 			ConnectionRules: &cloudflare.ZeroTrustAccessPolicyConnectionRulesArgs{
/// 				Rdp: &cloudflare.ZeroTrustAccessPolicyConnectionRulesRdpArgs{
/// 					AllowedClipboardLocalToRemoteFormats: pulumi.StringArray{
/// 						pulumi.String("text"),
/// 						pulumi.String("file"),
/// 					},
/// 					AllowedClipboardRemoteToLocalFormats: pulumi.StringArray{
/// 						pulumi.String("text"),
/// 						pulumi.String("file"),
/// 					},
/// 				},
/// 			},
/// 			Excludes: cloudflare.ZeroTrustAccessPolicyExcludeArray{
/// 				&cloudflare.ZeroTrustAccessPolicyExcludeArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessPolicyExcludeCertificateArgs{},
/// 				},
/// 			},
/// 			IsolationRequired: pulumi.Bool(false),
/// 			MfaConfig: &cloudflare.ZeroTrustAccessPolicyMfaConfigArgs{
/// 				AllowedAuthenticators: pulumi.StringArray{
/// 					pulumi.String("totp"),
/// 					pulumi.String("biometrics"),
/// 					pulumi.String("security_key"),
/// 				},
/// 				MfaDisabled:     pulumi.Bool(false),
/// 				SessionDuration: pulumi.String("24h"),
/// 			},
/// 			PurposeJustificationPrompt:   pulumi.String("Please enter a justification for entering this protected domain."),
/// 			PurposeJustificationRequired: pulumi.Bool(true),
/// 			Requires: cloudflare.ZeroTrustAccessPolicyRequireArray{
/// 				&cloudflare.ZeroTrustAccessPolicyRequireArgs{
/// 					Certificate: &cloudflare.ZeroTrustAccessPolicyRequireCertificateArgs{},
/// 				},
/// 			},
/// 			SessionDuration: pulumi.String("24h"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_zerotrustaccesspolicy" "example_zero_trust_access_policy" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   decision   = "allow"
///   includes {
///     certificate = {}
///   }
///   name = "Allow devs"
///   approval_groups {
///     approvals_needed = 1
///     email_addresses  = ["test1@cloudflare.com", "test2@cloudflare.com"]
///     email_list_uuid  = "email_list_uuid"
///   }
///   approval_groups {
///     approvals_needed = 3
///     email_addresses  = ["test@cloudflare.com", "test2@cloudflare.com"]
///     email_list_uuid  = "597147a1-976b-4ef2-9af0-81d5d007fc34"
///   }
///   approval_required = true
///   connection_rules = {
///     rdp = {
///       allowed_clipboard_local_to_remote_formats = ["text", "file"]
///       allowed_clipboard_remote_to_local_formats = ["text", "file"]
///     }
///   }
///   excludes {
///     certificate = {}
///   }
///   isolation_required = false
///   mfa_config = {
///     allowed_authenticators = ["totp", "biometrics", "security_key"]
///     mfa_disabled           = false
///     session_duration       = "24h"
///   }
///   purpose_justification_prompt   = "Please enter a justification for entering this protected domain."
///   purpose_justification_required = true
///   requires {
///     certificate = {}
///   }
///   session_duration = "24h"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustAccessPolicy;
/// import com.pulumi.cloudflare.ZeroTrustAccessPolicyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyIncludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyIncludeCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyApprovalGroupArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyConnectionRulesArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyConnectionRulesRdpArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyExcludeArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyExcludeCertificateArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyMfaConfigArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyRequireArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustAccessPolicyRequireCertificateArgs;
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
///         var exampleZeroTrustAccessPolicy = new ZeroTrustAccessPolicy("exampleZeroTrustAccessPolicy", ZeroTrustAccessPolicyArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .decision("allow")
///             .includes(ZeroTrustAccessPolicyIncludeArgs.builder()
///                 .certificate(ZeroTrustAccessPolicyIncludeCertificateArgs.builder()
///                     .build())
///                 .build())
///             .name("Allow devs")
///             .approvalGroups(
///                 ZeroTrustAccessPolicyApprovalGroupArgs.builder()
///                     .approvalsNeeded(1.0)
///                     .emailAddresses(
///                         "test1@cloudflare.com",
///                         "test2@cloudflare.com")
///                     .emailListUuid("email_list_uuid")
///                     .build(),
///                 ZeroTrustAccessPolicyApprovalGroupArgs.builder()
///                     .approvalsNeeded(3.0)
///                     .emailAddresses(
///                         "test@cloudflare.com",
///                         "test2@cloudflare.com")
///                     .emailListUuid("597147a1-976b-4ef2-9af0-81d5d007fc34")
///                     .build())
///             .approvalRequired(true)
///             .connectionRules(ZeroTrustAccessPolicyConnectionRulesArgs.builder()
///                 .rdp(ZeroTrustAccessPolicyConnectionRulesRdpArgs.builder()
///                     .allowedClipboardLocalToRemoteFormats(
///                         "text",
///                         "file")
///                     .allowedClipboardRemoteToLocalFormats(
///                         "text",
///                         "file")
///                     .build())
///                 .build())
///             .excludes(ZeroTrustAccessPolicyExcludeArgs.builder()
///                 .certificate(ZeroTrustAccessPolicyExcludeCertificateArgs.builder()
///                     .build())
///                 .build())
///             .isolationRequired(false)
///             .mfaConfig(ZeroTrustAccessPolicyMfaConfigArgs.builder()
///                 .allowedAuthenticators(
///                     "totp",
///                     "biometrics",
///                     "security_key")
///                 .mfaDisabled(false)
///                 .sessionDuration("24h")
///                 .build())
///             .purposeJustificationPrompt("Please enter a justification for entering this protected domain.")
///             .purposeJustificationRequired(true)
///             .requires(ZeroTrustAccessPolicyRequireArgs.builder()
///                 .certificate(ZeroTrustAccessPolicyRequireCertificateArgs.builder()
///                     .build())
///                 .build())
///             .sessionDuration("24h")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustAccessPolicy:
///     type: cloudflare:ZeroTrustAccessPolicy
///     name: example_zero_trust_access_policy
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       decision: allow
///       includes:
///         - certificate: {}
///       name: Allow devs
///       approvalGroups:
///         - approvalsNeeded: 1
///           emailAddresses:
///             - test1@cloudflare.com
///             - test2@cloudflare.com
///           emailListUuid: email_list_uuid
///         - approvalsNeeded: 3
///           emailAddresses:
///             - test@cloudflare.com
///             - test2@cloudflare.com
///           emailListUuid: 597147a1-976b-4ef2-9af0-81d5d007fc34
///       approvalRequired: true
///       connectionRules:
///         rdp:
///           allowedClipboardLocalToRemoteFormats:
///             - text
///             - file
///           allowedClipboardRemoteToLocalFormats:
///             - text
///             - file
///       excludes:
///         - certificate: {}
///       isolationRequired: false
///       mfaConfig:
///         allowedAuthenticators:
///           - totp
///           - biometrics
///           - security_key
///         mfaDisabled: false
///         sessionDuration: 24h
///       purposeJustificationPrompt: Please enter a justification for entering this protected domain.
///       purposeJustificationRequired: true
///       requires:
///         - certificate: {}
///       sessionDuration: 24h
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accessPolicy:AccessPolicy example '<account_id>/<policy_id>'
/// ```
class AccessPolicy extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Number of access applications currently using this policy.
  late final pulumi.Output<int> appCount;
  /// Administrators who can approve a temporary authentication request.
  late final pulumi.Output<List<AccessPolicyApprovalGroup>?> approvalGroups;
  /// Requires the user to request access from an administrator at the start of each session.
  late final pulumi.Output<bool?> approvalRequired;
  /// The rules that define how users may connect to targets secured by your application.
  late final pulumi.Output<AccessPolicyConnectionRules?> connectionRules;
  late final pulumi.Output<String> createdAt;
  /// The action Access will take if a user matches this policy. Infrastructure application policies can only use the Allow action.
  /// Available values: "allow", "deny", "nonIdentity", "bypass".
  late final pulumi.Output<String> decision;
  /// Rules evaluated with a NOT logical operator. To match the policy, a user cannot meet any of the Exclude rules.
  late final pulumi.Output<List<AccessPolicyExclude>> excludes;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  late final pulumi.Output<List<AccessPolicyInclude>> includes;
  /// Require this application to be served in an isolated browser for users matching this policy. 'Client Web Isolation' must be on for the account in order to use this feature.
  late final pulumi.Output<bool?> isolationRequired;
  /// Configures multi-factor authentication (MFA) settings.
  late final pulumi.Output<AccessPolicyMfaConfig?> mfaConfig;
  /// The name of the Access policy.
  late final pulumi.Output<String> name;
  /// A custom message that will appear on the purpose justification screen.
  late final pulumi.Output<String?> purposeJustificationPrompt;
  /// Require users to enter a justification when they log in to the application.
  late final pulumi.Output<bool?> purposeJustificationRequired;
  /// Rules evaluated with an AND logical operator. To match the policy, a user must meet all of the Require rules.
  late final pulumi.Output<List<AccessPolicyRequire>> requires;
  late final pulumi.Output<bool> reusable;
  /// The amount of time that tokens issued for the application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
  late final pulumi.Output<String> sessionDuration;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_index_access_policy_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessPolicy:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    appCount = registerOutput<int>('appCount');
    approvalGroups = registerOutput<List<AccessPolicyApprovalGroup>?>('approvalGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyApprovalGroup>(guardedValue, (value) => AccessPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>())); });
    approvalRequired = registerOutput<bool?>('approvalRequired');
    connectionRules = registerOutput<AccessPolicyConnectionRules?>('connectionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    decision = registerOutput<String>('decision');
    excludes = registerOutput<List<AccessPolicyExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyExclude>(guardedValue, (value) => AccessPolicyExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessPolicyInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyInclude>(guardedValue, (value) => AccessPolicyInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isolationRequired = registerOutput<bool?>('isolationRequired');
    mfaConfig = registerOutput<AccessPolicyMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    purposeJustificationPrompt = registerOutput<String?>('purposeJustificationPrompt');
    purposeJustificationRequired = registerOutput<bool?>('purposeJustificationRequired');
    requires = registerOutput<List<AccessPolicyRequire>>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyRequire>(guardedValue, (value) => AccessPolicyRequire.fromMap((value as Map).cast<String, dynamic>())); });
    reusable = registerOutput<bool>('reusable');
    sessionDuration = registerOutput<String>('sessionDuration');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [AccessPolicy] resource's state with the given [name] and [id].
  static AccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccessPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accessPolicy:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    appCount = registerOutput<int>('appCount');
    approvalGroups = registerOutput<List<AccessPolicyApprovalGroup>?>('approvalGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyApprovalGroup>(guardedValue, (value) => AccessPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>())); });
    approvalRequired = registerOutput<bool?>('approvalRequired');
    connectionRules = registerOutput<AccessPolicyConnectionRules?>('connectionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    decision = registerOutput<String>('decision');
    excludes = registerOutput<List<AccessPolicyExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyExclude>(guardedValue, (value) => AccessPolicyExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessPolicyInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyInclude>(guardedValue, (value) => AccessPolicyInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isolationRequired = registerOutput<bool?>('isolationRequired');
    mfaConfig = registerOutput<AccessPolicyMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    purposeJustificationPrompt = registerOutput<String?>('purposeJustificationPrompt');
    purposeJustificationRequired = registerOutput<bool?>('purposeJustificationRequired');
    requires = registerOutput<List<AccessPolicyRequire>>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyRequire>(guardedValue, (value) => AccessPolicyRequire.fromMap((value as Map).cast<String, dynamic>())); });
    reusable = registerOutput<bool>('reusable');
    sessionDuration = registerOutput<String>('sessionDuration');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [AccessPolicy] resource.
  AccessPolicy.reference(String urn)
    : super(
        'cloudflare:index/accessPolicy:AccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    appCount = registerOutput<int>('appCount');
    approvalGroups = registerOutput<List<AccessPolicyApprovalGroup>?>('approvalGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyApprovalGroup>(guardedValue, (value) => AccessPolicyApprovalGroup.fromMap((value as Map).cast<String, dynamic>())); });
    approvalRequired = registerOutput<bool?>('approvalRequired');
    connectionRules = registerOutput<AccessPolicyConnectionRules?>('connectionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyConnectionRules.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    decision = registerOutput<String>('decision');
    excludes = registerOutput<List<AccessPolicyExclude>>('excludes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyExclude>(guardedValue, (value) => AccessPolicyExclude.fromMap((value as Map).cast<String, dynamic>())); });
    includes = registerOutput<List<AccessPolicyInclude>>('includes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyInclude>(guardedValue, (value) => AccessPolicyInclude.fromMap((value as Map).cast<String, dynamic>())); });
    isolationRequired = registerOutput<bool?>('isolationRequired');
    mfaConfig = registerOutput<AccessPolicyMfaConfig?>('mfaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPolicyMfaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    purposeJustificationPrompt = registerOutput<String?>('purposeJustificationPrompt');
    purposeJustificationRequired = registerOutput<bool?>('purposeJustificationRequired');
    requires = registerOutput<List<AccessPolicyRequire>>('requires', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessPolicyRequire>(guardedValue, (value) => AccessPolicyRequire.fromMap((value as Map).cast<String, dynamic>())); });
    reusable = registerOutput<bool>('reusable');
    sessionDuration = registerOutput<String>('sessionDuration');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
