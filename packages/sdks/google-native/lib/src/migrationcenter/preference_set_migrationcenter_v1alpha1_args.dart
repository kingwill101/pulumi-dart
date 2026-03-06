// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences_migrationcenter_v1alpha1.dart';

/// {@template pulumi_migrationcenter_v1alpha1_preference_set_migrationcenter_v1alpha1_args_doc}
/// The set of arguments for PreferenceSet.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1alpha1_preference_set_migrationcenter_v1alpha1_args_doc}
class PreferenceSetMigrationcenterV1alpha1Args {
  /// A description of the preference set.
  final pulumi.Input<String>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? preferenceSetId;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A set of preferences that applies to all virtual machines in the context.
  final pulumi.Input<VirtualMachinePreferencesMigrationcenterV1alpha1>? virtualMachinePreferences;

  /// Creates a new [PreferenceSetMigrationcenterV1alpha1Args].
  /// [description] A description of the preference set.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Optional.
  /// [preferenceSetId] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [virtualMachinePreferences] A set of preferences that applies to all virtual machines in the context.
  const PreferenceSetMigrationcenterV1alpha1Args({
    this.description,
    this.displayName,
    this.location,
    this.preferenceSetId,
    this.project,
    this.requestId,
    this.virtualMachinePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'preferenceSetId': ?preferenceSetId,
      'project': ?project,
      'requestId': ?requestId,
      'virtualMachinePreferences': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesMigrationcenterV1alpha1, Map<String, dynamic>>(virtualMachinePreferences, (value) => value.toMap()),
    };
  }

  factory PreferenceSetMigrationcenterV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return PreferenceSetMigrationcenterV1alpha1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferenceSetId: (() { final guardedValue = map['preferenceSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachinePreferences: (() { final guardedValue = map['virtualMachinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

