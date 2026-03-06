// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_buckets_get_buckets_args_doc}
/// Arguments for getBuckets.
/// {@endtemplate}
/// {@macro pulumi_storage_get_buckets_get_buckets_args_doc}
class GetBucketsArgs {
  /// Filter results to buckets whose names begin with this prefix.
  final pulumi.Input<String>? prefix;
  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetBucketsArgs].
  /// [prefix] Filter results to buckets whose names begin with this prefix.
  /// [project] The ID of the project. If it is not provided, the provider project is used.
  const GetBucketsArgs({
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'project': ?project,
    };
  }

  factory GetBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketsArgs(
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

