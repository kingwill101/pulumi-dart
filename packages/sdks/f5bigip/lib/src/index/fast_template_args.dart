// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_fast_template_fast_template_args_doc}
/// The set of arguments for FastTemplate.
/// {@endtemplate}
/// {@macro pulumi_index_fast_template_fast_template_args_doc}
class FastTemplateArgs {
  /// MD5 hash of the zip archive file containing FAST template
  final pulumi.Input<String> md5Hash;
  /// Name of the FAST template set to be created on to BIGIP
  final pulumi.Input<String>? name;
  /// Path to the zip archive file containing FAST template set on Local Disk
  final pulumi.Input<String> source;

  /// Creates a new [FastTemplateArgs].
  /// [md5Hash] MD5 hash of the zip archive file containing FAST template
  /// [name] Name of the FAST template set to be created on to BIGIP
  /// [source] Path to the zip archive file containing FAST template set on Local Disk
  const FastTemplateArgs({
    required this.md5Hash,
    this.name,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'md5Hash': md5Hash,
      'name': ?name,
      'source': source,
    };
  }

  factory FastTemplateArgs.fromMap(Map<String, dynamic> map) {
    return FastTemplateArgs(
      md5Hash: pulumi.Input.fromValue(map['md5Hash'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

