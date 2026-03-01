// ignore_for_file: unused_element, unnecessary_cast

import 'custom_target_type_custom_actions_include_skaffold_module_git.dart';
import 'custom_target_type_custom_actions_include_skaffold_module_google_cloud_build_repo.dart';
import 'custom_target_type_custom_actions_include_skaffold_module_google_cloud_storage.dart';

class CustomTargetTypeCustomActionsIncludeSkaffoldModule {
  /// The Skaffold Config modules to use from the specified source.
  final List<String>? configs;
  /// Remote git repository containing the Skaffold Config modules.
  /// Structure is documented below.
  final CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit? git;
  /// Cloud Build 2nd gen repository containing the Skaffold Config modules.
  /// Structure is documented below.
  final CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo? googleCloudBuildRepo;
  /// Cloud Storage bucket containing Skaffold Config modules.
  /// Structure is documented below.
  final CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage? googleCloudStorage;

  /// Creates a new [CustomTargetTypeCustomActionsIncludeSkaffoldModule].
  /// [configs] The Skaffold Config modules to use from the specified source.
  /// [git] Remote git repository containing the Skaffold Config modules.
  /// [googleCloudBuildRepo] Cloud Build 2nd gen repository containing the Skaffold Config modules.
  /// [googleCloudStorage] Cloud Storage bucket containing Skaffold Config modules.
  CustomTargetTypeCustomActionsIncludeSkaffoldModule({
    this.configs,
    this.git,
    this.googleCloudBuildRepo,
    this.googleCloudStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?configs,
      'git': ?git == null ? null : git!.toMap(),
      'googleCloudBuildRepo': ?googleCloudBuildRepo == null ? null : googleCloudBuildRepo!.toMap(),
      'googleCloudStorage': ?googleCloudStorage == null ? null : googleCloudStorage!.toMap(),
    };
  }

  factory CustomTargetTypeCustomActionsIncludeSkaffoldModule.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeCustomActionsIncludeSkaffoldModule(
      configs: map['configs'] == null ? null : (map['configs'] as List).cast<String>(),
      git: map['git'] == null ? null : CustomTargetTypeCustomActionsIncludeSkaffoldModuleGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      googleCloudBuildRepo: map['googleCloudBuildRepo'] == null ? null : CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepo.fromMap((map['googleCloudBuildRepo'] as Map).cast<String, dynamic>()),
      googleCloudStorage: map['googleCloudStorage'] == null ? null : CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorage.fromMap((map['googleCloudStorage'] as Map).cast<String, dynamic>()),
    );
  }
}

