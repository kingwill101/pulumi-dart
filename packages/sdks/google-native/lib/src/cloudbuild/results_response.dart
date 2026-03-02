// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'built_image_response.dart';
import 'time_span_response.dart';
import 'uploaded_maven_artifact_response.dart';
import 'uploaded_npm_package_response.dart';
import 'uploaded_python_package_response.dart';

/// Artifacts created by the build pipeline.
class ResultsResponse {
  /// Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  final pulumi.Input<String> artifactManifest;
  /// Time to push all non-container artifacts to Cloud Storage.
  final pulumi.Input<TimeSpanResponse> artifactTiming;
  /// List of build step digests, in the order corresponding to build step indices.
  final pulumi.Input<List<String>> buildStepImages;
  /// List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 50KB of data is stored.
  final pulumi.Input<List<String>> buildStepOutputs;
  /// Container images that were built as a part of the build.
  final pulumi.Input<List<BuiltImageResponse>> images;
  /// Maven artifacts uploaded to Artifact Registry at the end of the build.
  final pulumi.Input<List<UploadedMavenArtifactResponse>> mavenArtifacts;
  /// Npm packages uploaded to Artifact Registry at the end of the build.
  final pulumi.Input<List<UploadedNpmPackageResponse>> npmPackages;
  /// Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  final pulumi.Input<String> numArtifacts;
  /// Python artifacts uploaded to Artifact Registry at the end of the build.
  final pulumi.Input<List<UploadedPythonPackageResponse>> pythonPackages;

  /// Creates a new [ResultsResponse].
  /// [artifactManifest] Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  /// [artifactTiming] Time to push all non-container artifacts to Cloud Storage.
  /// [buildStepImages] List of build step digests, in the order corresponding to build step indices.
  /// [buildStepOutputs] List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 50KB of data is stored.
  /// [images] Container images that were built as a part of the build.
  /// [mavenArtifacts] Maven artifacts uploaded to Artifact Registry at the end of the build.
  /// [npmPackages] Npm packages uploaded to Artifact Registry at the end of the build.
  /// [numArtifacts] Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  /// [pythonPackages] Python artifacts uploaded to Artifact Registry at the end of the build.
  ResultsResponse({
    required this.artifactManifest,
    required this.artifactTiming,
    required this.buildStepImages,
    required this.buildStepOutputs,
    required this.images,
    required this.mavenArtifacts,
    required this.npmPackages,
    required this.numArtifacts,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactManifest': artifactManifest,
      'artifactTiming': pulumi.Input.mapInputValue<TimeSpanResponse, Map<String, dynamic>>(artifactTiming, (value) => value.toMap()),
      'buildStepImages': buildStepImages,
      'buildStepOutputs': buildStepOutputs,
      'images': pulumi.Input.mapInputValue<List<BuiltImageResponse>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<BuiltImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mavenArtifacts': pulumi.Input.mapInputValue<List<UploadedMavenArtifactResponse>, List<Map<String, dynamic>>>(mavenArtifacts, (value) => pulumi.Input.encodeList<UploadedMavenArtifactResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'npmPackages': pulumi.Input.mapInputValue<List<UploadedNpmPackageResponse>, List<Map<String, dynamic>>>(npmPackages, (value) => pulumi.Input.encodeList<UploadedNpmPackageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numArtifacts': numArtifacts,
      'pythonPackages': pulumi.Input.mapInputValue<List<UploadedPythonPackageResponse>, List<Map<String, dynamic>>>(pythonPackages, (value) => pulumi.Input.encodeList<UploadedPythonPackageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResultsResponse.fromMap(Map<String, dynamic> map) {
    return ResultsResponse(
      artifactManifest: (map['artifactManifest'] as String).input(),
      artifactTiming: (TimeSpanResponse.fromMap((map['artifactTiming'] as Map).cast<String, dynamic>())).input(),
      buildStepImages: ((map['buildStepImages'] as List).cast<String>()).input(),
      buildStepOutputs: ((map['buildStepOutputs'] as List).cast<String>()).input(),
      images: (pulumi.Input.decodeList<BuiltImageResponse>(map['images'], (value) => BuiltImageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mavenArtifacts: (pulumi.Input.decodeList<UploadedMavenArtifactResponse>(map['mavenArtifacts'], (value) => UploadedMavenArtifactResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      npmPackages: (pulumi.Input.decodeList<UploadedNpmPackageResponse>(map['npmPackages'], (value) => UploadedNpmPackageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numArtifacts: (map['numArtifacts'] as String).input(),
      pythonPackages: (pulumi.Input.decodeList<UploadedPythonPackageResponse>(map['pythonPackages'], (value) => UploadedPythonPackageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

