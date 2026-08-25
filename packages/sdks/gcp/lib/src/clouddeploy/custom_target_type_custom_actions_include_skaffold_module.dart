// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_custom_actions_include_skaffold_module_git.dart';
import 'custom_target_type_custom_actions_include_skaffold_module_google_cloud_build_repo.dart';
import 'custom_target_type_custom_actions_include_skaffold_module_google_cloud_storage.dart';

class CustomTargetTypeCustomActionsIncludeSkaffoldModule {
  /// The Skaffold Config modules to use from the specified source.
  final pulumi.Input<List<String>?>? configs;
  /// Remote git repository containing the Skaffold Config modules.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit?>? git;
  /// Cloud Build 2nd gen repository containing the Skaffold Config modules.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo?>? googleCloudBuildRepo;
  /// Cloud Storage bucket containing Skaffold Config modules.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage?>? googleCloudStorage;

  /// Creates a new [CustomTargetTypeCustomActionsIncludeSkaffoldModule].
  /// [configs] The Skaffold Config modules to use from the specified source.
  /// [git] Remote git repository containing the Skaffold Config modules.
  /// [googleCloudBuildRepo] Cloud Build 2nd gen repository containing the Skaffold Config modules.
  /// [googleCloudStorage] Cloud Storage bucket containing Skaffold Config modules.
  const CustomTargetTypeCustomActionsIncludeSkaffoldModule({
    this.configs,
    this.git,
    this.googleCloudBuildRepo,
    this.googleCloudStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?configs,
      'git': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit, Map<String, dynamic>>(git, (value) => value.toMap()),
      'googleCloudBuildRepo': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo, Map<String, dynamic>>(googleCloudBuildRepo, (value) => value.toMap()),
      'googleCloudStorage': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage, Map<String, dynamic>>(googleCloudStorage, (value) => value.toMap()),
    };
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModule.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModule(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      git: (() { final guardedValue = map['git']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudBuildRepo: (() { final guardedValue = map['googleCloudBuildRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorage: (() { final guardedValue = map['googleCloudStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
