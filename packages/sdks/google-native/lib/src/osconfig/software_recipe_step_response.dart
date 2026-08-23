// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_step_copy_file_response.dart';
import 'software_recipe_step_exec_file_response.dart';
import 'software_recipe_step_extract_archive_response.dart';
import 'software_recipe_step_install_dpkg_response.dart';
import 'software_recipe_step_install_msi_response.dart';
import 'software_recipe_step_install_rpm_response.dart';
import 'software_recipe_step_run_script_response.dart';

/// An action that can be taken as part of installing or updating a recipe.
class SoftwareRecipeStepResponse {
  /// Extracts an archive into the specified directory.
  final pulumi.Input<SoftwareRecipeStepExtractArchiveResponse> archiveExtraction;
  /// Installs a deb file via dpkg.
  final pulumi.Input<SoftwareRecipeStepInstallDpkgResponse> dpkgInstallation;
  /// Copies a file onto the instance.
  final pulumi.Input<SoftwareRecipeStepCopyFileResponse> fileCopy;
  /// Executes an artifact or local file.
  final pulumi.Input<SoftwareRecipeStepExecFileResponse> fileExec;
  /// Installs an MSI file.
  final pulumi.Input<SoftwareRecipeStepInstallMsiResponse> msiInstallation;
  /// Installs an rpm file via the rpm utility.
  final pulumi.Input<SoftwareRecipeStepInstallRpmResponse> rpmInstallation;
  /// Runs commands in a shell.
  final pulumi.Input<SoftwareRecipeStepRunScriptResponse> scriptRun;

  /// Creates a new [SoftwareRecipeStepResponse].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  const SoftwareRecipeStepResponse({
    required this.archiveExtraction,
    required this.dpkgInstallation,
    required this.fileCopy,
    required this.fileExec,
    required this.msiInstallation,
    required this.rpmInstallation,
    required this.scriptRun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveExtraction': pulumi.Input.mapInputValue<SoftwareRecipeStepExtractArchiveResponse, Map<String, dynamic>>(archiveExtraction, (value) => value.toMap()),
      'dpkgInstallation': pulumi.Input.mapInputValue<SoftwareRecipeStepInstallDpkgResponse, Map<String, dynamic>>(dpkgInstallation, (value) => value.toMap()),
      'fileCopy': pulumi.Input.mapInputValue<SoftwareRecipeStepCopyFileResponse, Map<String, dynamic>>(fileCopy, (value) => value.toMap()),
      'fileExec': pulumi.Input.mapInputValue<SoftwareRecipeStepExecFileResponse, Map<String, dynamic>>(fileExec, (value) => value.toMap()),
      'msiInstallation': pulumi.Input.mapInputValue<SoftwareRecipeStepInstallMsiResponse, Map<String, dynamic>>(msiInstallation, (value) => value.toMap()),
      'rpmInstallation': pulumi.Input.mapInputValue<SoftwareRecipeStepInstallRpmResponse, Map<String, dynamic>>(rpmInstallation, (value) => value.toMap()),
      'scriptRun': pulumi.Input.mapInputValue<SoftwareRecipeStepRunScriptResponse, Map<String, dynamic>>(scriptRun, (value) => value.toMap()),
    };
  }

  factory SoftwareRecipeStepResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepResponse(
      archiveExtraction: pulumi.Input.fromValue(SoftwareRecipeStepExtractArchiveResponse.fromMap((map['archiveExtraction']! as Map).cast<String, dynamic>())),
      dpkgInstallation: pulumi.Input.fromValue(SoftwareRecipeStepInstallDpkgResponse.fromMap((map['dpkgInstallation']! as Map).cast<String, dynamic>())),
      fileCopy: pulumi.Input.fromValue(SoftwareRecipeStepCopyFileResponse.fromMap((map['fileCopy']! as Map).cast<String, dynamic>())),
      fileExec: pulumi.Input.fromValue(SoftwareRecipeStepExecFileResponse.fromMap((map['fileExec']! as Map).cast<String, dynamic>())),
      msiInstallation: pulumi.Input.fromValue(SoftwareRecipeStepInstallMsiResponse.fromMap((map['msiInstallation']! as Map).cast<String, dynamic>())),
      rpmInstallation: pulumi.Input.fromValue(SoftwareRecipeStepInstallRpmResponse.fromMap((map['rpmInstallation']! as Map).cast<String, dynamic>())),
      scriptRun: pulumi.Input.fromValue(SoftwareRecipeStepRunScriptResponse.fromMap((map['scriptRun']! as Map).cast<String, dynamic>())),
    );
  }
}
