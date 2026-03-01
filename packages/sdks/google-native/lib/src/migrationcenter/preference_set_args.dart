// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences.dart';

/// {@template pulumi_migrationcenter_v1_preference_set_args_doc}
/// The set of arguments for PreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_preference_set_args_doc}
class PreferenceSetArgs {
  /// A description of the preference set.
  final pulumi.Input<String>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A set of preferences that applies to all virtual machines in the context.
  final pulumi.Input<VirtualMachinePreferences>? virtualMachinePreferences;

  /// Creates a new [PreferenceSetArgs].
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Optional.
  /// [preferenceSetId] Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  PreferenceSetArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> preferenceSetId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<VirtualMachinePreferences>? virtualMachinePreferences,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      preferenceSetId = pulumi.Input.asInput<String>(preferenceSetId),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      virtualMachinePreferences = pulumi.Input.asOptionalInput<VirtualMachinePreferences>(virtualMachinePreferences);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'preferenceSetId': preferenceSetId,
      'project': ?project,
      'requestId': ?requestId,
      'virtualMachinePreferences': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferences, Map<String, dynamic>>(virtualMachinePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return PreferenceSetArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      preferenceSetId: pulumi.Output.create<String>(map['preferenceSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      virtualMachinePreferences: map['virtualMachinePreferences'] == null ? null : pulumi.Output.create<VirtualMachinePreferences>(VirtualMachinePreferences.fromMap((map['virtualMachinePreferences'] as Map).cast<String, dynamic>())),
    );
  }
}

