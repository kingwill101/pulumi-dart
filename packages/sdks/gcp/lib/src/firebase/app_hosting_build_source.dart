// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_source_codebase.dart';
import 'app_hosting_build_source_container.dart';

class AppHostingBuildSource {
  /// A codebase source, representing the state of the codebase
  /// that the build will be created at.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBuildSourceCodebase>? codebase;
  /// The URI of an Artifact Registry
  /// [container
  /// image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
  /// to use as the build source.
  /// Structure is documented below.
  final pulumi.Input<AppHostingBuildSourceContainer>? container;

  /// Creates a new [AppHostingBuildSource].
  /// [codebase] A codebase source, representing the state of the codebase
  /// [container] The URI of an Artifact Registry
  AppHostingBuildSource({
    this.codebase,
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codebase': ?pulumi.Input.mapOptionalInputValue<AppHostingBuildSourceCodebase, Map<String, dynamic>>(codebase, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<AppHostingBuildSourceContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory AppHostingBuildSource.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSource(
      codebase: map['codebase'] == null ? null : (AppHostingBuildSourceCodebase.fromMap((map['codebase']! as Map).cast<String, dynamic>())).input(),
      container: map['container'] == null ? null : (AppHostingBuildSourceContainer.fromMap((map['container']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

