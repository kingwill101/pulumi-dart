// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_artifacts_maven_artifact.dart';
import 'trigger_build_artifacts_npm_package.dart';
import 'trigger_build_artifacts_objects.dart';
import 'trigger_build_artifacts_python_package.dart';

class TriggerBuildArtifacts {
  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images will be pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<String>?>? images;
  /// A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildArtifactsMavenArtifact>?>? mavenArtifacts;
  /// Npm package to upload to Artifact Registry upon successful completion of all build steps.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildArtifactsNpmPackage>?>? npmPackages;
  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  /// Files in the workspace matching specified paths globs will be uploaded to the
  /// Cloud Storage location using the builder service account's credentials.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final pulumi.Input<TriggerBuildArtifactsObjects?>? objects;
  /// Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final pulumi.Input<List<TriggerBuildArtifactsPythonPackage>?>? pythonPackages;

  /// Creates a new [TriggerBuildArtifacts].
  /// [images] A list of images to be pushed upon the successful completion of all build steps.
  /// [mavenArtifacts] A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  /// [npmPackages] Npm package to upload to Artifact Registry upon successful completion of all build steps.
  /// [objects] A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  /// [pythonPackages] Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  const TriggerBuildArtifacts({
    this.images,
    this.mavenArtifacts,
    this.npmPackages,
    this.objects,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': ?images,
      'mavenArtifacts': ?pulumi.Input.mapOptionalInputValue<List<TriggerBuildArtifactsMavenArtifact>, List<Map<String, dynamic>>>(mavenArtifacts, (value) => pulumi.Input.encodeList<TriggerBuildArtifactsMavenArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'npmPackages': ?pulumi.Input.mapOptionalInputValue<List<TriggerBuildArtifactsNpmPackage>, List<Map<String, dynamic>>>(npmPackages, (value) => pulumi.Input.encodeList<TriggerBuildArtifactsNpmPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objects': ?pulumi.Input.mapOptionalInputValue<TriggerBuildArtifactsObjects, Map<String, dynamic>>(objects, (value) => value.toMap()),
      'pythonPackages': ?pulumi.Input.mapOptionalInputValue<List<TriggerBuildArtifactsPythonPackage>, List<Map<String, dynamic>>>(pythonPackages, (value) => pulumi.Input.encodeList<TriggerBuildArtifactsPythonPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerBuildArtifacts.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifacts(
      images: (() { final guardedValue = map['images']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mavenArtifacts: (() { final guardedValue = map['mavenArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildArtifactsMavenArtifact>(guardedValue, (value) => TriggerBuildArtifactsMavenArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
      npmPackages: (() { final guardedValue = map['npmPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildArtifactsNpmPackage>(guardedValue, (value) => TriggerBuildArtifactsNpmPackage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      objects: (() { final guardedValue = map['objects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerBuildArtifactsObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pythonPackages: (() { final guardedValue = map['pythonPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerBuildArtifactsPythonPackage>(guardedValue, (value) => TriggerBuildArtifactsPythonPackage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
