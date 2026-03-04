// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_tag_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_index_tag_tag_args_doc}
class TagArgs {
  /// The name of the tag
  final pulumi.Input<String>? name;

  /// Creates a new [TagArgs].
  /// [name] The name of the tag
  TagArgs({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
