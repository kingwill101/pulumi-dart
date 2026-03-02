// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_command_error_blob_managed_identity.dart';
import 'run_command_instance_view.dart';
import 'run_command_output_blob_managed_identity.dart';
import 'run_command_parameter.dart';
import 'run_command_protected_parameter.dart';
import 'run_command_source.dart';

/// Input properties used for looking up and filtering RunCommand resources.
class RunCommandState {
  /// An `error_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to errorBlobUri storage blob.
  final pulumi.Input<RunCommandErrorBlobManagedIdentity>? errorBlobManagedIdentity;
  /// Specifies the Azure storage blob where script error stream will be uploaded.
  final pulumi.Input<String>? errorBlobUri;
  final pulumi.Input<List<RunCommandInstanceView>>? instanceViews;
  /// The Azure Region where the Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Virtual Machine Run Command. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String>? name;
  /// An `output_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to outputBlobUri storage blob.
  final pulumi.Input<RunCommandOutputBlobManagedIdentity>? outputBlobManagedIdentity;
  /// Specifies the Azure storage blob where script output stream will be uploaded. It can be basic blob URI with SAS token.
  final pulumi.Input<String>? outputBlobUri;
  /// A list of `parameter` blocks as defined below. The parameters used by the script.
  final pulumi.Input<List<RunCommandParameter>>? parameters;
  /// A list of `protected_parameter` blocks as defined below. The protected parameters used by the script.
  final pulumi.Input<List<RunCommandProtectedParameter>>? protectedParameters;
  /// Specifies the user account password on the VM when executing the Virtual Machine Run Command.
  final pulumi.Input<String>? runAsPassword;
  /// Specifies the user account on the VM when executing the Virtual Machine Run Command.
  final pulumi.Input<String>? runAsUser;
  /// A `source` block as defined below. The source of the run command script.
  final pulumi.Input<RunCommandSource>? source;
  /// A mapping of tags which should be assigned to the Virtual Machine Run Command.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Virtual Machine ID within which this Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [RunCommandState].
  /// [errorBlobManagedIdentity] An `error_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to errorBlobUri storage blob.
  /// [errorBlobUri] Specifies the Azure storage blob where script error stream will be uploaded.
  /// [instanceViews] Optional.
  /// [location] The Azure Region where the Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  /// [name] Specifies the name of this Virtual Machine Run Command. Changing this forces a new Virtual Machine Run Command to be created.
  /// [outputBlobManagedIdentity] An `output_blob_managed_identity` block as defined below. User-assigned managed Identity that has access to outputBlobUri storage blob.
  /// [outputBlobUri] Specifies the Azure storage blob where script output stream will be uploaded. It can be basic blob URI with SAS token.
  /// [parameters] A list of `parameter` blocks as defined below. The parameters used by the script.
  /// [protectedParameters] A list of `protected_parameter` blocks as defined below. The protected parameters used by the script.
  /// [runAsPassword] Specifies the user account password on the VM when executing the Virtual Machine Run Command.
  /// [runAsUser] Specifies the user account on the VM when executing the Virtual Machine Run Command.
  /// [source] A `source` block as defined below. The source of the run command script.
  /// [tags] A mapping of tags which should be assigned to the Virtual Machine Run Command.
  /// [virtualMachineId] Specifies the Virtual Machine ID within which this Virtual Machine Run Command should exist. Changing this forces a new Virtual Machine Run Command to be created.
  RunCommandState({
    this.errorBlobManagedIdentity,
    this.errorBlobUri,
    this.instanceViews,
    this.location,
    this.name,
    this.outputBlobManagedIdentity,
    this.outputBlobUri,
    this.parameters,
    this.protectedParameters,
    this.runAsPassword,
    this.runAsUser,
    this.source,
    this.tags,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandErrorBlobManagedIdentity, Map<String, dynamic>>(errorBlobManagedIdentity, (value) => value.toMap()),
      'errorBlobUri': ?errorBlobUri,
      'instanceViews': ?pulumi.Input.mapOptionalInputValue<List<RunCommandInstanceView>, List<Map<String, dynamic>>>(instanceViews, (value) => pulumi.Input.encodeList<RunCommandInstanceView, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'outputBlobManagedIdentity': ?pulumi.Input.mapOptionalInputValue<RunCommandOutputBlobManagedIdentity, Map<String, dynamic>>(outputBlobManagedIdentity, (value) => value.toMap()),
      'outputBlobUri': ?outputBlobUri,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RunCommandParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protectedParameters': ?pulumi.Input.mapOptionalInputValue<List<RunCommandProtectedParameter>, List<Map<String, dynamic>>>(protectedParameters, (value) => pulumi.Input.encodeList<RunCommandProtectedParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runAsPassword': ?runAsPassword,
      'runAsUser': ?runAsUser,
      'source': ?pulumi.Input.mapOptionalInputValue<RunCommandSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory RunCommandState.fromMap(Map<String, dynamic> map) {
    return RunCommandState(
      errorBlobManagedIdentity: map['errorBlobManagedIdentity'] == null ? null : (RunCommandErrorBlobManagedIdentity.fromMap((map['errorBlobManagedIdentity']! as Map).cast<String, dynamic>())).input(),
      errorBlobUri: map['errorBlobUri'] == null ? null : (map['errorBlobUri']! as String).input(),
      instanceViews: map['instanceViews'] == null ? null : (pulumi.Input.decodeList<RunCommandInstanceView>(map['instanceViews']!, (value) => RunCommandInstanceView.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outputBlobManagedIdentity: map['outputBlobManagedIdentity'] == null ? null : (RunCommandOutputBlobManagedIdentity.fromMap((map['outputBlobManagedIdentity']! as Map).cast<String, dynamic>())).input(),
      outputBlobUri: map['outputBlobUri'] == null ? null : (map['outputBlobUri']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<RunCommandParameter>(map['parameters']!, (value) => RunCommandParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protectedParameters: map['protectedParameters'] == null ? null : (pulumi.Input.decodeList<RunCommandProtectedParameter>(map['protectedParameters']!, (value) => RunCommandProtectedParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      runAsPassword: map['runAsPassword'] == null ? null : (map['runAsPassword']! as String).input(),
      runAsUser: map['runAsUser'] == null ? null : (map['runAsUser']! as String).input(),
      source: map['source'] == null ? null : (RunCommandSource.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId']! as String).input(),
    );
  }
}

