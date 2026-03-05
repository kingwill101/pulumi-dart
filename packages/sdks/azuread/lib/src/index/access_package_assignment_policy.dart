import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_approval_settings.dart';
import 'access_package_assignment_policy_args.dart';
import 'access_package_assignment_policy_assignment_review_settings.dart';
import 'access_package_assignment_policy_requestor_settings.dart';
import 'access_package_assignment_policy_state.dart';

/// Manages an assignment policy for an access package within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this resource requires `Global Administrator` directory role, or one of the `Catalog Owner` and `Access Package Manager` role in Identity Governance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "group-name",
///     securityEnabled: true,
/// });
/// const exampleAccessPackageCatalog = new azuread.AccessPackageCatalog("example", {
///     displayName: "example-catalog",
///     description: "Example catalog",
/// });
/// const exampleAccessPackage = new azuread.AccessPackage("example", {
///     catalogId: exampleAccessPackageCatalog.id,
///     displayName: "access-package",
///     description: "Access Package",
/// });
/// const exampleAccessPackageAssignmentPolicy = new azuread.AccessPackageAssignmentPolicy("example", {
///     accessPackageId: exampleAccessPackage.id,
///     displayName: "assignment-policy",
///     description: "My assignment policy",
///     durationInDays: 90,
///     requestorSettings: {
///         scopeType: "AllExistingDirectoryMemberUsers",
///     },
///     approvalSettings: {
///         approvalRequired: true,
///         approvalStages: [{
///             approvalTimeoutInDays: 14,
///             primaryApprovers: [{
///                 objectId: example.objectId,
///                 subjectType: "groupMembers",
///             }],
///         }],
///     },
///     assignmentReviewSettings: {
///         enabled: true,
///         reviewFrequency: "weekly",
///         durationInDays: 3,
///         reviewType: "Self",
///         accessReviewTimeoutBehavior: "keepAccess",
///     },
///     questions: [{
///         text: {
///             defaultText: "hello, how are you?",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="group-name",
///     security_enabled=True)
/// example_access_package_catalog = azuread.AccessPackageCatalog("example",
///     display_name="example-catalog",
///     description="Example catalog")
/// example_access_package = azuread.AccessPackage("example",
///     catalog_id=example_access_package_catalog.id,
///     display_name="access-package",
///     description="Access Package")
/// example_access_package_assignment_policy = azuread.AccessPackageAssignmentPolicy("example",
///     access_package_id=example_access_package.id,
///     display_name="assignment-policy",
///     description="My assignment policy",
///     duration_in_days=90,
///     requestor_settings={
///         "scope_type": "AllExistingDirectoryMemberUsers",
///     },
///     approval_settings={
///         "approval_required": True,
///         "approval_stages": [{
///             "approval_timeout_in_days": 14,
///             "primary_approvers": [{
///                 "object_id": example.object_id,
///                 "subject_type": "groupMembers",
///             }],
///         }],
///     },
///     assignment_review_settings={
///         "enabled": True,
///         "review_frequency": "weekly",
///         "duration_in_days": 3,
///         "review_type": "Self",
///         "access_review_timeout_behavior": "keepAccess",
///     },
///     questions=[{
///         "text": {
///             "default_text": "hello, how are you?",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "group-name",
///         SecurityEnabled = true,
///     });
///
///     var exampleAccessPackageCatalog = new AzureAD.AccessPackageCatalog("example", new()
///     {
///         DisplayName = "example-catalog",
///         Description = "Example catalog",
///     });
///
///     var exampleAccessPackage = new AzureAD.AccessPackage("example", new()
///     {
///         CatalogId = exampleAccessPackageCatalog.Id,
///         DisplayName = "access-package",
///         Description = "Access Package",
///     });
///
///     var exampleAccessPackageAssignmentPolicy = new AzureAD.AccessPackageAssignmentPolicy("example", new()
///     {
///         AccessPackageId = exampleAccessPackage.Id,
///         DisplayName = "assignment-policy",
///         Description = "My assignment policy",
///         DurationInDays = 90,
///         RequestorSettings = new AzureAD.Inputs.AccessPackageAssignmentPolicyRequestorSettingsArgs
///         {
///             ScopeType = "AllExistingDirectoryMemberUsers",
///         },
///         ApprovalSettings = new AzureAD.Inputs.AccessPackageAssignmentPolicyApprovalSettingsArgs
///         {
///             ApprovalRequired = true,
///             ApprovalStages = new[]
///             {
///                 new AzureAD.Inputs.AccessPackageAssignmentPolicyApprovalSettingsApprovalStageArgs
///                 {
///                     ApprovalTimeoutInDays = 14,
///                     PrimaryApprovers = new[]
///                     {
///                         new AzureAD.Inputs.AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApproverArgs
///                         {
///                             ObjectId = example.ObjectId,
///                             SubjectType = "groupMembers",
///                         },
///                     },
///                 },
///             },
///         },
///         AssignmentReviewSettings = new AzureAD.Inputs.AccessPackageAssignmentPolicyAssignmentReviewSettingsArgs
///         {
///             Enabled = true,
///             ReviewFrequency = "weekly",
///             DurationInDays = 3,
///             ReviewType = "Self",
///             AccessReviewTimeoutBehavior = "keepAccess",
///         },
///         Questions = new[]
///         {
///             new AzureAD.Inputs.AccessPackageAssignmentPolicyQuestionArgs
///             {
///                 Text = new AzureAD.Inputs.AccessPackageAssignmentPolicyQuestionTextArgs
///                 {
///                     DefaultText = "hello, how are you?",
///                 },
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
/// 		example, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("group-name"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPackageCatalog, err := azuread.NewAccessPackageCatalog(ctx, "example", &azuread.AccessPackageCatalogArgs{
/// 			DisplayName: pulumi.String("example-catalog"),
/// 			Description: pulumi.String("Example catalog"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPackage, err := azuread.NewAccessPackage(ctx, "example", &azuread.AccessPackageArgs{
/// 			CatalogId:   exampleAccessPackageCatalog.ID(),
/// 			DisplayName: pulumi.String("access-package"),
/// 			Description: pulumi.String("Access Package"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackageAssignmentPolicy(ctx, "example", &azuread.AccessPackageAssignmentPolicyArgs{
/// 			AccessPackageId: exampleAccessPackage.ID(),
/// 			DisplayName:     pulumi.String("assignment-policy"),
/// 			Description:     pulumi.String("My assignment policy"),
/// 			DurationInDays:  pulumi.Int(90),
/// 			RequestorSettings: &azuread.AccessPackageAssignmentPolicyRequestorSettingsArgs{
/// 				ScopeType: pulumi.String("AllExistingDirectoryMemberUsers"),
/// 			},
/// 			ApprovalSettings: &azuread.AccessPackageAssignmentPolicyApprovalSettingsArgs{
/// 				ApprovalRequired: pulumi.Bool(true),
/// 				ApprovalStages: azuread.AccessPackageAssignmentPolicyApprovalSettingsApprovalStageArray{
/// 					&azuread.AccessPackageAssignmentPolicyApprovalSettingsApprovalStageArgs{
/// 						ApprovalTimeoutInDays: pulumi.Int(14),
/// 						PrimaryApprovers: azuread.AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApproverArray{
/// 							&azuread.AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApproverArgs{
/// 								ObjectId:    example.ObjectId,
/// 								SubjectType: pulumi.String("groupMembers"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			AssignmentReviewSettings: &azuread.AccessPackageAssignmentPolicyAssignmentReviewSettingsArgs{
/// 				Enabled:                     pulumi.Bool(true),
/// 				ReviewFrequency:             pulumi.String("weekly"),
/// 				DurationInDays:              pulumi.Int(3),
/// 				ReviewType:                  pulumi.String("Self"),
/// 				AccessReviewTimeoutBehavior: pulumi.String("keepAccess"),
/// 			},
/// 			Questions: azuread.AccessPackageAssignmentPolicyQuestionArray{
/// 				&azuread.AccessPackageAssignmentPolicyQuestionArgs{
/// 					Text: &azuread.AccessPackageAssignmentPolicyQuestionTextArgs{
/// 						DefaultText: pulumi.String("hello, how are you?"),
/// 					},
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.AccessPackageCatalog;
/// import com.pulumi.azuread.AccessPackageCatalogArgs;
/// import com.pulumi.azuread.AccessPackage;
/// import com.pulumi.azuread.AccessPackageArgs;
/// import com.pulumi.azuread.AccessPackageAssignmentPolicy;
/// import com.pulumi.azuread.AccessPackageAssignmentPolicyArgs;
/// import com.pulumi.azuread.inputs.AccessPackageAssignmentPolicyRequestorSettingsArgs;
/// import com.pulumi.azuread.inputs.AccessPackageAssignmentPolicyApprovalSettingsArgs;
/// import com.pulumi.azuread.inputs.AccessPackageAssignmentPolicyAssignmentReviewSettingsArgs;
/// import com.pulumi.azuread.inputs.AccessPackageAssignmentPolicyQuestionArgs;
/// import com.pulumi.azuread.inputs.AccessPackageAssignmentPolicyQuestionTextArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("group-name")
///             .securityEnabled(true)
///             .build());
///
///         var exampleAccessPackageCatalog = new AccessPackageCatalog("exampleAccessPackageCatalog", AccessPackageCatalogArgs.builder()
///             .displayName("example-catalog")
///             .description("Example catalog")
///             .build());
///
///         var exampleAccessPackage = new AccessPackage("exampleAccessPackage", AccessPackageArgs.builder()
///             .catalogId(exampleAccessPackageCatalog.id())
///             .displayName("access-package")
///             .description("Access Package")
///             .build());
///
///         var exampleAccessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy("exampleAccessPackageAssignmentPolicy", AccessPackageAssignmentPolicyArgs.builder()
///             .accessPackageId(exampleAccessPackage.id())
///             .displayName("assignment-policy")
///             .description("My assignment policy")
///             .durationInDays(90)
///             .requestorSettings(AccessPackageAssignmentPolicyRequestorSettingsArgs.builder()
///                 .scopeType("AllExistingDirectoryMemberUsers")
///                 .build())
///             .approvalSettings(AccessPackageAssignmentPolicyApprovalSettingsArgs.builder()
///                 .approvalRequired(true)
///                 .approvalStages(AccessPackageAssignmentPolicyApprovalSettingsApprovalStageArgs.builder()
///                     .approvalTimeoutInDays(14)
///                     .primaryApprovers(AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApproverArgs.builder()
///                         .objectId(example.objectId())
///                         .subjectType("groupMembers")
///                         .build())
///                     .build())
///                 .build())
///             .assignmentReviewSettings(AccessPackageAssignmentPolicyAssignmentReviewSettingsArgs.builder()
///                 .enabled(true)
///                 .reviewFrequency("weekly")
///                 .durationInDays(3)
///                 .reviewType("Self")
///                 .accessReviewTimeoutBehavior("keepAccess")
///                 .build())
///             .questions(AccessPackageAssignmentPolicyQuestionArgs.builder()
///                 .text(AccessPackageAssignmentPolicyQuestionTextArgs.builder()
///                     .defaultText("hello, how are you?")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: group-name
///       securityEnabled: true
///   exampleAccessPackageCatalog:
///     type: azuread:AccessPackageCatalog
///     name: example
///     properties:
///       displayName: example-catalog
///       description: Example catalog
///   exampleAccessPackage:
///     type: azuread:AccessPackage
///     name: example
///     properties:
///       catalogId: ${exampleAccessPackageCatalog.id}
///       displayName: access-package
///       description: Access Package
///   exampleAccessPackageAssignmentPolicy:
///     type: azuread:AccessPackageAssignmentPolicy
///     name: example
///     properties:
///       accessPackageId: ${exampleAccessPackage.id}
///       displayName: assignment-policy
///       description: My assignment policy
///       durationInDays: 90
///       requestorSettings:
///         scopeType: AllExistingDirectoryMemberUsers
///       approvalSettings:
///         approvalRequired: true
///         approvalStages:
///           - approvalTimeoutInDays: 14
///             primaryApprovers:
///               - objectId: ${example.objectId}
///                 subjectType: groupMembers
///       assignmentReviewSettings:
///         enabled: true
///         reviewFrequency: weekly
///         durationInDays: 3
///         reviewType: Self
///         accessReviewTimeoutBehavior: keepAccess
///       questions:
///         - text:
///             defaultText: hello, how are you?
/// ```
///
///
/// ## Import
///
/// An access package assignment policy can be imported using the ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackageAssignmentPolicy:AccessPackageAssignmentPolicy example 00000000-0000-0000-0000-000000000000
/// ```
class AccessPackageAssignmentPolicy extends pulumi.CustomResource {
  /// The ID of the access package that will contain the policy.
  late final pulumi.Output<String> accessPackageId;

  /// An `approval_settings` block to specify whether approvals are required and how they are obtained, as documented below.
  late final pulumi.Output<AccessPackageAssignmentPolicyApprovalSettings?>
  approvalSettings;

  /// An `assignment_review_settings` block, to specify whether assignment review is needed and how it is conducted, as documented below.
  late final pulumi.Output<
    AccessPackageAssignmentPolicyAssignmentReviewSettings?
  >
  assignmentReviewSettings;

  /// The description of the policy.
  late final pulumi.Output<String> description;

  /// The display name of the policy.
  late final pulumi.Output<String> displayName;

  /// How many days this assignment is valid for.
  late final pulumi.Output<int?> durationInDays;

  /// The date that this assignment expires, formatted as an RFC3339 date string in UTC(e.g. 2018-01-01T01:02:03Z).
  late final pulumi.Output<String?> expirationDate;

  /// Whether users will be able to request extension of their access to this package before their access expires.
  late final pulumi.Output<bool?> extensionEnabled;

  /// One or more `question` blocks for the requestor, as documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> questions;

  /// A `requestor_settings` block to configure the users who can request access, as documented below.
  late final pulumi.Output<AccessPackageAssignmentPolicyRequestorSettings?>
  requestorSettings;

  /// Creates a new [AccessPackageAssignmentPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackageAssignmentPolicy]. {@macro pulumi_index_access_package_assignment_policy_access_package_assignment_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackageAssignmentPolicy(
    String name, {
    AccessPackageAssignmentPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/accessPackageAssignmentPolicy:AccessPackageAssignmentPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPackageId = registerOutput<String>('accessPackageId');
    approvalSettings =
        registerOutput<AccessPackageAssignmentPolicyApprovalSettings?>(
          'approvalSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyApprovalSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    assignmentReviewSettings =
        registerOutput<AccessPackageAssignmentPolicyAssignmentReviewSettings?>(
          'assignmentReviewSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyAssignmentReviewSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    durationInDays = registerOutput<int?>('durationInDays');
    expirationDate = registerOutput<String?>('expirationDate');
    extensionEnabled = registerOutput<bool?>('extensionEnabled');
    questions = registerOutput<List<Map<String, dynamic>>?>('questions');
    requestorSettings =
        registerOutput<AccessPackageAssignmentPolicyRequestorSettings?>(
          'requestorSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyRequestorSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [AccessPackageAssignmentPolicy] resource's state with the given [name] and [id].
  static AccessPackageAssignmentPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccessPackageAssignmentPolicyState? state,
  }) {
    return AccessPackageAssignmentPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPackageAssignmentPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/accessPackageAssignmentPolicy:AccessPackageAssignmentPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessPackageId = registerOutput<String>('accessPackageId');
    approvalSettings =
        registerOutput<AccessPackageAssignmentPolicyApprovalSettings?>(
          'approvalSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyApprovalSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    assignmentReviewSettings =
        registerOutput<AccessPackageAssignmentPolicyAssignmentReviewSettings?>(
          'assignmentReviewSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyAssignmentReviewSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    durationInDays = registerOutput<int?>('durationInDays');
    expirationDate = registerOutput<String?>('expirationDate');
    extensionEnabled = registerOutput<bool?>('extensionEnabled');
    questions = registerOutput<List<Map<String, dynamic>>?>('questions');
    requestorSettings =
        registerOutput<AccessPackageAssignmentPolicyRequestorSettings?>(
          'requestorSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AccessPackageAssignmentPolicyRequestorSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
