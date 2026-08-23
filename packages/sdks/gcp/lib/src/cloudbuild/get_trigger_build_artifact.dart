// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_artifact_maven_artifact.dart';
import 'get_trigger_build_artifact_npm_package.dart';
import 'get_trigger_build_artifact_object.dart';
import 'get_trigger_build_artifact_python_package.dart';

class GetTriggerBuildArtifact {
  /// A list of images to be pushed upon the successful completion of all build steps.
  ///
  /// The images will be pushed using the builder service account's credentials.
  ///
  /// The digests of the pushed images will be stored in the Build resource's results field.
  ///
  /// If any of the images fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<String>> images;
  /// A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<GetTriggerBuildArtifactMavenArtifact>> mavenArtifacts;
  /// Npm package to upload to Artifact Registry upon successful completion of all build steps.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<GetTriggerBuildArtifactNpmPackage>> npmPackages;
  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  ///
  /// Files in the workspace matching specified paths globs will be uploaded to the
  /// Cloud Storage location using the builder service account's credentials.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<GetTriggerBuildArtifactObject>> objects;
  /// Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final pulumi.Input<List<GetTriggerBuildArtifactPythonPackage>> pythonPackages;

  /// Creates a new [GetTriggerBuildArtifact].
  /// [images] A list of images to be pushed upon the successful completion of all build steps.
  /// [mavenArtifacts] A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  /// [npmPackages] Npm package to upload to Artifact Registry upon successful completion of all build steps.
  /// [objects] A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  /// [pythonPackages] Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  const GetTriggerBuildArtifact({
    required this.images,
    required this.mavenArtifacts,
    required this.npmPackages,
    required this.objects,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': images,
      'mavenArtifacts': pulumi.Input.mapInputValue<List<GetTriggerBuildArtifactMavenArtifact>, List<Map<String, dynamic>>>(mavenArtifacts, (value) => pulumi.Input.encodeList<GetTriggerBuildArtifactMavenArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'npmPackages': pulumi.Input.mapInputValue<List<GetTriggerBuildArtifactNpmPackage>, List<Map<String, dynamic>>>(npmPackages, (value) => pulumi.Input.encodeList<GetTriggerBuildArtifactNpmPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objects': pulumi.Input.mapInputValue<List<GetTriggerBuildArtifactObject>, List<Map<String, dynamic>>>(objects, (value) => pulumi.Input.encodeList<GetTriggerBuildArtifactObject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pythonPackages': pulumi.Input.mapInputValue<List<GetTriggerBuildArtifactPythonPackage>, List<Map<String, dynamic>>>(pythonPackages, (value) => pulumi.Input.encodeList<GetTriggerBuildArtifactPythonPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTriggerBuildArtifact.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifact(
      images: pulumi.Input.fromValue((map['images'] as List).cast<String>()),
      mavenArtifacts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildArtifactMavenArtifact>(map['mavenArtifacts']!, (value) => GetTriggerBuildArtifactMavenArtifact.fromMap((value as Map).cast<String, dynamic>()))),
      npmPackages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildArtifactNpmPackage>(map['npmPackages']!, (value) => GetTriggerBuildArtifactNpmPackage.fromMap((value as Map).cast<String, dynamic>()))),
      objects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildArtifactObject>(map['objects']!, (value) => GetTriggerBuildArtifactObject.fromMap((value as Map).cast<String, dynamic>()))),
      pythonPackages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerBuildArtifactPythonPackage>(map['pythonPackages']!, (value) => GetTriggerBuildArtifactPythonPackage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
