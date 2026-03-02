// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FastTemplate resources.
class FastTemplateState {
  /// MD5 hash of the zip archive file containing FAST template
  final pulumi.Input<String>? md5Hash;
  /// Name of the FAST template set to be created on to BIGIP
  final pulumi.Input<String>? name;
  /// Path to the zip archive file containing FAST template set on Local Disk
  final pulumi.Input<String>? source;

  /// Creates a new [FastTemplateState].
  /// [md5Hash] MD5 hash of the zip archive file containing FAST template
  /// [name] Name of the FAST template set to be created on to BIGIP
  /// [source] Path to the zip archive file containing FAST template set on Local Disk
  FastTemplateState({
    this.md5Hash,
    this.name,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'md5Hash': ?md5Hash,
      'name': ?name,
      'source': ?source,
    };
  }

  factory FastTemplateState.fromMap(Map<String, dynamic> map) {
    return FastTemplateState(
      md5Hash: map['md5Hash'] == null ? null : (map['md5Hash'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

