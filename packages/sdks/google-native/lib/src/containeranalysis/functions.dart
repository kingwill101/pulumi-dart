import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_args.dart';
import 'get_note_containeranalysis_v1alpha1_args.dart';
import 'get_note_containeranalysis_v1alpha1_result.dart';
import 'get_note_containeranalysis_v1beta1_args.dart';
import 'get_note_containeranalysis_v1beta1_result.dart';
import 'get_note_iam_policy_args.dart';
import 'get_note_iam_policy_containeranalysis_v1alpha1_args.dart';
import 'get_note_iam_policy_containeranalysis_v1alpha1_result.dart';
import 'get_note_iam_policy_containeranalysis_v1beta1_args.dart';
import 'get_note_iam_policy_containeranalysis_v1beta1_result.dart';
import 'get_note_iam_policy_result.dart';
import 'get_note_result.dart';
import 'get_occurrence_args.dart';
import 'get_occurrence_containeranalysis_v1alpha1_args.dart';
import 'get_occurrence_containeranalysis_v1alpha1_result.dart';
import 'get_occurrence_containeranalysis_v1beta1_args.dart';
import 'get_occurrence_containeranalysis_v1beta1_result.dart';
import 'get_occurrence_iam_policy_args.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1alpha1_args.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1alpha1_result.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1beta1_args.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1beta1_result.dart';
import 'get_occurrence_iam_policy_result.dart';
import 'get_occurrence_result.dart';
import 'get_provider_note_iam_policy_args.dart';
import 'get_provider_note_iam_policy_result.dart';

/// Gets the specified note.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1_get_note_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteResult> getNote(
  GetNoteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteResult.fromMap(result);
}

pulumi.Output<GetNoteResult> getNoteOutput(
  GetNoteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNote',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteResult.fromMap);
}

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1_get_note_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteIamPolicyResult> getNoteIamPolicy(
  GetNoteIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyResult.fromMap(result);
}

pulumi.Output<GetNoteIamPolicyResult> getNoteIamPolicyOutput(
  GetNoteIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNoteIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteIamPolicyResult.fromMap);
}

/// Gets the specified occurrence.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1_get_occurrence_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceResult> getOccurrence(
  GetOccurrenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceResult.fromMap(result);
}

pulumi.Output<GetOccurrenceResult> getOccurrenceOutput(
  GetOccurrenceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrence',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceResult.fromMap);
}

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1_get_occurrence_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceIamPolicyResult> getOccurrenceIamPolicy(
  GetOccurrenceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrenceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetOccurrenceIamPolicyResult> getOccurrenceIamPolicyOutput(
  GetOccurrenceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrenceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceIamPolicyResult.fromMap);
}

/// Returns the requested `Note`.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1alpha1_get_note_containeranalysis_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteContaineranalysisV1alpha1Result> getNoteContaineranalysisV1alpha1(
  GetNoteContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteContaineranalysisV1alpha1Result.fromMap(result);
}

pulumi.Output<GetNoteContaineranalysisV1alpha1Result> getNoteContaineranalysisV1alpha1Output(
  GetNoteContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNote',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteContaineranalysisV1alpha1Result.fromMap);
}

/// Gets the access control policy for a note or an `Occurrence` resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. Attempting to call this method on a resource without the required permission will result in a `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1alpha1_get_note_iam_policy_containeranalysis_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteIamPolicyContaineranalysisV1alpha1Result> getNoteIamPolicyContaineranalysisV1alpha1(
  GetNoteIamPolicyContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyContaineranalysisV1alpha1Result.fromMap(result);
}

pulumi.Output<GetNoteIamPolicyContaineranalysisV1alpha1Result> getNoteIamPolicyContaineranalysisV1alpha1Output(
  GetNoteIamPolicyContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNoteIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteIamPolicyContaineranalysisV1alpha1Result.fromMap);
}

/// Returns the requested `Occurrence`.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1alpha1_get_occurrence_containeranalysis_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceContaineranalysisV1alpha1Result> getOccurrenceContaineranalysisV1alpha1(
  GetOccurrenceContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceContaineranalysisV1alpha1Result.fromMap(result);
}

pulumi.Output<GetOccurrenceContaineranalysisV1alpha1Result> getOccurrenceContaineranalysisV1alpha1Output(
  GetOccurrenceContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrence',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceContaineranalysisV1alpha1Result.fromMap);
}

/// Gets the access control policy for a note or an `Occurrence` resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. Attempting to call this method on a resource without the required permission will result in a `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1alpha1_get_occurrence_iam_policy_containeranalysis_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceIamPolicyContaineranalysisV1alpha1Result> getOccurrenceIamPolicyContaineranalysisV1alpha1(
  GetOccurrenceIamPolicyContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrenceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyContaineranalysisV1alpha1Result.fromMap(result);
}

pulumi.Output<GetOccurrenceIamPolicyContaineranalysisV1alpha1Result> getOccurrenceIamPolicyContaineranalysisV1alpha1Output(
  GetOccurrenceIamPolicyContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrenceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceIamPolicyContaineranalysisV1alpha1Result.fromMap);
}

/// Gets the access control policy for a note or an `Occurrence` resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. Attempting to call this method on a resource without the required permission will result in a `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1alpha1_get_provider_note_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderNoteIamPolicyResult> getProviderNoteIamPolicy(
  GetProviderNoteIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getProviderNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderNoteIamPolicyResult.fromMap(result);
}

pulumi.Output<GetProviderNoteIamPolicyResult> getProviderNoteIamPolicyOutput(
  GetProviderNoteIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getProviderNoteIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProviderNoteIamPolicyResult.fromMap);
}

/// Gets the specified note.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1beta1_get_note_containeranalysis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteContaineranalysisV1beta1Result> getNoteContaineranalysisV1beta1(
  GetNoteContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteContaineranalysisV1beta1Result.fromMap(result);
}

pulumi.Output<GetNoteContaineranalysisV1beta1Result> getNoteContaineranalysisV1beta1Output(
  GetNoteContaineranalysisV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNote',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteContaineranalysisV1beta1Result.fromMap);
}

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1beta1_get_note_iam_policy_containeranalysis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNoteIamPolicyContaineranalysisV1beta1Result> getNoteIamPolicyContaineranalysisV1beta1(
  GetNoteIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyContaineranalysisV1beta1Result.fromMap(result);
}

pulumi.Output<GetNoteIamPolicyContaineranalysisV1beta1Result> getNoteIamPolicyContaineranalysisV1beta1Output(
  GetNoteIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNoteIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNoteIamPolicyContaineranalysisV1beta1Result.fromMap);
}

/// Gets the specified occurrence.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1beta1_get_occurrence_containeranalysis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceContaineranalysisV1beta1Result> getOccurrenceContaineranalysisV1beta1(
  GetOccurrenceContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceContaineranalysisV1beta1Result.fromMap(result);
}

pulumi.Output<GetOccurrenceContaineranalysisV1beta1Result> getOccurrenceContaineranalysisV1beta1Output(
  GetOccurrenceContaineranalysisV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrence',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceContaineranalysisV1beta1Result.fromMap);
}

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
/// [args] Arguments passed to this invoke. {@macro pulumi_containeranalysis_v1beta1_get_occurrence_iam_policy_containeranalysis_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOccurrenceIamPolicyContaineranalysisV1beta1Result> getOccurrenceIamPolicyContaineranalysisV1beta1(
  GetOccurrenceIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrenceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyContaineranalysisV1beta1Result.fromMap(result);
}

pulumi.Output<GetOccurrenceIamPolicyContaineranalysisV1beta1Result> getOccurrenceIamPolicyContaineranalysisV1beta1Output(
  GetOccurrenceIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrenceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOccurrenceIamPolicyContaineranalysisV1beta1Result.fromMap);
}
