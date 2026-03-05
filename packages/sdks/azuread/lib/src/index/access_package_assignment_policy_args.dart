// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_approval_settings.dart';
import 'access_package_assignment_policy_assignment_review_settings.dart';
import 'access_package_assignment_policy_question.dart';
import 'access_package_assignment_policy_requestor_settings.dart';

/// {@template pulumi_index_access_package_assignment_policy_access_package_assignment_policy_args_doc}
/// The set of arguments for AccessPackageAssignmentPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_access_package_assignment_policy_access_package_assignment_policy_args_doc}
class AccessPackageAssignmentPolicyArgs {
  /// The ID of the access package that will contain the policy.
  final pulumi.Input<String> accessPackageId;
  /// An `approval_settings` block to specify whether approvals are required and how they are obtained, as documented below.
  final pulumi.Input<AccessPackageAssignmentPolicyApprovalSettings>? approvalSettings;
  /// An `assignment_review_settings` block, to specify whether assignment review is needed and how it is conducted, as documented below.
  final pulumi.Input<AccessPackageAssignmentPolicyAssignmentReviewSettings>? assignmentReviewSettings;
  /// The description of the policy.
  final pulumi.Input<String> description;
  /// The display name of the policy.
  final pulumi.Input<String> displayName;
  /// How many days this assignment is valid for.
  final pulumi.Input<int>? durationInDays;
  /// The date that this assignment expires, formatted as an RFC3339 date string in UTC(e.g. 2018-01-01T01:02:03Z).
  final pulumi.Input<String>? expirationDate;
  /// Whether users will be able to request extension of their access to this package before their access expires.
  final pulumi.Input<bool>? extensionEnabled;
  /// One or more `question` blocks for the requestor, as documented below.
  final pulumi.Input<List<AccessPackageAssignmentPolicyQuestion>>? questions;
  /// A `requestor_settings` block to configure the users who can request access, as documented below.
  final pulumi.Input<AccessPackageAssignmentPolicyRequestorSettings>? requestorSettings;

  /// Creates a new [AccessPackageAssignmentPolicyArgs].
  /// [accessPackageId] The ID of the access package that will contain the policy.
  /// [approvalSettings] An `approval_settings` block to specify whether approvals are required and how they are obtained, as documented below.
  /// [assignmentReviewSettings] An `assignment_review_settings` block, to specify whether assignment review is needed and how it is conducted, as documented below.
  /// [description] The description of the policy.
  /// [displayName] The display name of the policy.
  /// [durationInDays] How many days this assignment is valid for.
  /// [expirationDate] The date that this assignment expires, formatted as an RFC3339 date string in UTC(e.g. 2018-01-01T01:02:03Z).
  /// [extensionEnabled] Whether users will be able to request extension of their access to this package before their access expires.
  /// [questions] One or more `question` blocks for the requestor, as documented below.
  /// [requestorSettings] A `requestor_settings` block to configure the users who can request access, as documented below.
  AccessPackageAssignmentPolicyArgs({
    required this.accessPackageId,
    this.approvalSettings,
    this.assignmentReviewSettings,
    required this.description,
    required this.displayName,
    this.durationInDays,
    this.expirationDate,
    this.extensionEnabled,
    this.questions,
    this.requestorSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPackageId': accessPackageId,
      'approvalSettings': ?pulumi.Input.mapOptionalInputValue<AccessPackageAssignmentPolicyApprovalSettings, Map<String, dynamic>>(approvalSettings, (value) => value.toMap()),
      'assignmentReviewSettings': ?pulumi.Input.mapOptionalInputValue<AccessPackageAssignmentPolicyAssignmentReviewSettings, Map<String, dynamic>>(assignmentReviewSettings, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'durationInDays': ?durationInDays,
      'expirationDate': ?expirationDate,
      'extensionEnabled': ?extensionEnabled,
      'questions': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyQuestion>, List<Map<String, dynamic>>>(questions, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyQuestion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestorSettings': ?pulumi.Input.mapOptionalInputValue<AccessPackageAssignmentPolicyRequestorSettings, Map<String, dynamic>>(requestorSettings, (value) => value.toMap()),
    };
  }

  factory AccessPackageAssignmentPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyArgs(
      accessPackageId: pulumi.Input.fromValue(map['accessPackageId'] as String),
      approvalSettings: (() { final guardedValue = map['approvalSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPackageAssignmentPolicyApprovalSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assignmentReviewSettings: (() { final guardedValue = map['assignmentReviewSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPackageAssignmentPolicyAssignmentReviewSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      durationInDays: (() { final guardedValue = map['durationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionEnabled: (() { final guardedValue = map['extensionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      questions: (() { final guardedValue = map['questions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPackageAssignmentPolicyQuestion>(guardedValue, (value) => AccessPackageAssignmentPolicyQuestion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestorSettings: (() { final guardedValue = map['requestorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPackageAssignmentPolicyRequestorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

