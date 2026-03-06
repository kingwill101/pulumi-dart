// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_recipe_install_step_archive_extraction.dart';
import 'guest_policies_recipe_install_step_dpkg_installation.dart';
import 'guest_policies_recipe_install_step_file_copy.dart';
import 'guest_policies_recipe_install_step_file_exec.dart';
import 'guest_policies_recipe_install_step_msi_installation.dart';
import 'guest_policies_recipe_install_step_rpm_installation.dart';
import 'guest_policies_recipe_install_step_script_run.dart';

class GuestPoliciesRecipeInstallStep {
  /// Extracts an archive into the specified directory.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepArchiveExtraction>? archiveExtraction;
  /// Installs a deb file via dpkg.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepDpkgInstallation>? dpkgInstallation;
  /// Copies a file onto the instance.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepFileCopy>? fileCopy;
  /// Executes an artifact or local file.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepFileExec>? fileExec;
  /// Installs an MSI file.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepMsiInstallation>? msiInstallation;
  /// Installs an rpm file via the rpm utility.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepRpmInstallation>? rpmInstallation;
  /// Runs commands in a shell.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeInstallStepScriptRun>? scriptRun;

  /// Creates a new [GuestPoliciesRecipeInstallStep].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  const GuestPoliciesRecipeInstallStep({
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
      'archiveExtraction': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepArchiveExtraction, Map<String, dynamic>>(archiveExtraction, (value) => value.toMap()),
      'dpkgInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepDpkgInstallation, Map<String, dynamic>>(dpkgInstallation, (value) => value.toMap()),
      'fileCopy': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepFileCopy, Map<String, dynamic>>(fileCopy, (value) => value.toMap()),
      'fileExec': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepFileExec, Map<String, dynamic>>(fileExec, (value) => value.toMap()),
      'msiInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepMsiInstallation, Map<String, dynamic>>(msiInstallation, (value) => value.toMap()),
      'rpmInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepRpmInstallation, Map<String, dynamic>>(rpmInstallation, (value) => value.toMap()),
      'scriptRun': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeInstallStepScriptRun, Map<String, dynamic>>(scriptRun, (value) => value.toMap()),
    };
  }

  factory GuestPoliciesRecipeInstallStep.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeInstallStep(
      archiveExtraction: (() { final guardedValue = map['archiveExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepArchiveExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dpkgInstallation: (() { final guardedValue = map['dpkgInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepDpkgInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileCopy: (() { final guardedValue = map['fileCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepFileCopy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileExec: (() { final guardedValue = map['fileExec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepFileExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msiInstallation: (() { final guardedValue = map['msiInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepMsiInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpmInstallation: (() { final guardedValue = map['rpmInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepRpmInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptRun: (() { final guardedValue = map['scriptRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeInstallStepScriptRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

