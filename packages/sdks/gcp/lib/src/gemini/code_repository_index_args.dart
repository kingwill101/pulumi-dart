// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gemini_code_repository_index_code_repository_index_args_doc}
/// The set of arguments for CodeRepositoryIndex.
/// {@endtemplate}
/// {@macro pulumi_gemini_code_repository_index_code_repository_index_args_doc}
class CodeRepositoryIndexArgs {
  /// Required. Id of the Code Repository Index.
  final pulumi.Input<String> codeRepositoryIndexId;
  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  final pulumi.Input<bool>? forceDestroy;
  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? kmsKey;
  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the Code Repository Index, for example `us-central1`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CodeRepositoryIndexArgs].
  /// [codeRepositoryIndexId] Required. Id of the Code Repository Index.
  /// [forceDestroy] If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  /// [kmsKey] Optional. Immutable. Customer-managed encryption key name, in the format
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The location of the Code Repository Index, for example `us-central1`.
  /// [project] The ID of the project in which the resource belongs.
  CodeRepositoryIndexArgs({
    required this.codeRepositoryIndexId,
    this.forceDestroy,
    this.kmsKey,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndexId': codeRepositoryIndexId,
      'forceDestroy': ?forceDestroy,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory CodeRepositoryIndexArgs.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryIndexArgs(
      codeRepositoryIndexId: (map['codeRepositoryIndexId'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

