// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_recipe_update_step_archive_extraction.dart';
import 'guest_policies_recipe_update_step_dpkg_installation.dart';
import 'guest_policies_recipe_update_step_file_copy.dart';
import 'guest_policies_recipe_update_step_file_exec.dart';
import 'guest_policies_recipe_update_step_msi_installation.dart';
import 'guest_policies_recipe_update_step_rpm_installation.dart';
import 'guest_policies_recipe_update_step_script_run.dart';

class GuestPoliciesRecipeUpdateStep {
  /// Extracts an archive into the specified directory.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepArchiveExtraction?>? archiveExtraction;
  /// Installs a deb file via dpkg.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepDpkgInstallation?>? dpkgInstallation;
  /// Copies a file onto the instance.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepFileCopy?>? fileCopy;
  /// Executes an artifact or local file.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepFileExec?>? fileExec;
  /// Installs an MSI file.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepMsiInstallation?>? msiInstallation;
  /// Installs an rpm file via the rpm utility.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepRpmInstallation?>? rpmInstallation;
  /// Runs commands in a shell.
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesRecipeUpdateStepScriptRun?>? scriptRun;

  /// Creates a new [GuestPoliciesRecipeUpdateStep].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  const GuestPoliciesRecipeUpdateStep({
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
      'archiveExtraction': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepArchiveExtraction, Map<String, dynamic>>(archiveExtraction, (value) => value.toMap()),
      'dpkgInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepDpkgInstallation, Map<String, dynamic>>(dpkgInstallation, (value) => value.toMap()),
      'fileCopy': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepFileCopy, Map<String, dynamic>>(fileCopy, (value) => value.toMap()),
      'fileExec': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepFileExec, Map<String, dynamic>>(fileExec, (value) => value.toMap()),
      'msiInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepMsiInstallation, Map<String, dynamic>>(msiInstallation, (value) => value.toMap()),
      'rpmInstallation': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepRpmInstallation, Map<String, dynamic>>(rpmInstallation, (value) => value.toMap()),
      'scriptRun': ?pulumi.Input.mapOptionalInputValue<GuestPoliciesRecipeUpdateStepScriptRun, Map<String, dynamic>>(scriptRun, (value) => value.toMap()),
    };
  }

  factory GuestPoliciesRecipeUpdateStep.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStep(
      archiveExtraction: (() { final guardedValue = map['archiveExtraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepArchiveExtraction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dpkgInstallation: (() { final guardedValue = map['dpkgInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepDpkgInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileCopy: (() { final guardedValue = map['fileCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepFileCopy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileExec: (() { final guardedValue = map['fileExec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepFileExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      msiInstallation: (() { final guardedValue = map['msiInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepMsiInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rpmInstallation: (() { final guardedValue = map['rpmInstallation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepRpmInstallation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptRun: (() { final guardedValue = map['scriptRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuestPoliciesRecipeUpdateStepScriptRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
