// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_step_copy_file.dart';
import 'software_recipe_step_exec_file.dart';
import 'software_recipe_step_extract_archive.dart';
import 'software_recipe_step_install_dpkg.dart';
import 'software_recipe_step_install_msi.dart';
import 'software_recipe_step_install_rpm.dart';
import 'software_recipe_step_run_script.dart';

/// An action that can be taken as part of installing or updating a recipe.
class SoftwareRecipeStep {
  /// Extracts an archive into the specified directory.
  final pulumi.Input<SoftwareRecipeStepExtractArchive>? archiveExtraction;
  /// Installs a deb file via dpkg.
  final pulumi.Input<SoftwareRecipeStepInstallDpkg>? dpkgInstallation;
  /// Copies a file onto the instance.
  final pulumi.Input<SoftwareRecipeStepCopyFile>? fileCopy;
  /// Executes an artifact or local file.
  final pulumi.Input<SoftwareRecipeStepExecFile>? fileExec;
  /// Installs an MSI file.
  final pulumi.Input<SoftwareRecipeStepInstallMsi>? msiInstallation;
  /// Installs an rpm file via the rpm utility.
  final pulumi.Input<SoftwareRecipeStepInstallRpm>? rpmInstallation;
  /// Runs commands in a shell.
  final pulumi.Input<SoftwareRecipeStepRunScript>? scriptRun;

  /// Creates a new [SoftwareRecipeStep].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  SoftwareRecipeStep({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveExtraction': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepExtractArchive, Map<String, dynamic>>(archiveExtraction, (value) => value.toMap()),
      'dpkgInstallation': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepInstallDpkg, Map<String, dynamic>>(dpkgInstallation, (value) => value.toMap()),
      'fileCopy': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepCopyFile, Map<String, dynamic>>(fileCopy, (value) => value.toMap()),
      'fileExec': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepExecFile, Map<String, dynamic>>(fileExec, (value) => value.toMap()),
      'msiInstallation': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepInstallMsi, Map<String, dynamic>>(msiInstallation, (value) => value.toMap()),
      'rpmInstallation': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepInstallRpm, Map<String, dynamic>>(rpmInstallation, (value) => value.toMap()),
      'scriptRun': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepRunScript, Map<String, dynamic>>(scriptRun, (value) => value.toMap()),
    };
  }

  factory SoftwareRecipeStep.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStep(
      archiveExtraction: map['archiveExtraction'] == null ? null : (SoftwareRecipeStepExtractArchive.fromMap((map['archiveExtraction'] as Map).cast<String, dynamic>())).input(),
      dpkgInstallation: map['dpkgInstallation'] == null ? null : (SoftwareRecipeStepInstallDpkg.fromMap((map['dpkgInstallation'] as Map).cast<String, dynamic>())).input(),
      fileCopy: map['fileCopy'] == null ? null : (SoftwareRecipeStepCopyFile.fromMap((map['fileCopy'] as Map).cast<String, dynamic>())).input(),
      fileExec: map['fileExec'] == null ? null : (SoftwareRecipeStepExecFile.fromMap((map['fileExec'] as Map).cast<String, dynamic>())).input(),
      msiInstallation: map['msiInstallation'] == null ? null : (SoftwareRecipeStepInstallMsi.fromMap((map['msiInstallation'] as Map).cast<String, dynamic>())).input(),
      rpmInstallation: map['rpmInstallation'] == null ? null : (SoftwareRecipeStepInstallRpm.fromMap((map['rpmInstallation'] as Map).cast<String, dynamic>())).input(),
      scriptRun: map['scriptRun'] == null ? null : (SoftwareRecipeStepRunScript.fromMap((map['scriptRun'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

