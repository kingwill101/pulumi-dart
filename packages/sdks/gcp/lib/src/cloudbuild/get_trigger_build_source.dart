// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_source_repo_source.dart';
import 'get_trigger_build_source_storage_source.dart';

class GetTriggerBuildSource {
  /// Location of the source in a Google Cloud Source Repository.
  final List<GetTriggerBuildSourceRepoSource> repoSources;
  /// Location of the source in an archive file in Google Cloud Storage.
  final List<GetTriggerBuildSourceStorageSource> storageSources;

  /// Creates a new [GetTriggerBuildSource].
  /// [repoSources] Location of the source in a Google Cloud Source Repository.
  /// [storageSources] Location of the source in an archive file in Google Cloud Storage.
  GetTriggerBuildSource({
    required this.repoSources,
    required this.storageSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repoSources': pulumi.Input.encodeList<GetTriggerBuildSourceRepoSource, Map<String, dynamic>>(repoSources, (value) => value.toMap()),
      'storageSources': pulumi.Input.encodeList<GetTriggerBuildSourceStorageSource, Map<String, dynamic>>(storageSources, (value) => value.toMap()),
    };
  }

  factory GetTriggerBuildSource.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSource(
      repoSources: pulumi.Input.decodeList<GetTriggerBuildSourceRepoSource>(map['repoSources'], (value) => GetTriggerBuildSourceRepoSource.fromMap((value as Map).cast<String, dynamic>())),
      storageSources: pulumi.Input.decodeList<GetTriggerBuildSourceStorageSource>(map['storageSources'], (value) => GetTriggerBuildSourceStorageSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

